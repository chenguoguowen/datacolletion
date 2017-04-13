/********************************************************************************
** Form generated from reading UI file 'widget.ui'
**
** Created by: Qt User Interface Compiler version 5.7.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_WIDGET_H
#define UI_WIDGET_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QFrame>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QTextEdit>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_Widget
{
public:
    QLabel *label;
    QLabel *label_2;
    QLabel *label_3;
    QLabel *label_4;
    QLabel *label_5;
    QLineEdit *lineEdit;
    QLineEdit *lineEdit_2;
    QLineEdit *lineEdit_3;
    QTextEdit *textEdit;
    QTextEdit *textEdit_2;
    QPushButton *pushButton;
    QLabel *label_6;
    QLabel *label_7;
    QLabel *label_8;
    QFrame *line;
    QFrame *line_2;
    QWidget *layoutWidget;
    QGridLayout *gridLayout_2;
    QPushButton *pushButton_3;
    QPushButton *pushButton_5;
    QPushButton *pushButton_4;
    QLineEdit *lineEdit_5;
    QLabel *label_11;
    QWidget *layoutWidget1;
    QGridLayout *gridLayout;
    QLabel *label_9;
    QLineEdit *lineEdit_4;
    QLabel *label_10;
    QPushButton *pushButton_2;

    void setupUi(QWidget *Widget)
    {
        if (Widget->objectName().isEmpty())
            Widget->setObjectName(QStringLiteral("Widget"));
        Widget->setEnabled(true);
        Widget->resize(641, 442);
        QPalette palette;
        QBrush brush(QColor(255, 255, 255, 255));
        brush.setStyle(Qt::SolidPattern);
        palette.setBrush(QPalette::Active, QPalette::Button, brush);
        palette.setBrush(QPalette::Inactive, QPalette::Button, brush);
        palette.setBrush(QPalette::Disabled, QPalette::Button, brush);
        Widget->setPalette(palette);
        Widget->setAutoFillBackground(false);
        Widget->setStyleSheet(QStringLiteral(""));
        label = new QLabel(Widget);
        label->setObjectName(QStringLiteral("label"));
        label->setGeometry(QRect(51, 42, 72, 16));
        label_2 = new QLabel(Widget);
        label_2->setObjectName(QStringLiteral("label_2"));
        label_2->setGeometry(QRect(51, 89, 72, 16));
        label_3 = new QLabel(Widget);
        label_3->setObjectName(QStringLiteral("label_3"));
        label_3->setGeometry(QRect(51, 136, 72, 16));
        label_4 = new QLabel(Widget);
        label_4->setObjectName(QStringLiteral("label_4"));
        label_4->setGeometry(QRect(50, 190, 72, 16));
        label_5 = new QLabel(Widget);
        label_5->setObjectName(QStringLiteral("label_5"));
        label_5->setGeometry(QRect(50, 240, 72, 16));
        lineEdit = new QLineEdit(Widget);
        lineEdit->setObjectName(QStringLiteral("lineEdit"));
        lineEdit->setEnabled(false);
        lineEdit->setGeometry(QRect(129, 42, 191, 31));
        lineEdit_2 = new QLineEdit(Widget);
        lineEdit_2->setObjectName(QStringLiteral("lineEdit_2"));
        lineEdit_2->setEnabled(false);
        lineEdit_2->setGeometry(QRect(129, 80, 191, 31));
        lineEdit_3 = new QLineEdit(Widget);
        lineEdit_3->setObjectName(QStringLiteral("lineEdit_3"));
        lineEdit_3->setEnabled(false);
        lineEdit_3->setGeometry(QRect(129, 130, 191, 31));
        textEdit = new QTextEdit(Widget);
        textEdit->setObjectName(QStringLiteral("textEdit"));
        textEdit->setEnabled(false);
        textEdit->setGeometry(QRect(130, 180, 191, 31));
        textEdit_2 = new QTextEdit(Widget);
        textEdit_2->setObjectName(QStringLiteral("textEdit_2"));
        textEdit_2->setEnabled(false);
        textEdit_2->setGeometry(QRect(130, 230, 191, 31));
        pushButton = new QPushButton(Widget);
        pushButton->setObjectName(QStringLiteral("pushButton"));
        pushButton->setEnabled(false);
        pushButton->setGeometry(QRect(360, 250, 75, 23));
        pushButton->setAutoFillBackground(true);
        label_6 = new QLabel(Widget);
        label_6->setObjectName(QStringLiteral("label_6"));
        label_6->setEnabled(false);
        label_6->setGeometry(QRect(350, 40, 141, 20));
        label_7 = new QLabel(Widget);
        label_7->setObjectName(QStringLiteral("label_7"));
        label_7->setEnabled(false);
        label_7->setGeometry(QRect(350, 100, 131, 16));
        label_8 = new QLabel(Widget);
        label_8->setObjectName(QStringLiteral("label_8"));
        label_8->setEnabled(false);
        label_8->setGeometry(QRect(350, 150, 201, 16));
        line = new QFrame(Widget);
        line->setObjectName(QStringLiteral("line"));
        line->setGeometry(QRect(0, 279, 641, 31));
        line->setFrameShape(QFrame::HLine);
        line->setFrameShadow(QFrame::Sunken);
        line_2 = new QFrame(Widget);
        line_2->setObjectName(QStringLiteral("line_2"));
        line_2->setGeometry(QRect(0, 365, 651, 21));
        line_2->setFrameShape(QFrame::HLine);
        line_2->setFrameShadow(QFrame::Sunken);
        layoutWidget = new QWidget(Widget);
        layoutWidget->setObjectName(QStringLiteral("layoutWidget"));
        layoutWidget->setGeometry(QRect(50, 400, 456, 25));
        gridLayout_2 = new QGridLayout(layoutWidget);
        gridLayout_2->setSpacing(6);
        gridLayout_2->setContentsMargins(11, 11, 11, 11);
        gridLayout_2->setObjectName(QStringLiteral("gridLayout_2"));
        gridLayout_2->setContentsMargins(0, 0, 0, 0);
        pushButton_3 = new QPushButton(layoutWidget);
        pushButton_3->setObjectName(QStringLiteral("pushButton_3"));

        gridLayout_2->addWidget(pushButton_3, 0, 2, 1, 1);

        pushButton_5 = new QPushButton(layoutWidget);
        pushButton_5->setObjectName(QStringLiteral("pushButton_5"));
        pushButton_5->setEnabled(false);

        gridLayout_2->addWidget(pushButton_5, 0, 4, 1, 1);

        pushButton_4 = new QPushButton(layoutWidget);
        pushButton_4->setObjectName(QStringLiteral("pushButton_4"));

        gridLayout_2->addWidget(pushButton_4, 0, 3, 1, 1);

        lineEdit_5 = new QLineEdit(layoutWidget);
        lineEdit_5->setObjectName(QStringLiteral("lineEdit_5"));
        lineEdit_5->setEnabled(false);

        gridLayout_2->addWidget(lineEdit_5, 0, 1, 1, 1);

        label_11 = new QLabel(layoutWidget);
        label_11->setObjectName(QStringLiteral("label_11"));

        gridLayout_2->addWidget(label_11, 0, 0, 1, 1);

        layoutWidget1 = new QWidget(Widget);
        layoutWidget1->setObjectName(QStringLiteral("layoutWidget1"));
        layoutWidget1->setGeometry(QRect(50, 320, 301, 25));
        gridLayout = new QGridLayout(layoutWidget1);
        gridLayout->setSpacing(6);
        gridLayout->setContentsMargins(11, 11, 11, 11);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        gridLayout->setContentsMargins(0, 0, 0, 0);
        label_9 = new QLabel(layoutWidget1);
        label_9->setObjectName(QStringLiteral("label_9"));

        gridLayout->addWidget(label_9, 0, 0, 1, 1);

        lineEdit_4 = new QLineEdit(layoutWidget1);
        lineEdit_4->setObjectName(QStringLiteral("lineEdit_4"));
        lineEdit_4->setEnabled(false);

        gridLayout->addWidget(lineEdit_4, 0, 1, 1, 1);

        label_10 = new QLabel(layoutWidget1);
        label_10->setObjectName(QStringLiteral("label_10"));

        gridLayout->addWidget(label_10, 0, 2, 1, 1);

        pushButton_2 = new QPushButton(layoutWidget1);
        pushButton_2->setObjectName(QStringLiteral("pushButton_2"));
        pushButton_2->setAutoFillBackground(false);
        pushButton_2->setStyleSheet(QStringLiteral(""));

        gridLayout->addWidget(pushButton_2, 0, 3, 1, 1);

        layoutWidget->raise();
        layoutWidget->raise();
        label->raise();
        label_2->raise();
        label_3->raise();
        label_4->raise();
        label_5->raise();
        lineEdit->raise();
        lineEdit_2->raise();
        lineEdit_3->raise();
        textEdit->raise();
        textEdit_2->raise();
        pushButton->raise();
        label_6->raise();
        label_7->raise();
        label_8->raise();
        line->raise();
        line_2->raise();

        retranslateUi(Widget);

        QMetaObject::connectSlotsByName(Widget);
    } // setupUi

    void retranslateUi(QWidget *Widget)
    {
        Widget->setWindowTitle(QApplication::translate("Widget", "Widget", Q_NULLPTR));
        label->setText(QApplication::translate("Widget", "\346\226\207\344\273\266\350\267\257\345\276\204  \357\274\232", Q_NULLPTR));
        label_2->setText(QApplication::translate("Widget", "\350\277\207\346\273\244\345\255\227\346\256\265  \357\274\232", Q_NULLPTR));
        label_3->setText(QApplication::translate("Widget", "\345\214\271\351\205\215\345\205\263\351\224\256\345\255\227\357\274\232", Q_NULLPTR));
        label_4->setText(QApplication::translate("Widget", "\350\241\214\346\240\207\350\257\206    \357\274\232", Q_NULLPTR));
        label_5->setText(QApplication::translate("Widget", "\345\210\227\346\240\207\350\257\206    \357\274\232", Q_NULLPTR));
        lineEdit->setText(QApplication::translate("Widget", "I:\\testfile", Q_NULLPTR));
        pushButton->setText(QApplication::translate("Widget", "\347\241\256\345\256\232", Q_NULLPTR));
        label_6->setText(QApplication::translate("Widget", "\346\263\250\357\274\232\350\276\223\345\205\245\346\226\207\344\273\266\345\244\271\350\267\257\345\276\204", Q_NULLPTR));
        label_7->setText(QApplication::translate("Widget", "\346\263\250\357\274\232\350\276\223\345\205\245\350\277\207\346\273\244\345\255\227\346\256\265", Q_NULLPTR));
        label_8->setText(QApplication::translate("Widget", "\346\263\250:\351\200\211\345\241\253\351\241\271\357\274\233\346\240\274\345\274\217\357\274\232AA\357\274\2321\357\274\233BB\357\274\2322\357\274\233...", Q_NULLPTR));
        pushButton_3->setText(QApplication::translate("Widget", "\350\277\236\346\216\245", Q_NULLPTR));
        pushButton_5->setText(QApplication::translate("Widget", "\347\231\273\345\275\225", Q_NULLPTR));
        pushButton_4->setText(QApplication::translate("Widget", "\346\226\255\345\274\200\350\277\236\346\216\245", Q_NULLPTR));
        lineEdit_5->setText(QApplication::translate("Widget", "127.0.0.1", Q_NULLPTR));
        label_11->setText(QApplication::translate("Widget", "\346\234\215\345\212\241\345\231\250\345\234\260\345\235\200\357\274\232", Q_NULLPTR));
        label_9->setText(QApplication::translate("Widget", "\346\211\253\346\217\217\345\221\250\346\234\237  \357\274\232", Q_NULLPTR));
        label_10->setText(QApplication::translate("Widget", "\347\247\222", Q_NULLPTR));
        pushButton_2->setText(QApplication::translate("Widget", "\345\274\200\345\247\213", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class Widget: public Ui_Widget {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_WIDGET_H
