ESC::ExitApp

^s::
run cmd.exe
Winactivate ahk_class ConsoleWindowClass
sleep 100
SendInput  <path to interpreter> <path to zork file>
sleep 100
WinClose ahk_class ConsoleWindowClass
MouseMove, 458, 20
Click
send ^b
return

^b::
Loop
{
  FileReadLine, line, zork.txt, %A_Index%
  if ErrorLevel
      break
  send %line%{enter}
}
return
