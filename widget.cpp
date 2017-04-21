#include "widget.h"
#include "ui_widget.h"

#include <QTimer>
#include <QSettings>

Widget::Widget(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::Widget)  // ,tcpSocket(this),//uploadThread(&dataDB, &tcpSocket, &Addrs)
{
    ui->setupUi(this);

    setWindowTitle(tr("数据采集上传程序"));

    QIcon icon(":/images/icon.png");
    setWindowIcon(icon);
    initializeIcon(icon);

    //connect(ui->pushButton,SIGNAL(clicked()),this,SLOT(setEnter()));
    connect(ui->pushButton_2,SIGNAL(clicked()),this,SLOT(setStart()));
    connect(ui->pushButton_3,SIGNAL(clicked()),this,SLOT(connectIP()));
    connect(ui->pushButton_4,SIGNAL(clicked()),this,SLOT(disconnectIP()));

    ui->pushButton_4->setEnabled(false);

//        QString str;
//        for(int i = 1;i<=100;i++)
//        {
//            str += "Row"+QString("%1").arg(i)+":"+QString("%1").arg(i+65537)+"/";
//        }
//            QSettings setting(qApp->applicationDirPath() + "\\Option.ini", QSettings::IniFormat); // 当前目录的INI文件
//                setting.beginGroup("OPTION");
//                setting.setValue("ADDR", str);
    qDebug() << qApp->applicationDirPath();
    QSettings settings(qApp->applicationDirPath() + "\\Option.ini", QSettings::IniFormat);   // 当前目录的INI文件
    AddrStr = settings.value("OPTION/ADDR").toString();
    //qDebug()<<AddrStr;
    handingAddr(AddrStr);

    QString keyWordStr = settings.value("OPTION/KEYWORD").toString();
    handingKeyword(keyWordStr);

    path = settings.value("OPTION/PATH").toString();

    filterWord = settings.value("OPTION/FILTERWORD").toString();

    lRow = settings.value("OPTION/ROW").toString();

    lRank = settings.value("OPTION/RANK").toString();

    setTime = settings.value("OPTION/TIME").toString();

    IP = settings.value("OPTION/IP").toString();

    user_name = settings.value("OPTION/USER_NAME").toString();

    file_type = settings.value("OPTION/FILE_TYPE").toString();

    FT = NULL;
    uploadThread = NULL;
    tcpSocket =  new QTcpSocket(this);
    flag = false;


    ui->lineEdit_5->setText(IP);

}

Widget::~Widget()
{
    delete ui;
    if(FT != NULL)
    {
        FT->isRun = false;
        FT->wait();
        delete FT;
    }
    if(uploadThread != NULL)
    {
        uploadThread->isRun = false;
        uploadThread->wait();
        delete uploadThread;
    }
    if(tcpSocket != NULL)
    {
        delete tcpSocket;
    }
}


void Widget::connectIP()
{
    ui->pushButton_3->setEnabled(false);
    ui->pushButton_4->setEnabled(true);
    //QString ip = ui->lineEdit_5->text();
    ui->lineEdit_5->setEnabled(false);

    if(IP == NULL)
    {
        QMessageBox::warning(NULL,tr("警告"),tr("请先设置ip!"),QMessageBox::No);
        return;
    }

    connect(tcpSocket,SIGNAL(connected()),this,SLOT(connected()));
    connect(tcpSocket,SIGNAL(disconnected()),this,SLOT(disconnected()));
    connect(tcpSocket,SIGNAL(error(QAbstractSocket::SocketError)),this,SLOT(onError(QAbstractSocket::SocketError)));
    connect(&timer_connect,SIGNAL(timeout()),this,SLOT(onProgress()), Qt::QueuedConnection);


    tcpSocket->connectToHost(IP,61000);

    if(!tcpSocket->waitForConnected(5000))
    {
        QMessageBox::warning(NULL,tr("警告"),tr("没有连上这个ip!")  + tcpSocket->errorString(),QMessageBox::No);
        return;
    }

    uploadThread = new UpLoadThread(&dataDB, tcpSocket, &Addrs, user_name);

    timer_connect.start(1800);

    uploadThread->start();        //上传线程

    //定时检查连接是否断了
    connect(&qtime, SIGNAL(timeout()),uploadThread,SLOT(keepAlive()));
    qtime.start(1000*30);
}

void Widget::onProgress()
{
    if(flag == false)
    {
        if(uploadThread != NULL)
        {
            uploadThread->isRun = false;
            uploadThread->wait();
            delete uploadThread;
        }
        qDebug()<<tcpSocket;
        tcpSocket->close();
        tcpSocket->connectToHost(IP,61000);
        uploadThread = new UpLoadThread(&dataDB, tcpSocket, &Addrs, user_name);
        uploadThread->start();        //上传线程
    }
}

void Widget::connected()
{
    flag = true;
}

void Widget::disconnected()
{
    flag = false;
}

void Widget::onError(QAbstractSocket::SocketError)
{

}


void Widget::disconnectIP()  //并不能停止线程
{
    qtime.stop();
    timer_connect.stop();
    ui->pushButton_3->setEnabled(true);
    ui->pushButton_4->setEnabled(false);
    //tcpSocket.close();

//    connect(this, SIGNAL(StopThread()),uploadThread,SLOT(Stop()));
//    emit StopThread();
    if(uploadThread != NULL)
    {
        if(uploadThread->isRunning())
        {
            uploadThread->isRun = false;
            uploadThread->wait();
        }
        delete uploadThread;
        uploadThread = NULL;
    }


    tcpSocket->close();

}

void Widget::setStart()
{
    setEnter();

    if(setTime.isEmpty())
    {
        QMessageBox::warning(NULL,tr("警告"),tr("请先设置定时时间!"));
        return;
    }

    if(!path.isEmpty())
    {
        if(FT != NULL)
        {
            delete FT;
        }
        FT = new fileTable(lRow,lRank,filterWord,keyWord,&dataDB, path,setTime, file_type);
        FT->start();
    }
    else
    {
        QMessageBox::warning(NULL,tr("警告"),tr("请先设置文件路径！"));
        return;
    }


    ui->lineEdit->setEnabled(false);
    ui->lineEdit_2->setEnabled(false);
    ui->lineEdit_3->setEnabled(false);
    ui->lineEdit_4->setEnabled(false);
    ui->textEdit->setEnabled(false);
    ui->textEdit_2->setEnabled(false);
    ui->pushButton->setEnabled(false);
    ui->pushButton_2->setEnabled(false);

}

void Widget::setEnter()
{

    if(path.isEmpty())
    {
        QMessageBox::warning(NULL,tr("警告"),tr("请先设置文件路径！"));
        path.clear();
        keyWord.clear();
        filterWord.clear();
        lRank.clear();
        lRow.clear();
        return;
    }

    if(filterWord.isEmpty())
    {
        QMessageBox::warning(NULL,tr("警告"),tr("请先设置过滤字段!"));
        //qDebug()<<"请输过滤字段!";
        path.clear();
        keyWord.clear();
        filterWord.clear();
        lRank.clear();
        lRow.clear();
        return;
    }

    if(keyWord.isEmpty())
    {

        QMessageBox::warning(NULL,tr("警告"),tr("请先设置关键字!"));
        path.clear();
        keyWord.clear();
        filterWord.clear();
        lRank.clear();
        lRow.clear();
        return;

    }


    if(lRow.isEmpty())
    {
        QMessageBox::warning(NULL,tr("警告"),tr("请先设置行标识!"));
        path.clear();
        keyWord.clear();
        filterWord.clear();
        lRank.clear();
        lRow.clear();
        return;
    }

    if(lRank.isEmpty())
    {
        QMessageBox::warning(NULL,tr("警告"),tr("请先设置列标识!"));
        path.clear();
        keyWord.clear();
        filterWord.clear();
        lRank.clear();
        lRow.clear();
        return;
    }


    QString tableName;
    QString tableRow = "ID integer primary key ";

    tableName = "dataTable";

    for(int i = 1; i < 2; i++)
    {
        tableRow += ", Key" + QString("%1").arg(i) +" varchar(20)";
    }

    for(int i = 1;i <= 100; i++)
    {
        tableRow += ", Row" + QString("%1").arg(i) +" varchar(20)";
    }

    dataDB.createTable(tableName,tableRow);

    dataDB.createTable("fileTable","ID integer primary key,FileName varchar(50), Path varchar(50), lastModifyTime varchar(50),Read varchar(5), ReadLine int");
}

void Widget::handingKeyword(QString lKeyword)
{
    QStringList sl = lKeyword.split("/");

    int j = sl.size()-1;
    for(int i = 0;i<j;i++)
    {
        QStringList sl0 = sl.at(i).split(":");
        keyWord.insert(sl0.at(0).toLocal8Bit(),sl0.at(1).toLocal8Bit());
    }
}

void Widget::handingAddr(QString Addr)
{
    QStringList sl = Addr.split("/");

    int j = sl.size()-1;
    for(int i = 0;i<j;i++)
    {
        QStringList sl0 = sl.at(i).split(":");
        std::pair<QString, QString> tmp(sl0.at(0).toLocal8Bit(),sl0.at(1).toLocal8Bit());
        Addrs.push_back(tmp);
    }
}

void Widget::initializeIcon(QIcon icon)
{
    systemTray = new QSystemTrayIcon(this);
    systemTray->setIcon(icon);
    systemTray->setToolTip(tr("数据采集上传程序"));

    minimumAct = new QAction(tr("最小化窗口"), this);
    //Note the differences between hide() and showMinimized().
    connect(minimumAct, SIGNAL(triggered()), this, SLOT(hide()));
    maximumAct = new QAction(tr("最大化窗口"), this);
    connect(maximumAct, SIGNAL(triggered()), this, SLOT(showMaximized()));
    restoreAct = new QAction(tr("恢复窗口"), this);
    connect(restoreAct, SIGNAL(triggered()), this, SLOT(showNormal()));
    quitAct = new QAction(tr("退出程序"), this);
    connect(quitAct, SIGNAL(triggered()), qApp, SLOT(quit()));
    pContextMenu = new QMenu(this);
    pContextMenu->addAction(minimumAct);
    pContextMenu->addAction(maximumAct);
    pContextMenu->addAction(restoreAct);
    pContextMenu->addSeparator();
    pContextMenu->addAction(quitAct);
    systemTray->setContextMenu(pContextMenu);

    connect(systemTray,SIGNAL(activated(QSystemTrayIcon::ActivationReason)),this,SLOT(mouseClick(QSystemTrayIcon::ActivationReason)));

    systemTray->show();
}

void  Widget::hideEvent(QHideEvent* event)
{
    if(systemTray->isVisible())
    {
        hide();
        systemTray->showMessage("提示", "程序正在后台运行!");
        event->ignore();
    }
}

void Widget::mouseClick(QSystemTrayIcon::ActivationReason reason)
{
    if(QSystemTrayIcon::Trigger == reason)
    {
         showNormal();
         ::SetForegroundWindow((HWND)this->winId());
    }

}

