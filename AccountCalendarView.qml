import QtQuick 2.0
import QtQuick.Controls.Imagine
import QtQuick.Layouts

Item {
    id: root
    width: 350

    property string selectedDayOfWeek: "Monday"
    property string selectedDay: "24"
    property string selectedMonth: "August"

    Rectangle{
        id: _rectangleBackground
        anchors.fill: parent
        color: Qt.rgba(0,0,0,0.07)


        ColumnLayout{
            anchors.fill: parent
            anchors.margins: 10

            Text {
                id: _textSelectedDate
                text: "<font> <strong>"+selectedDayOfWeek+"</strong> - "+ selectedDay+" "+ selectedMonth +"</font>"
                textFormat: Text.RichText
                font.pixelSize: 13
                Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
                Layout.topMargin: 30
            }

            ListView{
                id: _listViewCalendarContainer
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.leftMargin: 20
                Layout.rightMargin: 20
                Layout.topMargin: 20
                spacing: 20
                clip: true
                model: CalendarModel{
                    from: new Date(2015,0,1)
                    to: new Date( 2015,1,22)
                }
                delegate: ColumnLayout{
                    width:_listViewCalendarContainer.width
                    spacing: 10



                    Rectangle{
                        id: _rectangleMonthHeading
                        width: _textMonthHeading.width + 20
                        height: 30
                        radius: width/2
                        color: Qt.lighter("orange")
                        Layout.alignment: Qt.AlignLeft
                        Layout.bottomMargin: 5
                        Layout.leftMargin: 10
                        Text{
                            id: _textMonthHeading
                            text: _monthGrid.title
                            font.pixelSize: 10
                            anchors.centerIn: parent

                        }
                    }

                    DayOfWeekRow{
                        id: _dayOfWeekRow
                        Layout.fillWidth: true
                        locale: _monthGrid.locale
                        delegate: Text{
                            width: 30
                            height: 30
                            horizontalAlignment: Qt.AlignHCenter
                            verticalAlignment: Qt.AlignVCenter
                            text: shortName
                            font.pixelSize: 10
                        }

                    }
                    MonthGrid{
                        id: _monthGrid
                        locale: Qt.locale("en_US")
                        month: model.month
                        year: model.year
                        Layout.fillWidth: true
                        delegate: MonthDateDelegate{
                            dayLabel: model.day
                            opacity: model.month === control.month ? 1 : 0.3
                        }
                    }
                }
            }
        }


    }

}
