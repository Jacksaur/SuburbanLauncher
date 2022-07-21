// main.qml
import QtQuick 2.0
import QtQuick.Layouts 1.0
import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.plasma.components 3.0 as PlasmaComponents3
import org.kde.plasma.plasmoid 2.0

Item {       //Seems everything must be within here

    PlasmaCore.DataSource {     //Copied from Command Output Widget. Allows use of exec() command to run Terminal commands. Finally something that works!
		id: executable
		engine: "executable"
		connectedSources: []
		onNewData: {
			var exitCode = data["exit code"]
			var exitStatus = data["exit status"]
			var stdout = data["stdout"]
			var stderr = data["stderr"]
			exited(sourceName, exitCode, exitStatus, stdout, stderr)
			disconnectSource(sourceName) // cmd finished
		}
		function exec(cmd) {
			if (cmd) {
				connectSource(cmd)
			}
		}
		signal exited(string cmd, int exitCode, int exitStatus, string stdout, string stderr)
	}

    id: widget
    Plasmoid.backgroundHints: "NoBackground"
    Plasmoid.fullRepresentation: RowLayout {      //RowLayout. Text buttons on left, followed by an invisible rectangle spacer, then a white rectangle for the line on the right.
        id: container

        ColumnLayout {              //nested ColumnLayout for the buttons
            spacing: 4
            Rectangle {              //Invisible Rectangle for spacing, increases the size of the ColumnLayout and makes the white line longer.
                height: 10
                color: "white"
            }
            Text {     //Text object for first button
                text: "Terminal"  //Button name here
                color: "white"
                font.pointSize: 21
                font.family:"MontSerrat"
                Layout.fillWidth: true     //Need this to Right Align the text. From what I understand, Text objects only take the size of the text entered into them. This command makes the object fill the whole area it has available, so Text.AlignRight will actually have somewhere to align the text against. Without it, nothing happens. As it'll right align against itself.
                horizontalAlignment: Text.AlignRight

                MouseArea {         //MouseArea to allow interactions with mouse
                    anchors.fill: parent
                    onClicked: executable.exec("konsole") //Command from the copied PlasmaCore.DataSource code above. This command will be executed as if it was ran through Terminal
                    hoverEnabled: true  //Needs to be on, or the MouseArea will ignore the mouse entirely if click isn't held
                    onEntered: {parent.font.bold = true} //Turns text bold on MouseOver, for aesthetics
                    onExited: {parent.font.bold = false}
                }
            }
            Text {              //All text objects from here follow the same format as above
                text: "Firefox" //Button name here
                color: "white"
                font.pointSize: 21
                font.family:"MontSerrat"
                Layout.fillWidth: true
                horizontalAlignment: Text.AlignRight

                MouseArea {
                    anchors.fill: parent
                    onClicked: executable.exec("firefox") //Terminal command here
                    hoverEnabled: true
                    onEntered: {parent.font.bold = true}
                    onExited: {parent.font.bold = false}
                }
            }
            Text {
                text: "Steam" //Button name here
                color: "white"
                font.pointSize: 21
                font.family:"MontSerrat"
                Layout.fillWidth: true
                horizontalAlignment: Text.AlignRight

                MouseArea {
                    anchors.fill: parent
                    onClicked: executable.exec("/usr/games/steam") //Terminal command here
                    hoverEnabled: true
                    onEntered: {parent.font.bold = true}
                    onExited: {parent.font.bold = false}
                }
            }
            Text {
                text: "VPN" //Button name here
                color: "white"
                font.pointSize: 21
                font.family:"MontSerrat"
                Layout.fillWidth: true
                horizontalAlignment: Text.AlignRight

                MouseArea {
                    anchors.fill: parent
                    onClicked: executable.exec("")
                    hoverEnabled: true
                    onEntered: {parent.font.bold = true}
                    onExited: {parent.font.bold = false}
                }
            }
            Text {
                text: "Plex" //Button name here
                color: "white"
                font.pointSize: 21
                font.family:"MontSerrat"
                Layout.fillWidth: true
                horizontalAlignment: Text.AlignRight

                MouseArea {
                    anchors.fill: parent
                    onClicked: executable.exec("~/tools/Plex.AppImage %U")  //Terminal command here
                    hoverEnabled: true
                    onEntered: {parent.font.bold = true}
                    onExited: {parent.font.bold = false}
                }
            }
            Text {
                text: "Server" //Button name here
                color: "white"
                font.pointSize: 21
                font.family:"MontSerrat"
                Layout.fillWidth: true
                horizontalAlignment: Text.AlignRight

                MouseArea {
                    anchors.fill: parent
                    onClicked: executable.exec("/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=anydesk com.anydesk.Anydesk")  //Terminal command here
                    hoverEnabled: true
                    onEntered: {parent.font.bold = true}
                    onExited: {parent.font.bold = false}
                }
            }
            Text {
                text: "Shutdown" //Button name here
                color: "white"
                font.pointSize: 21
                font.family:"MontSerrat"
                Layout.fillWidth: true
                horizontalAlignment: Text.AlignRight

                MouseArea {
                    anchors.fill: parent
                    onClicked: executable.exec("systemctl shutdown") //Terminal command here
                    hoverEnabled: true
                    onEntered: {parent.font.bold = true}
                    onExited: {parent.font.bold = false}
                }
            }

            Rectangle {     //Another invisible rectangle to extend the white line a little further.
                color: "white"
                height: 10
            }
        }
        Rectangle {       //We're back to the RowLayout now. This is an invisible rectangle to give some space between the right aligned text and the white line.
            color: "transparent"
            Layout.fillHeight: true
            width:3
        }
        Rectangle {      //Aesthetic white line.
            color: "white"
            Layout.fillHeight: true
            width: 1
        }
    }
}
