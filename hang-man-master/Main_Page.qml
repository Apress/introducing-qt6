import QtQuick 2.9
import QtQuick.Controls 2.5
import "qrc:/Game_Page"

Item {
    width: parent.width
    height: parent.height

    Rectangle{
        anchors.fill: parent
        color: "#2c3e50"
    }

    property var hangManCounter: 0
    property var currentWord: ""
    property var wordCount: 0
    ListModel{
        id: listModelCount
    }
    ListModel{
        id: wordModel
        ListElement{
            word: "TREE"
        }
        ListElement{
            word: "APPLE"
        }
    }

    SwipeView{
        id: swipeView
        anchors.fill: parent
        interactive: false

        Item{
            id: welcomePage
            width: 360
            height: 640

            Label{
                id: gameTitel
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 50
                text: "Hang-Man"
                color: "white"
                font.pointSize: 50
            }

            RoundButton{
                id: startGameButton
                anchors.centerIn: parent
                width: 200
                height: 200
                text: "START"
                font.bold: true
                font.pointSize: 38
                background: Rectangle{
                    anchors.fill: parent
                    radius: 99
                    color: "#fe9000"
                    border.width: 2
                    border.color: "black"
                }
                onClicked: {
                    currentWord = wordModel.get(Math.floor(Math.random() * wordModel.count))
                    wordCount = currentWord.word.length
                    for(var i = 1; i <= wordCount; i++){
                        listModelCount.append({"space": "-"})
                    }
                    console.log(currentWord.word)
                    swipeView.setCurrentIndex(1)
                }
            }

            Label{
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 50
                text: "Made by BEN COEPP"
                color: "white"
                font.pointSize: 15
            }

            Label{
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 10
                text: "User Agreement other Legal Stuff"
                color: "white"
                font.pointSize: 8

                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        // Link to Legal Documents
                    }
                }
            }
        }

        Game_Page{
            id: gamePage
        }

        Item{
            id: endPage
            width: 360
            height: 640

            Label{
                anchors.top: parent.top
                anchors.topMargin: 50
                anchors.horizontalCenter: parent.horizontalCenter
                text: "PLAYER"
                font.pointSize: 50
                font.bold: true
                color: "white"
            }

            Label{
                id: winLossLabel
                anchors.top: parent.top
                anchors.topMargin: 150
                anchors.horizontalCenter: parent.horizontalCenter
                text: ""
                font.pointSize: 50
                font.bold: true
                color: "#fe9000"
            }

            Label{
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 150
                anchors.horizontalCenter: parent.horizontalCenter
                text: "WANT TO"
                font.pointSize: 30
                font.bold: true
                color: "white"
            }

            Label{
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 100
                anchors.horizontalCenter: parent.horizontalCenter
                text: "TRY"
                font.pointSize: 20
                font.bold: true
                color: "#fe9000"
            }

            RoundButton{
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 50
                anchors.horizontalCenter: parent.horizontalCenter
                width: 200
                height: 40
                text: "AGAIN"
                font.bold: true
                font.pointSize: 30
                background: Rectangle{
                    anchors.fill: parent
                    radius: 99
                    color: "#fe9000"
                }
                onClicked: {
                    swipeView.setCurrentIndex(0)
                }
            }
        }
    }

}
