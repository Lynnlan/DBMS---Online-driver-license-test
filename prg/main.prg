SET TALK OFF 
SET SAFETY OFF 
SET STATUS OFF   
SET DELETED ON 
SET CENTURY ON 
SET DATE TO ANSI 
SET SYSMENU OFF   
CLOSE ALL 


SET CENTURY on
SET BELL off
SET STATUS BAR OFF
 
******************

PUBLIC mySys16,mypath
mySys16=SYS(16)      &&获取当前程序所在的全路径，包括当前运行程序名。
mypath=LEFT(mySys16,RAT("\",mySys16,2))   &&获取当前运行程序所在工作目录。
SET DEFAULT TO "&mypath"  &&设置默认工作目录
SET PROCEDURE TO menu/TOP_MENU.MPX

OPEN DATABASE data/tiku.dbc
_screen.Caption="RUC·驾考宝典"
DO FORM scx/welcome.scx
UPDATE user_info SET iii=.F.

READ EVENTS




&&CLEAR EVENTS
SET STATUS BAR ON
SET TALK ON
*!*	QUIT