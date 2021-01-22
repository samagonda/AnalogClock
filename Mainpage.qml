import QtQuick 2.0
import QtMultimedia 5.9
Rectangle {
    property real pos:0
    property real pos1:0
    property real pos2:0
    width:400
    height:400
    radius: 200

    function timecal()
    {
        pos+=6
        sec.rotation=pos
        tic.play()
        if(pos==360)
        {
            pos1+=6
            min.rotation=pos1
            if(pos1==360)
            {
            pos2+=6
//                tic.play()
            hr.rotation=pos2
                if(pos2==360)
                {
//                    tic.play()
                pos2=0
                }
                pos1=0
            }
            pos=0
        }
    }
    SoundEffect
    {
        id:tic
        source: "qrc:/Image/Tick-DeepFrozenApps-397275646.wav"
    }
    Image {
        id: clock
        anchors.fill: parent
        source: "qrc:/Image/blank_clock.jpg"
    }
    Image {
        id:hr
        width: 250
        rotation:30
        height: 270
        anchors.centerIn: parent
        source: "qrc:/Image/clock-hand-min.png"
    }
    Image {
        id:min
        width: 250
        rotation:0
        height: 350
        anchors.centerIn: parent
        source: "qrc:/Image/clock-hand-min.png"
    }
    Image {
        id:sec
        width: 200
        height: 400
        rotation:0
        anchors.centerIn: parent
        source: "qrc:/Image/clock-hand-min.png"

    }
    Connections
    {
        target: cal
        onSecs:{
         timecal()
        }
    }

    Timing_cal
    {
        id:cal
    }

}
