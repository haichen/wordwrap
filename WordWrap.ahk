;
; AutoHotkey Version: 1.1.07.03
; Author:        Rainer Friebel 
;				 rainer.friebel@googlemail.com
;
; Script Function:
;	Template script (you can customize this template by editing "ShellNew\Template.ahk" in your Windows folder)
;
; Forum: http://www.autohotkey.com/community/viewtopic.php?f=2&t=xxx
;        http://de.autohotkey.com/forum/viewtopic.php?t=xxx
;
; Copyright (c) 2012 Rainer Friebel 
; Licence: MIT licence
; http://de.wikipedia.org/wiki/MIT-Lizenz
;


wordwrap(text, linelength=35){
 Array := Object()
 Loop, parse, text, %A_Space%, `n`r
  Array.Insert(A_LoopField)
  
 for key, val in Array
 {
  if out <> ""
   le := "`n"
  if key=1
   line := val 
  else if (!mod(StrLen(line),linelength) or (StrLen(line)=0))
  {  
   Out .= le line 
   line := val 
  }
  else if ((mod(StrLen(line),linelength )+ StrLen(val) +1 ) > linelength) 
  {
   out .= le line  
   line := val 
  }
  else        
   line .=  " " val 
 }
 return out
}