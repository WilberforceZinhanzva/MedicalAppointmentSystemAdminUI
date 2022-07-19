import QtQuick 2.0
import QtQuick.Layouts
import CustomModels 1.0

Item {
    id: root
    anchors.fill: parent


    RowLayout{
        id: _layoutMain
        anchors.fill: parent

        AccountMenuView{
            id: _accountMenuView
            Layout.fillHeight: true
            Layout.alignment: Qt.AlignLeft
        }

        AccountCalendarView{
            id: _accountCalendarView
            Layout.fillHeight: true
            Layout.alignment: Qt.AlignRight
        }
    }

}
