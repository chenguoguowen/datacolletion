#ifndef DATATABLE_H
#define DATATABLE_H
#include <QString>
#include <QFileDialog>
#include <QDebug>
#include "datamanage.h"

class dataTable
{
public:
    dataTable(dataManage *DB,QString ,QString,QString,QMap<QString,QString>);

    QString Value;
    dataManage *dataDB;

public:
     bool noHave(QString,QString);
     void findKey(QString,QMap<QString,QString>);
     void deleteSpace(QString &str);
     int fileHandFunc(QString,int line);

public:
    QString lRow;
    QString lRank;
    QString filterWord;
    QMap<QString,QString> lKeyword;
    int line;
};

#endif // DATATABLE_H
