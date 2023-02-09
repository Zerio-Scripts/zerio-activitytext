function ShowText(data)
    SendNUIMessage({
        action = "updatevisibility",
        value = true
    })
    SendNUIMessage({
        action = "updatedata",
        data = data
    })
end
exports("ShowText", ShowText)

function UpdateText(data)
    SendNUIMessage({
        action = "updatedata",
        data = data
    })
end
exports("UpdateText", UpdateText)

function HideText()
    SendNUIMessage({
        action = "updatevisibility",
        value = false
    })
end
exports("HideText", HideText)
