#ifndef WIDGET_H
#define WIDGET_H


#include <QWidget>
#include <QMap>
#include <vector>
#include <utility>
#include <QtNetwork/QTcpSocket>
#include <QMessageBox>
#include <QTimer>
#include "datamanage.h"
#include "filetable.h"
#include "uploadthread.h"
#include "filetable.h"
#include <WINDOWS.H>

#include <QSystemTrayIcon>
#include <QMenu>
#include <QHideEvent>


namespace Ui {
class Widget;
}

class Widget : public QWidget
{
    Q_OBJECT

public:
    explicit Widget(QWidget *parent = 0);
    ~Widget();

private:
    Ui::Widget *ui;

public:
    QString setTime;
    QString path;
    QString filterWord;
    QString lRank;
    QString lRow;
    QMap<QString,QString> keyWord ;
//    QStringList list;
    QString IP;
    QString user_name;

    dataManage dataDB;
    QTimer qtime;
    QTimer qtime2;
    QTimer timer_connect;
    bool flag;
    QString AddrStr;
    std::vector<std::pair<QString, QString>> Addrs;

private:

    //unsigned short work_tags;
    QTcpSocket *tcpSocket;
    UpLoadThread *uploadThread;
    fileTable *FT;

    QSystemTrayIcon* systemTray;
    QAction* minimumAct;
    QAction* maximumAct;
    QAction* restoreAct;
    QAction* quitAct;
    QMenu* pContextMenu;
    QMouseEvent* clickAct;

public:
    void handingKeyword(QString);
    void handingAddr(QString);
    void setEnter();
    void hideEvent(QHideEvent *event);
    void  initializeIcon(QIcon);

public slots:
    void setStart();
    void connectIP();
    void disconnectIP();
    void onProgress();
    void connected();
    void disconnected();
    void onError(QAbstractSocket::SocketError);
    void mouseClick(QSystemTrayIcon::ActivationReason);
signals:
//    void StopThread();
    void keepAlive_sig();

};

#endif // WIDGET_H
