!F1::
SetTitleMatchMode, 2
IfWinExist Sublime Text
WinActivate
return
 
!F2::
IfWinExist ahk_class VirtualConsoleClass
WinActivate
return
 
!F3::
IfWinExist ahk_class Chrome_WidgetWin_1
WinActivate
return
