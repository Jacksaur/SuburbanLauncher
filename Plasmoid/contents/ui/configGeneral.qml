import QtQuick 2.0
import QtQuick.Controls 2.3 as QtControls
import QtQuick.Layouts 1.0 as QtLayouts
import org.kde.kirigami 2.5 as Kirigami

Kirigami.FormLayout {
    anchors.left: parent.left
    anchors.right: parent.right
    Item {
        Kirigami.FormData.isSection: true
    }

    property alias cfg_app1: entry1.text
    property alias cfg_app2: entry2.text
    property alias cfg_app3: entry3.text
    property alias cfg_app4: entry4.text
    property alias cfg_app5: entry5.text
    property alias cfg_app6: entry6.text
    property alias cfg_app7: entry7.text

    property alias cfg_com1: command1.text
    property alias cfg_com2: command2.text
    property alias cfg_com3: command3.text
    property alias cfg_com4: command4.text
    property alias cfg_com5: command5.text
    property alias cfg_com6: command6.text
    property alias cfg_com7: command7.text

    QtControls.TextField{
        Kirigami.FormData.label: "Entry 1:"
        id: entry1
    }

     QtControls.TextField{
        Kirigami.FormData.label: "Command 1:"
        id: command1
    }

    Item {
            Kirigami.FormData.isSection: true

    }

    QtControls.TextField{
        Kirigami.FormData.label: "Entry 2:"
        id: entry2
    }

    QtControls.TextField{
        Kirigami.FormData.label: "Command 2:"
        id: command2
    }

    Item {
            Kirigami.FormData.isSection: true

    }

    QtControls.TextField{
        Kirigami.FormData.label: "Entry 3:"
        id: entry3
    }
    QtControls.TextField{
        Kirigami.FormData.label: "Command 3:"
        id: command3
    }

    Item {
            Kirigami.FormData.isSection: true

    }

    QtControls.TextField{
        Kirigami.FormData.label: "Entry 4:"
        id: entry4
    }
    QtControls.TextField{
        Kirigami.FormData.label: "Command 4:"
        id: command4
    }

    Item {
            Kirigami.FormData.isSection: true

    }

    QtControls.TextField{
        Kirigami.FormData.label: "Entry 5:"
        id: entry5
    }
    QtControls.TextField{
        Kirigami.FormData.label: "Command 5:"
        id: command5
    }

    Item {
            Kirigami.FormData.isSection: true

    }
    QtControls.TextField{
        Kirigami.FormData.label: "Entry 6:"
        id: entry6
    }
    QtControls.TextField{
        Kirigami.FormData.label: "Command 6:"
        id: command6
    }

    Item {
            Kirigami.FormData.isSection: true

    }
    QtControls.TextField{
        Kirigami.FormData.label: "Entry 7:"
        id: entry7
    }

    QtControls.TextField{
        Kirigami.FormData.label: "Command 7:"
        id: command7
    }

    Item {
            Kirigami.FormData.isSection: true

    }
}
