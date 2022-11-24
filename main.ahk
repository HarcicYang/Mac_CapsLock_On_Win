;允许CapsLock键不回到开启状态
SetStoreCapslockMode, Off
;检测CapsLock按下
$CapsLock::
	sleep, 20
    Loop
    {
	    state:=GetKeyState("CapsLock","P")
	    if(state=0) ;单击，切换输入法
	    {
            Send ^{Space}
            break
	    }
	    if(A_TimeSinceThisHotkey>450)
	    {
			if(A_TimeSinceThisHotkey<470) ;长按，切换大写锁定状态
			{
				Send {CapsLock}
				KeyWait, CapsLock
            	break
			}
            
	    }
    }

