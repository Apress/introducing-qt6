import QtQuick 2.9
import QtQuick.Controls 2.5

Item{
    id: game_page
    width: 360
    height: 640

    property var playerOption: ""
    property var botOption: ""
    property var winState: 0 //0=draw 1=player Win 2=player los

    Rectangle{
        anchors.fill: parent
        color: "#3e5a79"
    }

    SwipeView{
        id: gameFrame
        anchors.fill: parent
        currentIndex: 0
        interactive: false

        Player_Phase{
            id: playerPhase
            width: 360
            height: 640
        }
        Result_Phase{
            id: resultPhase
            width: 360
            height: 640
        }
    }
}
