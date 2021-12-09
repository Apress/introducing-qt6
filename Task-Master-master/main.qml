import QtQuick 2.9
import QtQuick.Controls 2.5

ApplicationWindow {
    width: 360
    height: 720
    visible: true
    title: "Task-Master"

    StackView{
        id: contentFrame
        anchors.fill: parent
        initialItem: Qt.resolvedUrl("qrc:/Load_Page.qml")
    }

    Component.onCompleted: {
        contentFrame.replace("qrc:/Main_Page.qml")
    }
}
