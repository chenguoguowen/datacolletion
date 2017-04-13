#include "datatable.h"

dataTable::dataTable(dataManage *DB,QString lRow,QString lRank,QString filterWord,QMap<QString,QString> lKeyword)
{
     this->dataDB = DB;
    this->lRow = lRow;
    this->lRank = lRank;
    this->filterWord = filterWord;
    this->lKeyword = lKeyword;

}

int dataTable::fileHandFunc(QString fileName,int line)
{

    QFile file(fileName);

    if(!file.open(QIODevice::ReadOnly))
    {
        QMessageBox::warning(NULL,"Warning","file open fail!");
        return line;
    }

    QDataStream qds(&file);

    int cmpLine = 0;
    while(!qds.atEnd())
    {
        QString ss;
        QString field;

        if(0 != line && cmpLine < line)
        {
            ss = qds.device()->readLine();
            cmpLine++;
            continue;
        }

         ss = qds.device()->readLine();
         line++;
         cmpLine++;
        //qDebug()<<ss;
        findKey(ss ,lKeyword);

        if(noHave(ss,filterWord))
        {
            field = "ID, KEY1";
            QStringList sl = ss.split(lRow);
            QStringList sl0 = sl.at(0).split("\r");
            QStringList sl1 = sl0.at(0).split(lRank);

            QString data = "null,'" +Value+"' ";
            int  j = 0;

            for (int i = 0; i < sl1.size(); ++i)
            {
                field += ", Row" + QString("%1").arg(i+1);
                QString a = sl1.at(i).toLocal8Bit();

                deleteSpace(a);

             //   qDebug()<< a;
                data += " ,'" + a + "' ";
                j++;

            }
            dataDB->exec("insert into dataTable (" + field + ") values(" + data + ")" );
        }
    }
    file.close();

    return line;
}

void  dataTable::deleteSpace(QString &str)
{
    bool flage = true;

    while (flage)
    {
        int len = str.length();
        int dex = str.indexOf(' ');
        int lastDex = str.lastIndexOf(' ');
        if(dex == 0)
        {
            str.remove(0,1);
            continue;
        }
        if(lastDex == len)
        {
            str.remove(len-1,1);
            continue;
        }
        else
            flage = false;
    }

}


void dataTable::findKey(QString cmpLine,QMap<QString,QString> cmpMap)
{

    QMap<QString,QString>::Iterator it = cmpMap.begin();

    for(;it != cmpMap.end();it++)
    {
        if(cmpLine.indexOf(it.key()) != -1)
        {
            Value = it.value();
            return;
        }
    }

}

bool dataTable::noHave(QString cmpLine,QString cmpKey)
{

    if(cmpLine.indexOf(cmpKey) != -1)
    {
        return false;
    }

    return true;
}

