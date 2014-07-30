-- super duper

on super_duper_handler()
    tell application "TextEdit"
        activate
        make new document
        set text of front document to "Hello World"
    end tell
end super_duper_handler