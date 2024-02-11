; Define the mouse buttons you want to use as the hotkeys
XButton1::SwitchDesktop("next")
XButton2::SwitchDesktop("previous")
NumpadAdd::NumpadAddAction()
NumpadSub::NumpadSubAction()
NumpadMult::MuteVolume()
Numpad4::PrevMedia()
Numpad5::PauseMedia()
Numpad6::NextMedia()

SwitchDesktop(direction) {
    if (direction = "next")
        Send, ^#{Right} ; Presses Ctrl + Windows key + Right Arrow to switch to the next desktop
    else if (direction = "previous")
        Send, ^#{Left} ; Presses Ctrl + Windows key + Left Arrow to switch to the previous desktop

    Sleep, 100 ; Adjust the delay (in milliseconds) as needed
}

MuteVolume() {
    Send {Volume_Mute}
}

NumpadAddAction() {
    Send {Volume_Up}
}
NumpadSubAction() {
    Send {Volume_Down}
}

PrevMedia() {
    Send {Media_Prev}
}
PauseMedia() {
    Send {Media_Play_Pause}
}
NextMedia() {
    Send {Media_Next}
}
