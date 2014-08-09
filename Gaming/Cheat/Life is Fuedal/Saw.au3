#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.12.0
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
#include <Misc.au3>

Local $alternate = False
Local $toggle = False

HotKeySet("z", "ToggleBot")

Func ToggleBot()
   If $toggle == True Then
	  $toggle = False
   Else
	  $toggle = True
	  RunBot()
   EndIf
EndFunc

Func RunBot()
   While $toggle
	  If $alternate == False Then
		 $alternate = true
		 Send("{LEFT}")
		 Sleep(10)
		 Send("{LEFT}")
	  Else
		 Send("{RIGHT}")
		 Sleep(10)
		 Send("{RIGHT}")
		 $alternate = false
	  EndIf

	  Sleep(100)

   WEnd
EndFunc

While 1
   Sleep(100)
WEnd





