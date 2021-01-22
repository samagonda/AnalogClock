import QtQuick 2.0

Item {
    signal secs()
    Timer
    {
        id:sec1

        interval: 1000; running: true; repeat: true
        onTriggered: {
            secs()
        }

    }

}
