#include "filetable.h"
#include <QDebug>
#include <QFileInfo>
#include <QDateTime>
fileTable::fileTable(QString Row,QString Rank,QString filterword,QMap<QString,QString> keyword,dataManage *DB, QString path,QString setTime, QString file_type)
{
    this->DB = DB;
    lRow = Row;
    lRank = Rank;
    this->keyWord = keyword;
    filterWord = filterword;
    this->path = path;
    this->setTime = setTime;
    isRun = false;
    dTable = new dataTable(DB,lRow,lRank,filterWord,keyWord);
    this->file_type = file_type;
}

fileTable::~fileTable()
{
    if(dTable != NULL)
    {
        delete dTable;
    }
}

void fileTable::handing_file()
{
    //文件读取；
    if(name_path.isEmpty())
    {
        qDebug()<<"name_path is empty";
        return;
    }

    for(int i = 0;i<name_path.length();i++)
    {
        QString selectStr = "select ReadLine from fileTable where FileName = '"+name_path[i].first+"' and Path ='"+name_path[i].second+"' ";
        QString selectStr1 = "select Read from fileTable where FileName = '"+name_path[i].first+"' and Path ='"+name_path[i].second+"' ";

        int line;
        QString read;
        line = DB->selectData(selectStr).toInt();
        read = DB->selectData(selectStr1);

        if(read.compare("0") == 0)
        {
            line = dTable->fileHandFunc(name_path[i].second+"/"+name_path[i].first,line);     //文件名字和行数传到处理类中
            QString updateStr = " where FileName = '"+name_path[i].first+"' and Path = '"+name_path[i].second+"'";
            DB->updateSql("fileTable"," set Read ='1' ,ReadLine = " + QString("%1").arg(line) +" ",updateStr);
        }

    }
}

void fileTable::find_file()
{
    path.replace("\\","/");
    QDir dir(path);
    qDebug()<<dir;

    dir.setFilter(QDir::Files | QDir::NoSymLinks | QDir::AllDirs);//列出文件,列出隐藏文件（在Unix下就是以.开始的为文件）,不列出符号链接（不支持符号连接的操作系统会忽略）

    dir.setSorting(QDir::Size | QDir::Reversed);//按文件大小排序，相反的排序顺序

    check_dir(dir);
}

void fileTable::check_dir(QDir dir)
{

    foreach(QFileInfo mfi ,dir.entryInfoList())
    {
        //DB = new dataManage();
        if(mfi.isFile())
        {
//            qDebug()<<mfi.canonicalFilePath();
//           qDebug()<< mfi.canonicalPath();
//            qDebug()<<mfi.filePath();
//            QString d = mfi.filePath();
//            int pos1 = d.indexOf("/");
//            d.insert(pos1,"backfile/");

            if(file_type.compare("") != 0 && mfi.fileName().right(file_type.length()).compare(file_type) != 0 )
            {
                continue;
            }
            std::pair<QString, QString> a(mfi.fileName(),mfi.canonicalPath());
            if(!name_path.contains(a))
            {
                name_path.push_back(a);
            }
            //          qDebug()<< "File :" << mfi.canonicalPath();
            //          qDebug()<< mfi.lastModified().toString()<<mfi.fileName();

            QString last_time = DB->existsSelect("fileTable",mfi.fileName(),mfi.canonicalPath());
            if(!last_time.isEmpty())
            {
                QDateTime time = QDateTime::currentDateTime();
                QDateTime last = QDateTime::fromString(last_time, "yyyy-MM-dd hh:mm:ss");
                qint64 days = 0;
                days = mfi.lastModified().daysTo(time);

                if(0 != last.secsTo(mfi.lastModified()) )
                {
                    QString updateStr = "where FileName = '"+mfi.fileName()+"' and Path = '"+mfi.canonicalPath()+"'";
                    DB->updateSql("fileTable"," set Read = '0' ,lastModifyTime = '"+mfi.lastModified().toString("yyyy-MM-dd hh:mm:ss")+"' ",updateStr);
//                    name_path.insert(mfi.fileName(),mfi.canonicalPath());
                }
                else if(days >= 3)
                {
                    qDebug() << "修改日期：" << mfi.lastModified().toString();
                    qDebug() << "当前日期：" << time.toString();

                    QString d = mfi.canonicalPath();
                    int pos = d.indexOf("/");
                    d.insert(pos,"/backfile");

                    QDir toDir;

                    if(!toDir.exists(d)) //判断指定目录下是否存在指定目录
                    {
                        toDir.mkpath(d); //生成指定目录
                        qDebug() << "Create";
                    }
                    else
                    {
                        qDebug() << "Already exist";
                    }

                    d = mfi.filePath();
                    int pos1 = d.indexOf("/");
                    d.insert(pos1,"/backfile");

                    if(!QFile::copy(mfi.filePath(),d))
                    {
                        qDebug() << "Copy fail";
                    }

                    QFile fileTemp(mfi.filePath());
                    fileTemp.remove();

                }
            }
            else
            {
                QString insertStr = "null, '"+mfi.fileName()+"' , '"+mfi.canonicalPath()+"' , '"+mfi.lastModified().toString("yyyy-MM-dd hh:mm:ss")+"' ,'0' ,0 ";
                DB->insertData("fileTable",insertStr);
//                name_path.insert(mfi.fileName(),mfi.canonicalPath());
            }
        }
        else
        {
            if(mfi.fileName()=="." || mfi.fileName() == "..")
            {
                continue;
            }
            qDebug() << "Entry Dir" << mfi.absoluteFilePath();
            check_dir(mfi.absoluteFilePath());
        }

    }

}

void fileTable::run()
{
    isRun = true;
    while(isRun)
    {
        find_file();
        handing_file();
        sleep(setTime.toULong());
    }
}
