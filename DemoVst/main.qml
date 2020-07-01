import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.5

ApplicationWindow {
    visible: true
    width: 850
    height: 640
    title: qsTr("Demo Vst")

    property string presetLabelString: ""


   Row{

       Label{
           id:logoId
           text:"Trap Box"
           font.pixelSize: 22
           font.weight: Font.Bold

       }

       Text{
           id:presetLabelId
           text:""
           font.pixelSize: 22
           topPadding: 1
           leftPadding: 140

       }

   }





       Label{
           id:outputId
           text:"Output"
           font.pixelSize: 22
           topPadding: 1
           leftPadding: 520
       }

       Dial{
          id:outputDialId
          from:1
          to:100
          value:50
          width: 60
          topPadding: 900
          x: 520
          y:-390
          onValueChanged: {
              console.log("Current Value: " + Math.floor(value))
          }
       }




       Label{
           width:parent.width
           text:"Filter Mod"
           font.pointSize:13
           topPadding: 70
       }


// Attack & Decay

   Row{
     topPadding: 40
     spacing: 10
       Dial{
           id:dial1
           from:1
           to:100
           value:50
           width: 60
           onValueChanged: {
               console.log("Current Value: " + Math.floor(value))
           }
           Text {
               id: attackLabelId
               text:"atk"
               topPadding: 127
               leftPadding: 20
           }
       }


        Dial{
           id:dial2
           from:1
           to:100
           value:50
           width: 60
           onValueChanged: {
               console.log("Current Value: " + Math.floor(value))
           }
           Text {
               id: decayLabelId
               text: "dec"
               topPadding: 127
               leftPadding: 20
           }
         }

}

   Row{
      topPadding: 170
      spacing: 10
       Dial{
           id:dial3
           from:1
           to:100
           value:50
           width: 60
           onValueChanged: {
               console.log("Current Value: " + Math.floor(value))
           }
           Text {
               id: sustainLabelId
               text: "sus"
               topPadding: 130
               leftPadding: 20
           }
       }


       Dial{
           leftPadding: 200
           id:dial4
           from:1
           to:100
           value:50
           width: 60
           onValueChanged: {
               console.log("Current Value: " + Math.floor(value))
           }
           Text {
               id: releaseLabelId
               text: "rel"
               topPadding: 130
               leftPadding: 20
           }
       }
   }

   // Sustain & Release






   Row{
      anchors.centerIn: parent
      rightPadding: 250


       //Category
       Rectangle{
           id:listViewRecId
           width:100
           height: 450


           ListView{
               id:listViewId
               height: parent.height
               width: parent.width
               delegate: delegateId
               model:listModelId

               highlight: Rectangle {
                   width:parent.width
                   color:"#89cff0"
                   z:3
                   opacity: 0.1
               }
           }
       }


       //Preset
       Rectangle{
           width: 15
           height: 450

           ListView{
               id:listViewPresetId
               height: parent.height
               width: parent.width
               delegate: delegatePresetId
               model:presetModelId0

               highlight: Rectangle {
                   width:parent.width
                   color:"#89cff0"
                   z:3
                   opacity: 0.1
               }
           }
       }





   }



    ListModel{
        id:listModelId
        ListElement{category:"Appreggio"}
        ListElement{category:"Atmosphere"}
        ListElement{category:"Bass"}
        ListElement{category:"Bell"}
        ListElement{category:"Brass"}
        ListElement{category:"Chord"}
        ListElement{category:"Classical"}
        ListElement{category:"DrumLoop"}
        ListElement{category:"Drums"}
        ListElement{category:"Fx Sound"}
        ListElement{category:"Guitar"}
        ListElement{category:"Lead"}
        ListElement{category:"Orchestra"}
        ListElement{category:"Organ"}
        ListElement{category:"Pads"}
        ListElement{category:"Synth"}
        ListElement{category:"Vocal"}
        ListElement{category:"Woodwinds"}
        ListElement{category:"Trancegate"}
        ListElement{category:"Sequebce"}
        ListElement{category:"Reed"}
        ListElement{category:"Vocal/Choir"}
        ListElement{category:"Mallet"}

    }

    ListModel{
        id:presetModelId0
        ListElement{preset0:"Appreggio 1"}
        ListElement{preset0:"Appreggio 2"}
        ListElement{preset0:"Appreggio 3"}
        ListElement{preset0:"Appreggio 4"}
        ListElement{preset0:"Appreggio 1"}
        ListElement{preset0:"Appreggio 1"}
        ListElement{preset0:"Appreggio 1"}
        ListElement{preset0:"Appreggio 1"}
        ListElement{preset0:"Appreggio 1"}
        ListElement{preset0:"Appreggio 1"}
        ListElement{preset0:"Appreggio 1"}
        ListElement{preset0:"Appreggio 1"}
        ListElement{preset0:"Appreggio 1"}
        ListElement{preset0:"Appreggio 1"}
        ListElement{preset0:"Appreggio 1"}
        ListElement{preset0:"Appreggio 1"}
        ListElement{preset0:"Appreggio 1"}
        ListElement{preset0:"Appreggio 1"}
        ListElement{preset0:"Appreggio 1"}
        ListElement{preset0:"Appreggio 1"}
        ListElement{preset0:"Appreggio 3"}
        ListElement{preset0:"Appreggio 4"}
        ListElement{preset0:"Appreggio 1"}
        ListElement{preset0:"Appreggio 1"}
        ListElement{preset0:"Appreggio 1"}
        ListElement{preset0:"Appreggio 1"}
        ListElement{preset0:"Appreggio 1"}
        ListElement{preset0:"Appreggio 1"}
        ListElement{preset0:"Appreggio 1"}
        ListElement{preset0:"Appreggio 1"}
        ListElement{preset0:"Appreggio 1"}
        ListElement{preset0:"Appreggio 1"}
        ListElement{preset0:"Appreggio 1"}
        ListElement{preset0:"Appreggio 1"}
        ListElement{preset0:"Appreggio 1"}
        ListElement{preset0:"Appreggio 1"}
        ListElement{preset0:"Appreggio 1"}
        ListElement{preset0:"Appreggio 1"}
    }




    ListModel{
        id:presetModelId1
        ListElement{preset1:"Metro Boom "}
        ListElement{preset1:"Bap Bass"}
        ListElement{preset1:"Trap Bass"}
        ListElement{preset1:"Zing Bass"}
        ListElement{preset1:"Zaytoven Bass"}
        ListElement{preset1:"Timbo Bass"}
        ListElement{preset1:"Test 2"}
        ListElement{preset1:"Test 3"}
        ListElement{preset1:"Test 4"}
        ListElement{preset1:"Test 1"}
        ListElement{preset1:"Test 1"}
        ListElement{preset1:"Test 2"}
        ListElement{preset1:"Test 3"}
        ListElement{preset1:"Test 4"}
        ListElement{preset1:"Test 1"}
        ListElement{preset1:"Test 1"}
        ListElement{preset1:"Test 2"}
        ListElement{preset1:"Test 3"}
        ListElement{preset1:"Test 4"}
        ListElement{preset1:"Test 1"}
        ListElement{preset1:"Test 2"}
        ListElement{preset1:"Test 3"}
        ListElement{preset1:"Test 4"}
        ListElement{preset1:"Test 1"}
        ListElement{preset1:"Test 1"}
        ListElement{preset1:"Test 2"}
        ListElement{preset1:"Test 3"}
        ListElement{preset1:"Test 4"}
        ListElement{preset1:"Test 1"}
        ListElement{preset1:"Test 1"}
        ListElement{preset1:"Test 2"}
        ListElement{preset1:"Test 3"}
        ListElement{preset1:"Test 4"}
        ListElement{preset1:"Test 1"}

    }

    ListModel{
        id:presetModelId2
        ListElement{preset2:"Synth 11"}
        ListElement{preset2:"Synth 21"}
        ListElement{preset2:"Synth 31"}
        ListElement{preset2:"Synth 41"}
        ListElement{preset2:"Synth 5"}
        ListElement{preset2:"Synth 6"}
        ListElement{preset2:"Synth 1"}
        ListElement{preset2:"Synth 1"}
        ListElement{preset2:"Synth 1"}
        ListElement{preset2:"Synth 1"}
        ListElement{preset2:"Synth 1"}
        ListElement{preset2:"Appreggio 1"}
        ListElement{preset2:"Appreggio 1"}
        ListElement{preset2:"Appreggio 1"}
        ListElement{preset2:"Appreggio 1"}
        ListElement{preset2:"Appreggio 1"}
        ListElement{preset2:"Appreggio 1"}
        ListElement{preset:"Appreggio 1"}
        ListElement{preset2:"Appreggio 1"}
        ListElement{preset2:"Appreggio 1"}
        ListElement{preset2:"Appreggio 1"}
        ListElement{preset2:"Appreggio 1"}
        ListElement{preset2:"Appreggio 1"}
        ListElement{preset2:"Appreggio 1"}
        ListElement{preset2:"Appreggio 1"}
        ListElement{preset2:"Appreggio 1"}
        ListElement{preset:"Appreggio 1"}
        ListElement{preset2:"Appreggio 1"}
        ListElement{preset2:"Appreggio 1"}
    }

    ListModel{
        id:presetModelId3
        ListElement{preset3:"Appreggio 1 xx"}
        ListElement{preset3:"Appreggio 2 xx"}
        ListElement{preset3:"Appreggio 3"}
        ListElement{preset3:"Appreggio 4"}
        ListElement{preset3:"Appreggio 1"}
        ListElement{preset3:"Appreggio 1"}
        ListElement{preset3:"Appreggio 1"}
        ListElement{preset3:"Appreggio 1"}
        ListElement{preset3:"Appreggio 1"}
        ListElement{preset3:"Appreggio 1"}
        ListElement{preset3:"Appreggio 1"}
        ListElement{preset3:"Appreggio 1"}
        ListElement{preset3:"Appreggio 1"}
        ListElement{preset3:"Appreggio 1"}
        ListElement{preset3:"Appreggio 1"}
        ListElement{preset3:"Appreggio 1"}
        ListElement{preset3:"Appreggio 1"}
        ListElement{preset3:"Appreggio 1"}
        ListElement{preset3:"Appreggio 1"}
        ListElement{preset3:"Appreggio 1"}
        ListElement{preset3:"Appreggio 1"}
        ListElement{preset3:"Appreggio 1"}
        ListElement{preset3:"Appreggio 1"}
        ListElement{preset3:"Appreggio 1"}
        ListElement{preset3:"Appreggio 1"}
        ListElement{preset3:"Appreggio 1"}
        ListElement{preset3:"Appreggio 1"}
        ListElement{preset3:"Appreggio 1"}
        ListElement{preset3:"Appreggio 1"}
        ListElement{preset3:"Appreggio 1"}
        ListElement{preset3:"Appreggio 1"}
        ListElement{preset3:"Appreggio 1"}
        ListElement{preset3:"Appreggio 1"}
        ListElement{preset3:"Appreggio 1"}
    }



    Component{
        id:delegateId

        Rectangle{

            id:rectangleId
            width:100
            height:20
            color:"#3a4055"

            Text{
                id:textId
                leftPadding: 20
                font.pointSize: 8
                text: category
                color: "white"
                font.family: "Helvetica"



            }

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    listViewId.currentIndex =index
                    if(index === 0)
                    {

                      for(var i =0; i < presetModelId0.count; i++)
                      {

                         // presetModelId0.set(i,{"preset3":presetModelId3.get(i).preset3})
                          // console.log(presetModelId0.get(listViewId.currentIndex).preset0)

                      }



                    }

                    if(index === 1)
                    {

                      for(var j =0; j < presetModelId1.count; j++)
                      {
                         // presetModelId0.set(j,{"preset0":" "})
                          presetModelId0.set(j,{"preset0":presetModelId1.get(j).preset1})
                      }

                    }
                    if(index === 2)
                    {

                      for(var k =0; k < presetModelId2.count; k++)
                      {
                         // presetModelId0.set(k,{"preset0":" "})
                          presetModelId0.set(k,{"preset0":presetModelId2.get(k).preset2})
                      }

                    }

                    if(index === 3)
                    {

                      for(var l =0; l < presetModelId3.count; l++)
                      {

                          presetModelId0.set(l,{"preset0":presetModelId3.get(l).preset3})
                      }

                    }
                }
            }

        }
    }

    Component{
        id:delegatePresetId
        Rectangle{

            id:rectanglePresetId
            width:250
            height:20
            color:"#3a4055"


            Text{
                id:textPresetId
                leftPadding: 20
                font.pointSize: 8
                text: preset0
                color: "white"
                font.family: "Helvetica"
            }

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    listViewPresetId.currentIndex =index

                    // if listViewId current idex matches a index
                    // show the matching listModelId index object / "preset.."
                    if(listViewId.currentIndex ===0 )
                    {

                        presetLabelId.text = presetModelId0.get(listViewPresetId.currentIndex).preset0
                    }
                    if(listViewId.currentIndex ===1 )
                    {
                        presetLabelId.text = presetModelId1.get(listViewPresetId.currentIndex).preset1
                    }
                    if(listViewId.currentIndex ===2 )
                    {
                        presetLabelId.text = presetModelId2.get(listViewPresetId.currentIndex).preset2
                    }


                }
            }



        }
    }
}
