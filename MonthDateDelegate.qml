import QtQuick 2.0
import Theming 1.0
import Qt5Compat.GraphicalEffects

Item {
    id: root
    width: 25
    height: width

    property alias dayLabel: _textDay.text

    Rectangle{
        id: _rectangleBackground
        anchors.fill: parent
        radius: width/2
        color: Theme.baseColor

        Text{
            id: _textDay
            anchors.centerIn: parent
            font.pixelSize: 10

        }
    }

    DropShadow{
        anchors.fill: _rectangleBackground
        source: _rectangleBackground
        color: "#cccccc"
        radius: 10
        transparentBorder: true
        verticalOffset: 0
        horizontalOffset: 0
    }

}
