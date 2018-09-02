import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: window
    visible: true
    width: 320
    height: 480
    flags: Qt.FramelessWindowHint

    Rectangle{
        id: mainRectangle
        width: 320
        height: 480
        Layout.fillHeight: true
        Layout.fillWidth: true
        Layout.column: 1
        Layout.row: 2

        Rectangle {
            id: titleRectangle
            width: 320
            height: 21
            anchors.top: parent.top
            anchors.topMargin: 0
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.column: 1
            Layout.row: 1
            border.width: 1
            border.color: "#00009b"

            Text {
                id: titleWindow
                width: 93
                height: 16
                color: "#00009b"
                text: qsTr("Team Bot")
                anchors.top: parent.top
                anchors.topMargin: 2
                anchors.left: parent.left
                anchors.leftMargin: 3
                styleColor: "#00009b"
                lineHeight: 0.8
                horizontalAlignment: Text.AlignLeft
                font.pixelSize: 12
            }

            Button {
                id: close
                x: 300
                y: 460
                width: 16
                height: 16
                text: qsTr("x")
                anchors.top: parent.top
                anchors.topMargin: 2
                anchors.right: parent.right
                anchors.rightMargin: 2
                spacing: 5

                contentItem: Text {
                    x: 7
                    y: 4
                    anchors.centerIn: parent
                    text: close.text
                    font: close.font
                    opacity: enabled ? 1.0 : 0.3
                    color: color.down ? "#ffffff" : "#00009b"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }

                background: Rectangle {
                    anchors.centerIn: parent
                    implicitWidth: 15
                    implicitHeight: 15
                    opacity: enabled ? 1 : 0.3
                    color: close.down ? "#00009b" : "#ffffff"
                    border.width: 1
                    border.color: "#00009b"
                    radius: 7
                }
            }
        }

        Rectangle {
            id: startRectangle
            x: 0
            y: 19
            width: 320
            height: 461
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.column: 1
            Layout.row: 1
            border.width: 1
            border.color: "#00009b"

            // Open dialog
            Button {
                id: start
                text: qsTr("START")
                leftPadding: 6
                anchors.verticalCenterOffset: 102
                anchors.horizontalCenterOffset: 0
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
                id: nicknameRectangle
                x: 104
                y: 219
                width: 113
                height: 20
                border.width: 1
                border.color: "#00009b"
            }

            TextInput {
                id: userNickname
                x: 116
                y: 240
                width: 113
                height: 20
                color: "#00009b"
                text: qsTr("")
                anchors.horizontalCenterOffset: 1
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                anchors.verticalCenterOffset: 1
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
                anchors.verticalCenterOffset: -60
                anchors.horizontalCenterOffset: 1
                anchors.centerIn: parent
                lineHeight: 0.8
                horizontalAlignment: Text.AlignLeft
                font.pixelSize: 12
            }
        }

        GridLayout {
            id: gridDialog
            width: 320
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 19
            anchors.rightMargin: 0
            visible: false
            anchors.fill: parent

            rows: 1
            columns: 1

            Rectangle {
                id: dialog
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.column: 1
                Layout.row: 1
                border.width: 1
                border.color: "#00009b"

                // Send message
                Button {
                    id: sendButton
                    x: 276
                    y: 440
                    width: 44
                    height: 20
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                    anchors.right: parent.right
                    anchors.rightMargin: 0

                    background: Rectangle {
                        id: rectangle
                        implicitWidth: 44
                        implicitHeight: 20
                        opacity: enabled ? 1 : 0.3
                        color: "#00009b"
                        //anchors.fill: parent

                        Canvas {
                            id: triangle
                            anchors.fill: parent
                            onPaint: {
                                var ctx = triangle.getContext('2d');
                                ctx.fillStyle = "#ffffff";
                                ctx.beginPath();
                                ctx.moveTo(12,3);
                                ctx.lineTo(12,17);
                                ctx.lineTo(32,10);
                                ctx.fill();
                            }
                        }
                    }

                    onClicked: {

                    }
                }

                Rectangle {
                    id: messageRectangle
                    y: 219
                    width: 276
                    height: 20
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                    border.width: 1
                    border.color: "#00009b"
                }

                TextInput {
                    id: message
                    y: 443
                    width: 276
                    height: 20
                    text: qsTr("")
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                    horizontalAlignment: Text.AlignLeft
                    cursorVisible: true
                    font.pixelSize: 12
                    focus: true
                }

                ListView {
                    id: listMessage
                    x: 0
                    y: 0
                    width: 320
                    height: 441
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
}
/*##^## Designer {
    D{i:263;anchors_x:320;anchors_y:19}D{i:264;anchors_y:3}D{i:283;anchors_height:20;anchors_width:44}
}
 ##^##*/
