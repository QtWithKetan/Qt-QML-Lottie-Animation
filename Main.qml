import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Window
import Qt.labs.lottieqt

Window {
    width: 640
    height: 480
    visible: true
    title: "Qt QML - Lottie Animation Demo"

    Rectangle
    {
        id:myrect
        width: 400
        height: 400
        border.color: "#FF0000"
        anchors.centerIn: parent
        LottieAnimation
        {
            id: lottieId
            anchors.centerIn: myrect
            source: "file:///C:/Users/Ketan/Documents/QtLottie/5-star-rating.json"
            loops: Animation.Infinite
            quality: LottieAnimation.HighQuality
            autoPlay: true
            onStatusChanged: {
                if (status === LottieAnimation.Ready) {
                    scale = Math.min(parent.height/height,parent.width/width)
                    frameRate = 100
                }
            }
        }
    }

    RowLayout
    {
        Button
        {
            width: 100
            height: 100
            text: "Play"
            onClicked:
            {
                lottieId.play()
            }
        }

        Button
        {
            width: 100
            height: 100
            text: "Stop"
            onClicked:
            {
                lottieId.stop()
            }
        }
        Button
        {
            width: 100
            height: 100
            text: "Pause"
            onClicked:
            {
                lottieId.pause()
            }
        }
    }
}
