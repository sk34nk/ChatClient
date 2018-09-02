import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: startWindow
    visible: true
    width: 320
    height: 480
    color: "#ffffff"
    title: qsTr("Team Bot")

    Rectangle {
        Layout.fillHeight: true
        Layout.fillWidth: true
        Layout.column: 1
        Layout.row: 1

        // Open dialog
        Button {
            id: start
            text: qsTr("START")
            leftPadding: 6
            anchors.verticalCenterOffset: 303
            anchors.horizontalCenterOffset: 172
            anchors.centerIn: parent
            width: 100
            height: 42

            contentItem: Text {
                text: start.text
                font: start.font
                opacity: enabled ? 1.0 : 0.3
                color: color.down ? "#ffffff" : "#00009b"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
            }

            background: Rectangle {
                implicitWidth: 100
                implicitHeight: 40
                opacity: enabled ? 1 : 0.3
                border.color: start.down ? "#ffffff" : "#00009b"
                border.width: 1
            }

            onClicked: {
                gridDialog.visible = true
            }
        }

        Rectangle {
                x: 116
                y: 219
                width: 113
                height: 20
                border.width: 1
                border.color: "#00009b"
            }

            TextInput {
                id: userNickname
                x: 116
                y: 238
                width: 113
                height: 20
                color: "#00009b"
                text: qsTr("")
                anchors.verticalCenterOffset: 232
                anchors.horizontalCenterOffset: 173
                anchors.centerIn: parent
                renderType: Text.QtRendering
                horizontalAlignment: Text.AlignHCenter
                cursorVisible: true
                font.pixelSize: 12
                focus: true
            }

        Text {
            id: text1
            x: 126
            y: 151
            width: 93
            height: 18
            color: "#00009b"
            text: qsTr("Enter your name:")
            styleColor: "#00009b"
            anchors.verticalCenterOffset: 170
            anchors.horizontalCenterOffset: 173
            anchors.centerIn: parent
            lineHeight: 0.8
            horizontalAlignment: Text.AlignLeft
            font.pixelSize: 12
        }
    }

    GridLayout {
        id: gridDialog
        width: 320
        anchors.rightMargin: 0
        visible: false
        anchors.fill: parent

        rows: 1
        columns: 1

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.column: 2
            Layout.row: 2

                // Send message

                Button {
                    id: sendButton
                    x: 256
                    y: 462
                    text: qsTr("SEND")
                    anchors.verticalCenterOffset: 227
                    anchors.horizontalCenterOffset: 121
                    width: 64
                    height: 18

                    onClicked: {

                    }
                }

            TextInput {
                id: message
                x: 0
                y: 462
                width: 259
                height: 18
                text: qsTr("")
                horizontalAlignment: Text.AlignLeft
                cursorVisible: true
                font.pixelSize: 12
            }

            ListView {
                id: listView
                x: 0
                y: 0
                width: 320
                height: 456
                model: ListModel {

                }
                delegate: Item {
                    x: 5
                    width: 80
                    height: 40
                    Row {
                        id: row1
                        Rectangle {
                            width: 40
                            height: 40
                            color: colorCode
                        }

                        Text {
                            text: name
                            font.bold: true
                            anchors.verticalCenter: parent.verticalCenter
                        }
                        spacing: 10
                    }
                }
            }
        }
    }
}
