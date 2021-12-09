import QtQuick 2.9
import QtQuick.Controls 2.5

Item {

    MouseArea{
        width: 100
        height: 100
        anchors.centerIn: parent
        onClicked: {
            gameFrame.setCurrentIndex(0)
            winState = 0
            playerOption = ""
            botOption = ""
        }
        Image {
            anchors.fill: parent
            antialiasing: true
            source: if(winState===0){"qrc:/drawImg.png"}
                    else if(winState===1){"qrc:/winImg.png"}
                    else if(winState===2){"qrc:/losImg.png"}
            onSourceChanged: {
                resultTimer.start()
            }
        }
    }

    Label{
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 100
        anchors.horizontalCenter: parent.horizontalCenter
        color: "white"
        font.bold: true
        font.pointSize: 25
        text: "Win:: "+ winCount +" | "+ losCount+" ::Loss"
    }
    Timer{
        id: resultTimer
        interval: 10000
        repeat: false
        running: false
        onTriggered: {
            gameFrame.setCurrentIndex(0)
            winState = 0
            playerOption = ""
            botOption = ""
        }
    }
}
