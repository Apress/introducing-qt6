import QtQuick 2.9
import QtQuick.Controls 2.5

GridView {
    id: inputGrid
    width: parent.width
    height: parent.height/3
    anchors.bottom: parent.bottom
    cellHeight: 50
    cellWidth: 50
    model: ListModel{
        ListElement{
            letter: "A"
        }
        ListElement{
            letter: "B"
        }
        ListElement{
            letter: "C"
        }
        ListElement{
            letter: "D"
        }
        ListElement{
            letter: "E"
        }
        ListElement{
            letter: "F"
        }
        ListElement{
            letter: "G"
        }
        ListElement{
            letter: "H"
        }
        ListElement{
            letter: "I"
        }
        ListElement{
            letter: "J"
        }
        ListElement{
            letter: "K"
        }
        ListElement{
            letter: "L"
        }
        ListElement{
            letter: "M"
        }
        ListElement{
            letter: "N"
        }
        ListElement{
            letter: "O"
        }
        ListElement{
            letter: "P"
        }
        ListElement{
            letter: "Q"
        }
        ListElement{
            letter: "R"
        }
        ListElement{
            letter: "S"
        }
        ListElement{
            letter: "T"
        }
        ListElement{
            letter: "U"
        }
        ListElement{
            letter: "V"
        }
        ListElement{
            letter: "W"
        }
        ListElement{
            letter: "X"
        }
        ListElement{
            letter: "Y"
        }
        ListElement{
            letter: "Z"
        }
    }
    delegate: MouseArea{
        width: 50
        height: width
        onClicked: {
            borderRec.border.width = 1
            //Check if letter is included in the Word
            if(currentWord.word.match(letter)){
                // Found Letter
                console.log("Yes Letter:" + letter + " is in the Word")
                var index = currentWord.word.indexOf(letter)
                console.log(index)
                wordOutputModel.insert(index, {"letter": letter})
            }else{
                //Player did not find letter
                console.log("NO Letter:" + letter + " is in the Word")
                hangManCounter++
                buildHangMan()
            }
            winCheck()
        }

        Rectangle{
            id: borderRec
            anchors.fill: parent
            color: "transparent"
            border.width: 0
            border.color: "white"

            Label{
                anchors.centerIn: parent
                text: letter
                font.pointSize: 10
                font.bold: true
                color: "white"
            }
        }
    }
    function winCheck(){
        if(wordOutputModel.count == wordCount){
            //Player has won
            console.log("Player won")
            swipeView.setCurrentIndex(2)
            winLossLabel.text = "WON"
            wordOutputModel.clear()
            listModelCount.clear()
        }else if(hangManCounter == 10){
            //Hang-Man is complete
            console.log("Player lost")
            swipeView.setCurrentIndex(2)
            winLossLabel.text = "LOST"
            winLossLabel.color = "#d23742"
            wordOutputModel.clear()
            listModelCount.clear()
        }
    }

    function buildHangMan(){
        if(hangManCounter == 1){
            rec1.visible = true
        }else if(hangManCounter == 2){
            rec2.visible = true
        }else if(hangManCounter == 3){
            rec3.visible = true
        }else if(hangManCounter == 4){
            rec4.visible = true
        }else if(hangManCounter == 5){
            rec5.visible = true
        }else if(hangManCounter == 6){
            rec6.visible = true
        }else if(hangManCounter == 7){
            rec7.visible = true
        }else if(hangManCounter == 8){
            rec8.visible = true
        }else if(hangManCounter == 9){
            rec9.visible = true
        }else if(hangManCounter == 10){
            rec10.visible = true
        }
    }
}
