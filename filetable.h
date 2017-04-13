#ifndef FILETABLE_H
#define FILETABLE_H
#include <QString>
#include <QDir>
#include <QFile>
#include "datamanage.h"
#include "datatable.h"

#include <QThread>

class fileTable :public QThread
{
public:
    fileTable(QString,QString,QString,QMap<QString,QString>, dataManage *DB, QString path,QString setTime, QString file_type = "");
    ~fileTable();
    dataManage *DB;
    dataTable *dTable;

    QString lRow;
    QString lRank;
    QString filterWord;
    QMap<QString,QString> keyWord;
    bool isRun;
    //QMap<QString,QString> name_path;
    QVector<std::pair<QString,QString>>  name_path;
    QString path;
    QString setTime;
    QString file_type;

public:
    void find_file();
    void check_dir(QDir);
    void handing_file();
protected:
    virtual void run();

};

#endif // FILETABLE_H
