import QtQuick
import QtQuick.Layouts
import Theming 1.0
import Qt5Compat.GraphicalEffects

Item {
    id: root
    width: 300

    Rectangle{
        id: _rectangleBackground
        anchors.fill: parent
        color: Qt.rgba(0,0,0,0.03)


        ColumnLayout{
            id: _layoutMain
            anchors.fill: parent
            anchors.margins: 10


            Item{
                id: _itemUserIconWrapper
                width: 70
                height: 70
                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                Layout.topMargin: 20
                Rectangle{
                    id: _rectangleUserIconWrapper
                    width: 70
                    height: 70
                    radius: width/2
                    color: Theme.baseColor


                }
                DropShadow{
                    anchors.fill: _rectangleUserIconWrapper
                    source: _rectangleUserIconWrapper
                    verticalOffset: 0
                    horizontalOffset: 0
                    transparentBorder: true
                    color: "#cccccc"
                    radius: 10
                }
            }


            Text{
                id: _textUsername
                font.pixelSize: 11
                color: "black"
                Layout.alignment: Qt.AlignHCenter
                Layout.topMargin: 10
                text: authentication.name

            }

            Rectangle{
                Layout.fillWidth: true
                height: 1
                color: "#cccccc"
                Layout.topMargin: 10
            }

            Text{
                id: _textMenuTitle
                text: "MENU"
                font.pixelSize: 11
                font.bold: true
                color: "gray"
                Layout.topMargin: 15
                Layout.alignment: Qt.AlignLeft
            }



            Item{
                Layout.fillHeight: true
            }

            NeuButton{
                id: _buttonLogout
                Layout.fillWidth: true
                buttonText: "Logout"


            }
        }
    }



}
