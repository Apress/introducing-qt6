import QtQuick 2.9
import QtQuick.Controls 2.5

Item {
    width: parent.width
    height: parent.height

    Rectangle{
        id: bgRec
        anchors.fill: parent
        color: "#2C3E50"
    }

    ListView{
        id: listview
        anchors.fill: parent
        header: Item {
            id: headerListView
            width: parent.width
            height: 50

            Label{
                anchors.centerIn: parent
                text: "Task-Master"
                color: "white"
            }
        }
        headerPositioning: ListView.OverlayHeader
        model: ListModel{
            id: myListModel
        }
        delegate: MouseArea {
            id: myDelegate
            width: parent.width
            height: 50
            onPressAndHold: {
                listview.currentIndex = index
                myListModel.remove(listview.currentIndex)
            }

            Label{
                id: titel
                text: titelText
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: 20
                color: "white"
            }

            Label{
                id: date
                text: dateText
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                anchors.rightMargin: 20
                color: "white"
            }
        }
        footer: Item {
            id: footerListView
            width: parent.width
            height: 50

            RoundButton{
                id: addTaskButton
                width: 40
                height: 40
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.rightMargin: 10
                text: "+"
                onClicked: {
                    addTaskDrawer.open()
                }
            }
        }
    }

    AddTask_Drawer{
        id: addTaskDrawer
    }
}
