import QtQuick 2.0
import QtQuick.Controls 2.3 as QtControls
import QtQuick.Layouts 1.0 as QtLayouts
import org.kde.kirigami 2.5 as Kirigami

Kirigami.FormLayout {

    anchors.left: parent.left
    anchors.right: parent.right

    QtLayouts.Layout.fillWidth: true

    Item {
        Kirigami.FormData.isSection: true
    }

    QtLayouts.RowLayout {
        QtLayouts.Layout.fillWidth: true

        Kirigami.FormData.label: i18n("Line 1:")

        QtControls.TextField{
            id: labelText
        }
    }

    QtLayouts.RowLayout {
        QtLayouts.Layout.fillWidth: true

        Kirigami.FormData.label: i18n("Command 1:")

        QtControls.TextField{
            id: command
        }

    }

}
