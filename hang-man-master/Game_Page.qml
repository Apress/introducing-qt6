import QtQuick 2.9
import QtQuick.Controls 2.5

Item{
    id: gamePage
    width: 360
    height: 640

    property var recColor: "#fe9000"

    MouseArea {
        id: root
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        width: 360
        height: 360

        Rectangle {
            id: rec1
            x: 19
            y: 319
            width: 87
            height: 20
            color: recColor
            visible: false
        }

        Rectangle {
            id: rec2
            x: 52
            y: 38
            width: 20
            height: 283
            color: recColor
            visible: false
        }

        Rectangle {
            id: rec3
            x: 52
            y: 38
            width: 189
            height: 20
            color: recColor
            visible: false
        }

        Rectangle {
            id: rec4
            x: 221
            y: 39
            width: 20
            height: 54
            color: recColor
            visible: false
        }

        Rectangle {
            id: rec5
            x: 189
            y: 89
            width: 84
            height: 84
            color: "transparent"
            radius: 99
            border.width: 15
            border.color: recColor
            visible: false
        }

        Rectangle {
            id: rec6
            x: 221
            y: 168
            width: 20
            height: 91
            color: recColor
            visible: false
        }

        Rectangle {
            id: rec7
            x: 200
            y: 231
            width: 20
            height: 91
            color: recColor
            rotation: 210
            visible: false
        }

        Rectangle {
            id: rec8
            x: 242
            y: 231
            width: 20
            height: 91
            color: recColor
            rotation: 150
            visible: false
        }

        Rectangle {
            id: rec9
            x: 252
            y: 170
            width: 20
            height: 91
            color: recColor
            rotation: 130
            visible: false
        }

        Rectangle {
            id: rec10
            x: 190
            y: 170
            width: 20
            height: 91
            color: recColor
            rotation: 230
            visible: false
        }
    }

    ListView{
        id: listViewLetterCount
        width: parent.width
        height: 50
        orientation: ListView.Horizontal
        anchors.bottom: parent.bottom
        anchors.bottomMargin: inputGrid.height+20
        interactive: false
        model: listModelCount
        delegate: MouseArea{
            width: 50
            height: parent.width/10

            Rectangle{
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width-10
                height: 4
                color: "white"
            }
        }
    }

    ListView{
        id: listViewWord
        width: parent.width
        height: 50
        orientation: ListView.Horizontal
        anchors.bottom: parent.bottom
        anchors.bottomMargin: inputGrid.height+40
        interactive: false
        model: ListModel{
            id: wordOutputModel
        }

        delegate: MouseArea{
            width: 50
            height: parent.width/10

            Label{
                anchors.centerIn: parent
                font.pointSize: 20
                font.bold: true
                color: "white"
                text: letter
            }
        }
    }

    Input_Grid{
        id: inputGrid
    }
}
