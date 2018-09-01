import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: startWindow
    visible: true
    width: 320
    height: 480
    title: qsTr("Team Bot")

    Rectangle {
        Layout.fillHeight: true
        Layout.fillWidth: true
        Layout.column: 1
        Layout.row: 1

        // Open dialog
        Button {
            text: qsTr("START")
            anchors.verticalCenterOffset: 303
            anchors.horizontalCenterOffset: 172
            anchors.centerIn: parent
            width: 100
            height: 42

            onClicked: {

                gridDialog.visible = true
            }
        }

        TextInput {
            id: userNickname
            x: 116
            y: 238
            width: 113
            height: 20
            text: qsTr("")
            anchors.verticalCenterOffset: 232
            anchors.horizontalCenterOffset: 173
            anchors.centerIn: parent
            renderType: Text.QtRendering
            horizontalAlignment: Text.AlignHCenter
            cursorVisible: true
            font.pixelSize: 12
        }

        Text {
            id: text1
            x: 126
            y: 151
            width: 93
            height: 18
            text: qsTr("Enter your name:")
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
            Layout.column: 1
            Layout.row: 1

            // Send message
            Button {
                id: sendButton
                text: qsTr("SEND")
                anchors.verticalCenterOffset: 219
                anchors.horizontalCenterOffset: 121
                anchors.centerIn: parent
                width: 78
                height: 42

                onClicked: {
                    //dialogWindow.show()  // Открываем первое окно
                    //startWindow.hide()   // Скрываем основное окно
                }
            }

            TextInput {
                id: message
                x: 0
                y: 438
                width: 236
                height: 42
                text: qsTr("")
                horizontalAlignment: Text.AlignLeft
                cursorVisible: true
                font.pixelSize: 12
            }
        }
    }
}
