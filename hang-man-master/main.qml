import QtQuick 2.9
import QtQuick.Controls 2.5

ApplicationWindow {
    width: 360
    height: 640
    visible: true
    title: "Hang-Man"

    StackView{
        id: contentFrame
        anchors.fill: parent
        initialItem: Qt.resolvedUrl("qrc:/Main/Load_Page.qml")
    }

    Component.onCompleted: {
        contentFrame.replace("qrc:/Main/Main_Page.qml")
    }
}
