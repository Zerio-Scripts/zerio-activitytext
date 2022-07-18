# Summary
This is an easy to use and beautiful way to display the current action that the player is either currently doing or has to do.
Perfect for missions, jobs and alot more. Only your imagination is the limit

**Preview: https://youtu.be/EnS5sALTJGI**




# Functions

## Starting the text
This will start to display an activity text with the passed through parameters.
You can remove any of the parameters if you for example dont want the icon, description or header etc.
```lua
exports["zerio-activitytext"]:ShowText({
    box = {
        background = ANY RGB / HEX COLOR,
        icon = ANY MATERIAL DESIGN ICON,
        text = TEXT NEXT TO THE ICON
    },
    time = TIME OF THIS HAPPENING,
    header = HEADER LEFT TO THE TIME,
    description = DESCRIPTION UNDER THE HEADER
})
```

## Updating the text
This will update the data for the current activity text
This function uses the exact same data as the ShowText export, hence why there isn't any example for the data
```lua
exports["zerio-activitytext"]:HideText(NEWDATA)
```

## Stopping the text
This hides / stops the activity text
```lua
exports["zerio-activitytext"]:HideText()
```





# EXAMPLES:
```lua
RegisterCommand("call", function()
    exports["zerio-activitytext"]:ShowText({
        box = {
            background = "#FF0C49",
            icon = "mdi-phone",
            text = "Phone"
        },
        time = "Just now",
        header = "Phone call",
        description = "John Doe is calling you"
    })
    Citizen.Wait(5000)
    exports["zerio-activitytext"]:HideText()
end)

RegisterCommand("mission", function()
    exports["zerio-activitytext"]:ShowText({
        box = {
            background = "#00E000",
            icon = "mdi-map",
            text = "Mission"
        },
        description = "Go to the position on your GPS"
    })
    Citizen.Wait(5000)
    exports["zerio-activitytext"]:HideText()
end)

RegisterCommand("handcuff", function()
    exports["zerio-activitytext"]:ShowText({
        box = {
            background = "#007FFF",
            icon = "mdi-handcuffs",
            text = "Handcuffs"
        },
        time = "Just now",
        description = "You are currently handcuffed which means you can't move"
    })
    Citizen.Wait(5000)
    exports["zerio-activitytext"]:HideText()
end)
```
