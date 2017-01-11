; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a
; semicolon, such as this one, are comments.  They are not executed.

; This script has a special filename and path because it is automatically
; launched when you run the program directly.  Also, any text file whose
; name ends in .ahk is associated with the program, which means that it
; can be launched simply by double-clicking it.  You can have as many .ahk
; files as you want, located in any folder.  You can also run more than
; one ahk file simultaneously and each will get its own tray icon.

; SAMPLE HOTKEYS: Below are two sample hotkeys.  The first is Win+Z and it
; launches a web site in the default browser.  The second is Control+Alt+N
; and it launches a new Notepad window (or activates an existing one).  To
; try out these hotkeys, run AutoHotkey again, which will load this file.

;Mbutton::send !{down}


^!l::
; the above is cntrl alt l
;The below line won’t be correct on individual computers, only on FRONT, which is the only place it should be used
if FileExist("C:\Users\mkstud1\Desktop\desktop\AutoHotkey_mkstud1.ahk")
    FileRecycle, C:\Users\mkstud1\Desktop\desktop\AutoHotkey_mkstud1.ahk
    FileCopy, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_mkstud1.ahk, C:\Users\mkstud1\Desktop\desktop\AutoHotkey_mkstud1.ahk
FileCopy, C:\Users\mkstud1\Desktop\schuecal Training\feedback.xlsx, E:\1.xlsx
Sleep 100
;CHANGE PER COMP
FileRemoveDir, C:\Users\mkstud1\Desktop\schuecal Training,1 ; this deletes the folder and contents
Sleep 100
;if zero it would only delete if folder was empty
;CHANGE PER COMP, STUD 2 is e not f
FileCopyDir, E:\work\schuecal\schuecal training, C:\Users\mkstud1\Desktop\Schuecal Training
Sleep 49
FileRemoveDir, C:\ProgramData\Schueco\SchueCal\User,1
Sleep 500
;CHANGE PER COMP
FileCopyDir, C:\Users\mkstud1\Desktop\schuecal Training\USer, C:\ProgramData\Schueco\SchueCal\User
Sleep 500
FileRecycle, C:\ProgramData\Schueco\SchueCal\Workbench_G3.xml
Sleep 50
;CHANGE PER COMP FOR ALL OF THE BELOW!
FileCopy, C:\Users\mkstud1\Desktop\Schuecal Training\Workbench_G3.xml, C:\ProgramData\Schueco\SchueCal\Workbench_G3.xml
Sleep 100
FileRecycle, C:\Users\mkstud1\Desktop\*.doc
Sleep 50
FileRecycle, C:\Users\mkstud1\Desktop\*.docx
Sleep 50
FileRecycle, C:\Users\mkstud1\Desktop\*.dxf
Sleep 50
FileRecycle, C:\Users\mkstud1\Desktop\*.pdf
Sleep 50
FileRecycle, C:\Users\mkstud1\Desktop\*.txt
Sleep 50
FileRecycle, C:\Users\mkstud1\Desktop\*.xls
Sleep 50
FileRecycle, C:\Users\mkstud1\Desktop\*.xlsx
msgbox Finished
return

^!1::
; adds a SchueCal user profile from usb which has rates, glass defaults, prices, etc. 
; the above is cntrl alt 1
FileRemoveDir, C:\ProgramData\Schueco\SchueCal\User\Local,1
Sleep 1000
FileCopyDir, E:\Work\SchueCal\User configuration profiles\mypc\Local, C:\ProgramData\Schueco\SchueCal\User\Local1,1
Sleep 500
FileRecycle C:\ProgramData\Schueco\SchueCal\Workbench_G3.xml
Sleep 1000
FileCopy, E:\Work\SchueCal\User configuration profiles\mypc\Workbench_G3.xml, C:\ProgramData\Schueco\SchueCal\Workbench_G3.xml
msgbox Finished
return

^!0::
;create stud1
FileCopy, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_STUD124567.ahk, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_mkstud1.ahk
Sleep 50
;create stud2
fileread, thetext, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_STUD124567.ahk
stringreplace, newtext, thetext, mkstud1,mkstud2, All
sleep 50
FileAppend, %newtext%, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_mkstud2.ahk
sleep 50
;change feedback file name
fileread, thetext, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_mkstud2.ahk
stringreplace, newtext, thetext, 1.xlsx,2.xlsx,All
sleep 50
filedelete, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_mkstud2.ahk
FileAppend, %newtext%, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_mkstud2.ahk
;create stud4
fileread, thetext, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_STUD124567.ahk
stringreplace, newtext, thetext, mkstud1,mkstud4, All
sleep 50
FileAppend, %newtext%, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_mkstud4.ahk
sleep 50
;change feedback file name
fileread, thetext, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_mkstud4.ahk
stringreplace, newtext, thetext, 1.xlsx,4.xlsx,All
sleep 50
filedelete, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_mkstud4.ahk
FileAppend, %newtext%, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_mkstud4.ahk
;create stud5
fileread, thetext, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_STUD124567.ahk
stringreplace, newtext, thetext, mkstud1,mkstud5, All
sleep 50
FileAppend, %newtext%, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_mkstud4.ahk
sleep 50
;change feedback file name
fileread, thetext, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_mkstud5.ahk
stringreplace, newtext, thetext, 1.xlsx,5.xlsx,All
sleep 50
filedelete, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_mkstud5.ahk
FileAppend, %newtext%, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_mkstud5.ahk
;create stud6
fileread, thetext, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_STUD124567.ahk
stringreplace, newtext, thetext, mkstud1,mkstud6, All
sleep 50
FileAppend, %newtext%, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_mkstud6.ahk
sleep 50
;change feedback file name
fileread, thetext, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_mkstud6.ahk
stringreplace, newtext, thetext, 1.xlsx,6.xlsx,All
sleep 50
filedelete, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_mkstud6.ahk
sleep 50
FileAppend, %newtext%, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_mkstud6.ahk
;create stud7
fileread, thetext, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_STUD124567.ahk
stringreplace, newtext, thetext, mkstud1,mkstud7, All
sleep 50
FileAppend, %newtext%, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_mkstud7.ahk
sleep 50
;change feedback file name
fileread, thetext, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_mkstud7.ahk
stringreplace, newtext, thetext, 1.xlsx,7.xlsx,All
sleep 50
filedelete, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_mkstud7.ahk
FileAppend, %newtext%, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_mkstud7.ahk
;create stud3
fileread, thetext, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_STUD124567.ahk
stringreplace, newtext, thetext, mkstud1,mkstud3.SCHUECO, All
sleep 50
FileAppend, %newtext%, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_mkstud3.ahk
sleep 50
;change feedback file name
fileread, thetext, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_mkstud3.ahk
stringreplace, newtext, thetext, 1.xlsx,3.xlsx,All
sleep 50
filedelete, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_mkstud3.ahk
FileAppend, %newtext%, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_mkstud3.ahk
;create stud8
fileread, thetext, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_STUD124567.ahk
stringreplace, newtext, thetext, mkstud1,mkstud8.SCHUECO, All
sleep 50
FileAppend, %newtext%, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_mkstud8.ahk
sleep 50
;change feedback file name
fileread, thetext, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_mkstud8.ahk
stringreplace, newtext, thetext, 1.xlsx,8.xlsx,All
sleep 50
filedelete, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_mkstud8.ahk
FileAppend, %newtext%, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_mkstud8.ahk
;create FRONT
fileread, thetext, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_STUD124567.ahk
stringreplace, newtext, thetext, mkstud1,Training, All
sleep 50
FileAppend, %newtext%, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_FRONT.ahk
sleep 50
;change feedback file name
fileread, thetext, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_FRONT.ahk
stringreplace, newtext, thetext, 1.xlsx,FRONT.xlsx,All
sleep 50
filedelete, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_FRONT.ahk
FileAppend, %newtext%, E:\Work\SchueCal\itroomautohotkey\AutoHotkey_FRONT.ahk
msgbox Finished generating files
return

~LButton & L::
click 9
sleep 1000
	Send ^c!
   Sleep 200                      
run www.leo.org
sleep 2000
WinActivate dict.leo.org
Sleep 500
click 637,  403
sleep 1000
click 510, 229
sleep 1000
send ^v!
send {Enter}
return


^SPACE::  Winset, Alwaysontop, , A

; Note: From now on whenever you run AutoHotkey directly, this script
; will be loaded.  So feel free to customize it to suit your needs.

; Please read the QUICK-START TUTORIAL near the top of the help file.
; It explains how to perform common automation tasks such as sending
; keystrokes and mouse clicks.  It also explains more about hotkeys.

;if sth goes wrong after paste, put in a ! after the v e.g.: send ^v!
;to remove formatting do this
;clipboard = %clipsaved% ;remove formatting
;clipboard = %clipboard% ;remove formatting
;Clipwait, 1 ; wait 1 second max


	
;List of Keys, Mouse Buttons, and Joystick Controls
;Mouse (mouse hotkeys require Windows NT/2000/XP or later)
;LButton - the left mouse button 
;RButton - the right mouse button
;MButton - the middle or wheel mouse button

;WheelDown - this is equivalent to rotating the mouse wheel down (toward you)
;WheelUp - the opposite of the above
;WheelLeft and WheelRight [v1.0.48+] - these two require a mouse with left/right scrolling capability, but they have no ;effect on operating systems older than Windows Vista.
;(See mouse wheel hotkeys to detect how far the wheel has been turned.)

;Supported only in Windows 2000/XP or later:
;XButton1 - a button that appears only on certain mice 
;XButton2 - a button that appears only on certain mice

;Keyboard
;Note: The names of the letter and number keys are the same as that single letter or digit. For example: b is the "b" key ;and 5 is the "5" key.

;Space - the spacebar
;Tab
;Enter (or Return)
;Escape (or Esc)
;Backspace (or BS)

;Delete (or Del)
;Insert (or Ins)
;Home
;End
;PgUp
;PgDn
;Up
;Down
;Left
;Right

;ScrollLock
;CapsLock
;NumLock

;Numlock ON	Numlock OFF
;Numpad0	NumpadIns
;Numpad1	NumpadEnd
;Numpad2	NumpadDown
;Numpad3	NumpadPgDn
;Numpad4	NumpadLeft
;Numpad5	NumpadClear
;Numpad6	NumpadRight
;Numpad7	NumpadHome
;Numpad8	NumpadUp
;Numpad9	NumpadPgUp
;NumpadDot (.)	NumpadDel
;NumpadDiv (/)	NumpadDiv (/)
;NumpadMult (*)	NumpadMult (*)
;NumpadAdd (+)	NumpadAdd (+)
;NumpadSub (-)	NumpadSub (-)
;NumpadEnter	NumpadEnter

;F1 through F24 - The 12 or more function keys at the top of most keyboards.

;AppsKey - this is the key that invokes the right-click context menu.

;LWin - the left Windows logo key
;RWin - the right Windows logo key. Note: unlike Control/Alt/Shift, there is no generic/neutral "Win" key because the OS ;does not support it.
;Control (or Ctrl)
;Alt
;Shift
;Note: The hotkeys Shift::, Alt::, and Control:: fire upon release of the key unless they have the tilde prefix such as ;~Alt::. By contrast, a specific left or right hotkey such as LAlt:: fires when it is pressed down.

;Note: For the most part, these next 6 keys are not supported by Windows 95/98/Me. Use the above instead:
;LControl (or LCtrl) - the left control key 
;RControl (or RCtrl) - the right control key 
;LShift - the left shift key
;RShift - the right shift key
;LAlt - the left Alt key 
;RAlt - Note: If your keyboard layout has AltGr instead of RAlt, you can probably use it as a hotkey prefix via <^>! as ;described here. In addition, "LControl & RAlt::" would make AltGr itself into a hotkey.

;PrintScreen
;CtrlBreak
;Pause
;Break -- Since this is synonymous with Pause, use ^CtrlBreak in hotkeys instead of ^Pause or ^Break.

;Help - this probably doesn't exist on most keyboards. It's usually not the same as F1.
;Sleep - note that the sleep key on some keyboards might not work with this.

;The following exist only on Multimedia or Internet keyboards that have extra buttons or keys:
;Browser_Back
;Browser_Forward
;Browser_Refresh
;Browser_Stop
;Browser_Search
;Browser_Favorites
;Browser_Home
;Volume_Mute
;Volume_Down
;Volume_Up
;Media_Next
;Media_Prev
;Media_Stop
;Media_Play_Pause
;Launch_Mail
;Launch_Media
;Launch_App1
;Launch_App2

;SCnnn (where nnn is the scan code of a key) - Recognizes unusual keys not mentioned above. See Special Keys for details.

;VKnn (where nn is the hexadecimal virtual key code of a key) - This rarely-used method also prevents certain types of ;hotkeys from requiring the keyboard hook. For example, the following hotkey does not use the keyboard hook, but as a ;side-effect it is triggered by pressing either Home or NumpadHome: ^VK24::MsgBox You pressed Home or NumpadHome while ;holding down Control.
;Known limitation: VK hotkeys that are forced to use the keyboard hook, such as *VK24 or ~VK24, will fire for only one of ;the keys, not both (e.g. NumpadHome but not Home).
;For more information about the VKnn method, see Special Keys.

;Special Keys
;If your keyboard or mouse has a key not listed above, you might still be able to make it a hotkey by using the following ;steps (requires Windows XP/2000/NT or later):

;Ensure that at least one script is running that is using the keyboard hook. You can tell if a script has the keyboard ;hook by opening its main window and selecting "View->Key history" from the menu bar.
;Double-click that script's tray icon to open its main window.
;Press one of the "mystery keys" on your keyboard.
;Select the menu item "View->Key history"
;Scroll down to the bottom of the page. Somewhere near the bottom are the key-down and key-up events for your key. NOTE: ;Some keys do not generate events and thus will not be visible here. If this is the case, you cannot directly make that ;particular key a hotkey because your keyboard driver or hardware handles it at a level too low for AutoHotkey to access. ;For possible solutions, see further below.
;If your key is detectible, make a note of the 3-digit hexadecimal value in the second column of the list (e.g. 159).
;To define this key as a hotkey, follow this example:
;SC159:: ; Replace 159 with your key's value.
;MsgBox, %A_ThisHotKey% was pressed.
;return
;Reverse direction: To remap some other key to become a "mystery key", follow this example:

;; Replace 159 with the value discovered above. Replace FF (if needed) with the
;; key's virtual key, which can be discovered in the first column of the Key History screen.
;#c::Send {vkFFsc159}
;Alternate solutions: If your key or mouse button is not detectible by the Key History screen, one of the following might ;help:

;Reconfigure the software that came with your mouse or keyboard (sometimes accessible in the Control Panel or Start Menu) ;to have the "mystery key" send some other keystroke. Such a keystroke can then be defined as a hotkey in a script. For ;example, if you configure a mystery key to send Control+F1, you can then indirectly make that key as a hotkey by using ;^F1:: in a script.

;Try DllCall: Support for Human Interface Devices. You can also try searching the forum for a keyword like RawInput*.

;The following is a last resort and generally should be attempted only in desperation. This is because the chance of ;success is low and it may cause unwanted side-effects that are difficult to undo:
;Disable or remove any extra software that came with your keyboard or mouse or change its driver to a more standard one ;such as the one built into the OS. This assumes there is such a driver for your particular keyboard or mouse and that you ;can live without the features provided by its custom driver and software.

