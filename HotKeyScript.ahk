; first mouse button sends a number. I use for moving objects to same elevation
XButton1::
Send, {Backspace}211.00027820{Space}
return

; second mouse button sends 0,0,0
XButton2::
Send, 0,0,0{Space}
return

; sends the start of a header for abc files
^!\::
send, X:1{Return}T:{Return}C:{Return}C:{Return}S:{Return}L:1/8{Return}R:{Return}M:{Return}K:{Return}
return

;regular datestamp prefix
^d::
Send, %A_YYYY%-%A_MM%-%A_DD%-%A_Hour%%A_Min%_
return

;electrical datestamp prefix
^e::
Send, E-%A_YYYY%-%A_MM%-%A_DD%-%A_Hour%%A_Min%_
Return

;remap f1 key to esc
F1::ESC
return

;remap volume keys
Volume_Up::'
return

Volume_Down::"
return

Volume_Mute::!F4
return

; opens file explorer at the server
^!g::
Run explorer.exe "G:\"
return

;Lisp Template
!^'::
send,(defun c:(){Return}(command ){Return}(princ){Return}){Up}{Up}{Up}{Right}{Right}{Right}{Right}{Right}{Right}{Right}{Right}
return

; sends long date for changelog
^!d::
Send, ---{RETURN}+3+3 %A_dddd%, %A_MMMM% %A_dd%, %A_yyyy%
return

; sends long time for changelog
^#t::
Send, **%A_Hour%:%A_Min%**
return

; for making blocks with pasteblock command
!b::
send, erase{space} 
send, pasteblock{space}
send, @{Return}
return

; opens the stuff I like keeping open
^!o::
Run Notepad++
Run Chrome
Run explorer.exe "C:\Users\Ed Yother\Temp\Project Shortcuts"
Run explorer.exe "C:\Users\Ed Yother\Temp"
return

; adds stuff to my timesheet csv file
>^p::
send,{Space}Number,Project Name
return

; fills in revision info in titleblock properties
!r::
Send,01{Tab}FIRE DEPT COMMENTS{Tab}{Tab}EJY{Tab}10/22/19{Enter}
return

; remap scrollock key to '
ScrollLock::'
return

; opens my timesheet template excel file
^!t::
Run EXCEL.EXE "G:\General KJG\Time Sheets\Ed\Templates\TimesheetMath.xlsx"
return