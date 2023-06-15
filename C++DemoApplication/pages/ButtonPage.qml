// Copyright (C) 2017 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR BSD-3-Clause

import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

ScrollablePage {
    id: page
    property int counter: 0

    Column {
        spacing: 40
        width: parent.width

        Label {
            width: parent.width
            wrapMode: Label.Wrap
            horizontalAlignment: Qt.AlignHCenter
            text: qsTr("Control the temperature by clicking on the corresponding button.")
        }

        ColumnLayout {
            spacing: 20
            anchors.horizontalCenter: parent.horizontalCenter

            Button {
                text: qsTr("Cold")
                Layout.fillWidth: true
                onClicked: {
                    counter -= 1;
                }
            }
            Button {
                text: qsTr("Warm")
                Layout.fillWidth: true
                onClicked: {
                    counter += 1;
                }
            }
        }
        Text {
            text: "Temperature: " + counter
        }
    }
}
