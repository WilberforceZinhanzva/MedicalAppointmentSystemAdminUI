#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QUrl>
#include <QQmlContext>
#include "authentication.h"


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterSingletonType(QUrl("qrc:/MedicalAppointmentsSystem/Theme.qml"),"Theming",1,0,"Theme");

    QQmlApplicationEngine engine;

    engine.rootContext()->setContextProperty("authentication", &Authentication::instance());
    const QUrl url(u"qrc:/MedicalAppointmentsSystem/main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
