﻿#SingleInstance, Force
#MaxThreadsPerHotkey 2
SetKeyDelay, -1
#Persistent
SetTitleMatchMode, 2 

GDIP_Startup()

;Console keybind
Console = F1

;Screen Resolution
Global RemoteSearchX = 1250
Global RemoteSearchY = 200
Global RemoteDropX = 1425
Global RemoteDropY = 200
Global RemoteTransferAllX = 1376
Global RemoteTransferAllY = 200
Global LocalSearchX = 287
Global LocalSearchY = 200
Global LocalTransferAllX = 355
Global LocalTransferAllY = 200
Global LocalDropX = 402
Global LocalDropY = 200
Global CraftX = 1246
Global CraftY = 281
Global LDelay = 300
Global SDelay = 100

;Display
Gui, -resize ;+alwaysontop
Gui, +LastFound
Gui, show, x0 y0, <Mai>
Gui, Add, Text, cbebebe x238 y135 vVersion, v3.7.3
Gui, font,bold
Gui, font


;PC or GForce
GForce:= New Flat_Round_Switch_Type_1(x := 5 , y := 7 , w := 85 , Text := "GForce" ,Font:="Arial",FontSize:= "12 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="141414",State:=0,Label:="GForce")


;AutoWalk
Gui, font,bold
Gui, Add, Text, cWhite x10 y30, RCtrl
Gui, font
Gui, Add, Text, cd2d2d2 x42 y30, Auto walk


;Console no Tre no Rocks
Gui, font,bold
Gui, Add, Text, cWhite x10 y50, F2
Gui, font
Gui, Add, Text, cbebebe x30 y50, Esp


;Magic F
MagicF:= New Flat_Round_Switch_Type_1(x := 5 , y := 67 , w := 110 , Text := "Magic F   F4" ,Font:="Arial",FontSize:= "12 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="141414",State:=0,Label:="MagicF")

Gui, font,bold
Gui, Add, Text, cbebebe x10 y150 vFMode, Choose the mode
Gui, font

MagicFOption:=[]
MagicFOption[1]:=New Flat_Round_Radio_Type_1(x := 5, y := 170, w := 54, Text:="Baby", Font:="Arial", FontSize:= "10 Bold", FontColor:="FFFFFF", Window:="1", Background_Color:="141414", HighLightColor:="A866E2", State:=0, GroupArray:=MagicFOption, Label:="MagicFMode")
MagicFOption[2]:=New Flat_Round_Radio_Type_1(x += 60, y := 170, w := 54, Text:="Berry", Font:="Arial", FontSize:= "10 Bold", FontColor:="FFFFFF", Window:="1", Background_Color:="141414", HighLightColor:="A866E2", State:=0, GroupArray:=MagicFOption, Label:="MagicFMode")
MagicFOption[3]:=New Flat_Round_Radio_Type_1(x += 60, y := 170, w := 54, Text:="Meat", Font:="Arial", FontSize:= "10 Bold", FontColor:="FFFFFF", Window:="1", Background_Color:="141414", HighLightColor:="A866E2", State:=0, GroupArray:=MagicFOption, Label:="MagicFMode")

;Baby mode 
Gui, font,bold
Gui, Add, Text, cbebebe x10 y200 vFBabyMode, Choose tipe of dino
Gui, font
BabyF:=[]
BabyF[1]:=New Flat_Round_Radio_Type_1(x := 5, y := 220, w := 50, Text:="Meat", Font:="Arial", FontSize:= "10 Bold", FontColor:="FFFFFF", Window:="1", Background_Color:="141414", HighLightColor:="A866E2", State:=1, GroupArray:=BabyF)
BabyF[2]:=New Flat_Round_Radio_Type_1(x += 60, y, w := 54, Text:="Berry", Font:="Arial", FontSize:= "10 Bold", FontColor:="FFFFFF", Window:="1", Background_Color:="141414", HighLightColor:="A866E2", State:=0, GroupArray:=BabyF)

;Berry mode
Gui, font,bold
Gui, Add, Text, cbebebe x10 y200 vBerryMode, Choose what you want to keep
Gui, font
Mejoberry:= New Flat_Round_Switch_Type_1(x := 5 , y := 220 , w := 100 , Text := "Mejoberry" ,Font:="Arial",FontSize:= "12 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="141414",State:=0,Label:="")
Narcoberry:= New Flat_Round_Switch_Type_1(x, y += 20 , w := 104 , Text := "Narcoberry" ,Font:="Arial",FontSize:= "12 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="141414",State:=0,Label:="")
Stimberry:= New Flat_Round_Switch_Type_1(x, y += 20 , w := 100 , Text := "Stimberry" ,Font:="Arial",FontSize:= "12 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="141414",State:=0,Label:="")
Tintoberry:= New Flat_Round_Switch_Type_1(x, y += 20 , w := 100 , Text := "Tintoberry" ,Font:="Arial",FontSize:= "12 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="141414",State:=0,Label:="")
Azulberry:= New Flat_Round_Switch_Type_1(x, y += 20 , w := 100 , Text := "Azulberry" ,Font:="Arial",FontSize:= "12 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="141414",State:=0,Label:="")
Amarberry:= New Flat_Round_Switch_Type_1(x := 110 , y := 220 , w := 100 , Text := "Amarberry" ,Font:="Arial",FontSize:= "12 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="141414",State:=0,Label:="")
Cianberry:= New Flat_Round_Switch_Type_1(x, y += 20 , w := 100 , Text := "Cianberry" ,Font:="Arial",FontSize:= "12 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="141414",State:=0,Label:="")
Magenberry:= New Flat_Round_Switch_Type_1(x, y += 20 , w := 108 , Text := "Magenberry" ,Font:="Arial",FontSize:= "12 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="141414",State:=0,Label:="")
Verdberry:= New Flat_Round_Switch_Type_1(x, y += 20 , w := 100 , Text := "Verdberry" ,Font:="Arial",FontSize:= "12 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="141414",State:=0,Label:="")
Fiber:= New Flat_Round_Switch_Type_1(x, y += 20 , w := 100 , Text := "Fiber" ,Font:="Arial",FontSize:= "12 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="141414",State:=0,Label:="")


;Meat mode
Gui, font,bold
Gui, Add, Text, cbebebe x10 y200 vMeatMode, Choose what you want to keep
Gui, font
Meat:= New Flat_Round_Switch_Type_1(x := 5 , y := 220 , w := 100 , Text := "Meat" ,Font:="Arial",FontSize:= "12 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="141414",State:=0,Label:="")
Prime:= New Flat_Round_Switch_Type_1(x, y += 20 , w := 104 , Text := "Prime" ,Font:="Arial",FontSize:= "12 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="141414",State:=0,Label:="")
Fish:= New Flat_Round_Switch_Type_1(x := 110, y := 220 , w := 100 , Text := "Fish" ,Font:="Arial",FontSize:= "12 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="141414",State:=0,Label:="")
Hide:= New Flat_Round_Switch_Type_1(x, y += 20 , w := 100 , Text := "Hide" ,Font:="Arial",FontSize:= "12 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="141414",State:=0,Label:="")


GuiControl, Hide, FMode
MagicFOption[1].HideSwitch()
MagicFOption[2].HideSwitch()
MagicFOption[3].HideSwitch()

GuiControl, Hide, FBabyMode
BabyF[1].HideSwitch()
BabyF[2].HideSwitch()

GuiControl, Hide, BerryMode
Mejoberry.HideSwitch()
Narcoberry.HideSwitch()
Stimberry.HideSwitch()
Tintoberry.HideSwitch()
Azulberry.HideSwitch()
Amarberry.HideSwitch()
Cianberry.HideSwitch()
Magenberry.HideSwitch()
Verdberry.HideSwitch()
Fiber.HideSwitch()

GuiControl, Hide, MeatMode
Meat.HideSwitch()
Prime.HideSwitch()
Fish.HideSwitch()
Hide.HideSwitch()


;Autoclicker
Gui, font,bold
Gui, Add, Text, cWhite x10 y90 , F5
Gui, font
Gui, Add, Text, cbebebe x30 y90 , Simple Autoclicker
Autoclicker:=[]
Autoclicker[1]:=New Flat_Round_Radio_Type_1(x:=128,y:=87,w:=48,Text:="Left",Font:="Arial",FontSize:= "10 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="141414",HighLightColor:="A866E2",State:=1,GroupArray:=Autoclicker)
Autoclicker[2]:=New Flat_Round_Radio_Type_1(x:=178,y:=87,w:=54,Text:="Right",Font:="Arial",FontSize:= "10 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="141414",HighLightColor:="A866E2",State:=0,GroupArray:=Autoclicker)
Autoclicker[3]:=New Flat_Round_Radio_Type_1(x:=235,y:=87,w:=54,Text:="C",Font:="Arial",FontSize:= "10 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="141414",HighLightColor:="A866E2",State:=0,GroupArray:=Autoclicker)


;Farming
Gui, font,bold
Gui, Add, Text, cWhite x10 y110, F6
Gui, font
Gui, Add, Text, cbebebe x30 y110, Farming
Farm:= New Flat_Round_Switch_Type_1(x := 75 , y := 110 , w := 62 , Text := "Sort" ,Font:="Arial",FontSize:= "12 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="141414",State:=0,Label:="FarmPlus")
FarmBot:= New Flat_Round_Switch_Type_1(x := 140 , y := 110 , w := 60 , Text := "Bot" ,Font:="Arial",FontSize:= "12 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="141414",State:=0,Label:="")


;Afk Gforce;
;AfkMode:= New Flat_Round_Switch_Type_1(x := 178 , y := 7 , w := 100 , Text := "Afk Mode" ,Font:="Arial",FontSize:= "12 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="141414",State:=;0,Label:="AfkModeF")
;AfkMode.HideSwitch()


;Farm++
Gui, font,bold
Gui, Add, Text, cbebebe x10 y150 vFarmPlus, Choose what you want to keep
Gui, font
Global Metal:= New Flat_Round_Switch_Type_1(x := 5 , y := 170 , w := 75 , Text := "Metal" ,Font:="Arial",FontSize:= "12 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="141414",State:=0,Label:="")
Global Obsidian:= New Flat_Round_Switch_Type_1(x := 5 , y += 20 , w := 90 , Text := "Obsidian" ,Font:="Arial",FontSize:= "12 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="141414",State:=0,Label:="")
Global Flint:= New Flat_Round_Switch_Type_1(x := 5 , y += 20 , w := 75 , Text := "Flint" ,Font:="Arial",FontSize:= "12 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="141414",State:=0,Label:="")
Global Stone:= New Flat_Round_Switch_Type_1(x := 5 , y += 20 , w := 75 , Text := "Stone" ,Font:="Arial",FontSize:= "12 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="141414",State:=0,Label:="")
Global Crystal:= New Flat_Round_Switch_Type_1(x := 5 , y += 20 , w := 85 , Text := "Crystal" ,Font:="Arial",FontSize:= "12 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="141414",State:=0,Label:="")
Global Berry:= New Flat_Round_Switch_Type_1(x := 5 , y += 20 , w := 75 , Text := "Berry" ,Font:="Arial",FontSize:= "12 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="141414",State:=0,Label:="")
Global Wood:= New Flat_Round_Switch_Type_1(x := 110 , y := 170 , w := 75 , Text := "Wood" ,Font:="Arial",FontSize:= "12 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="141414",State:=0,Label:="")
Global Thatch:= New Flat_Round_Switch_Type_1(x := 110 , y += 20 , w := 78 , Text := "Thatch" ,Font:="Arial",FontSize:= "12 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="141414",State:=0,Label:="")
Global Rare:= New Flat_Round_Switch_Type_1(x := 110 , y += 20 , w := 75 , Text := "Rare" ,Font:="Arial",FontSize:= "12 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="141414",State:=0,Label:="")
Global Seed:= New Flat_Round_Switch_Type_1(x := 110 , y += 20 , w := 75 , Text := "Seed" ,Font:="Arial",FontSize:= "12 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="141414",State:=0,Label:="")
Global Oil:= New Flat_Round_Switch_Type_1(x := 110 , y += 20 , w := 75 , Text := "Oil" ,Font:="Arial",FontSize:= "12 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="141414",State:=0,Label:="")

GuiControl, Hide, FarmPlus	
Metal.HideSwitch()
Obsidian.HideSwitch()
Flint.HideSwitch()
Stone.HideSwitch()
Crystal.HideSwitch()
Oil.HideSwitch()
Wood.HideSwitch()
Thatch.HideSwitch()
Rare.HideSwitch()
Seed.HideSwitch()
Berry.HideSwitch()


;Gui
Gui, Show, w275 h150,<GG Mai> All in One
Gui, Color, 141414
Gui, Submit, NoHide
WinActivate, %ActiveWinID%


;Pixel Color
InventoryPixel()
{
    Loop
    {
        PixelGetColor, Color, 329, 163
        Sleep, 50
        if (Color = 0xFFFFFF)
        {
            break 
        }
    }
}

;Sort
Sort()
{
	sleep LDelay
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	Send {Click}
	Send {Click}
	Send, sto
	sleep SDelay
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	Send {Click}

	sleep LDelay
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	Send {Click}
	Send {Click}
	Send, berry
	sleep SDelay
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	Send {Click}

	sleep LDelay
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	Send {Click}
	Send {Click}
	Send, obsi
	sleep SDelay
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	Send {Click}

	sleep LDelay
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	Send {Click}
	Send {Click}
	Send, flint
	sleep SDelay
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	Send {Click}

	sleep SDelay
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	Send {Click}
	Send {Click}
	Send, w
	sleep SDelay
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	Send {Click}

	sleep SDelay
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	Send {Click}
	Send {Click}
	Send, h
	sleep SDelay
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	Send {Click}

	sleep SDelay
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	Send {Click}
	Send {Click}
	Send, rare
	sleep SDelay
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	Send {Click}

	sleep SDelay
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	Send {Click}
	Send {Click}
	Send, crys
	sleep SDelay
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	Send {Click}

	sleep SDelay
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	Send {Click}
	Send {Click}
	Send, oil
	sleep SDelay
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	Send {Click}

	Send {Esc}
}

;Sort++
SortC()
{
	if(Stone.State=0)
	{
		sleep LDelay
		MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
		MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
		Send {Click}
		Send {Click}
		Send, Stone
		sleep SDelay
		MouseMove, %RemoteDropX%, %RemoteDropY%, 1
		MouseMove, %RemoteDropX%, %RemoteDropY%, 1
		sleep SDelay
		Send {Click}
	}
	if(Flint.State=0)
	{
		sleep SDelay
		MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
		MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
		Send {Click}
		Send {Click}
		Send, Flint
		sleep SDelay
		MouseMove, %RemoteDropX%, %RemoteDropY%, 1
		MouseMove, %RemoteDropX%, %RemoteDropY%, 1
		sleep SDelay
		Send {Click}
	}
	if(Wood.State=0)
	{
		sleep SDelay
		MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
		MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
		Send {Click}
		Send {Click}
		Send, Wood
		sleep SDelay
		MouseMove, %RemoteDropX%, %RemoteDropY%, 1
		MouseMove, %RemoteDropX%, %RemoteDropY%, 1
		sleep SDelay
		Send {Click}
	}
	if(Thatch.State=0)
		{
		sleep SDelay
		MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
		MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
		Send {Click}
		Send {Click}
		Send, Thatch
		sleep SDelay
		MouseMove, %RemoteDropX%, %RemoteDropY%, 1
		MouseMove, %RemoteDropX%, %RemoteDropY%, 1
		sleep SDelay
		Send {Click}
	}
	if(Rare.State=0)
	{
		sleep SDelay
		MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
		MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
		Send {Click}
		Send {Click}
		Send, Rare
		sleep SDelay
		MouseMove, %RemoteDropX%, %RemoteDropY%, 1
		MouseMove, %RemoteDropX%, %RemoteDropY%, 1
		sleep SDelay
		Send {Click}
	}
	if(Seed.State=0)
	{
		sleep SDelay
		MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
		MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
		Send {Click}
		Send {Click}
		Send, Seed
		sleep SDelay
		MouseMove, %RemoteDropX%, %RemoteDropY%, 1
		MouseMove, %RemoteDropX%, %RemoteDropY%, 1
		sleep SDelay
		Send {Click}
	}
	if(Oil.State=0)
	{
		sleep SDelay
		MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
		MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
		Send {Click}
		Send {Click}
		Send, Oil
		sleep SDelay
		MouseMove, %RemoteDropX%, %RemoteDropY%, 1
		MouseMove, %RemoteDropX%, %RemoteDropY%, 1
		sleep SDelay
		Send {Click}
	}
	if(Crystal.State=0)
	{
		sleep SDelay
		MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
		MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
		Send {Click}
		Send {Click}
		Send, Crystal
		sleep SDelay
		MouseMove, %RemoteDropX%, %RemoteDropY%, 1
		MouseMove, %RemoteDropX%, %RemoteDropY%, 1
		sleep SDelay
		Send {Click}
	}
	if(Metal.State=0)
	{
		sleep SDelay
		MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
		MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
		Send {Click}
		Send {Click}
		Send, Metal
		sleep SDelay
		MouseMove, %RemoteDropX%, %RemoteDropY%, 1
		MouseMove, %RemoteDropX%, %RemoteDropY%, 1
		sleep SDelay
		Send {Click}
	}
	if(Berry.State=0)
	{
		sleep LDelay
		MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
		MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
		Send {Click}
		Send {Click}
		Send, Berry
		sleep SDelay
		MouseMove, %RemoteDropX%, %RemoteDropY%, 1
		MouseMove, %RemoteDropX%, %RemoteDropY%, 1
		sleep SDelay
		Send {Click}
	}

	Send {Esc}
}


;######################################################################################################################################
;######################################################################################################################################
;######################################################################################################################################
;######################################################################################################################################


;Esp
F2:: 
espToggle := !espToggle

if espToggle
	{
		Send, {%Console%}
	    Send, r.Nanite.ProxyRenderMode -1 | r.Nanite 0 {Enter}
	}
else
	{
		Send, {%Console%}
	    Send,  r.Nanite 1 {Enter}

		Send, {%Console%}
		Send,  r.Nanite.ProxyRenderMode 0 {Enter}
	}
return


;Magic F
F4::
MagicF.Switch_State()
return


;Clicker
F5::
cToggle := !cToggle
Gui, Submit, NoHide
loop
	{
	    If not cToggle
	        break
			if(GForce.State=1)
				{
				if(Autoclicker[1].State=1)
					{
					Sleep SDelay
					Send {Click Left}
					Send {Click Left}	
					}
				if(Autoclicker[2].State=1)
					{
					Sleep SDelay
					Send {Click Right}
					Send {Click Right}
					}
				if(Autoclicker[3].State=1)
					{
					Sleep SDelay
					Send, c
					Send, c
					}
				}
			else
				{
				if(Autoclicker[1].State=1)
					{
					Sleep SDelay
					ControlClick, x0 y0, ArkAscended,, Left,,
					ControlClick, x0 y0, ArkAscended,, Left,,
					}
				if(Autoclicker[2].State=1)
					{
					Sleep SDelay
					ControlClick, x0 y0, ArkAscended,, Right,,
					ControlClick, x0 y0, ArkAscended,, Right,,
					}
				if(Autoclicker[3].State=1)
					{
					Sleep SDelay
					ControlSend,, c, ArkAscended
					ControlSend,, c, ArkAscended
					}
				}
	}
return


;Farming
F6::
if(MagicF.State = 1)
	{
		MagicF.Switch_State()
	}

cfToggle := !cfToggle
loop
	{
	    If not cfToggle
	        break

			if(FarmBot.State = 1)
			{
				loop 50
				{
					loop 40
					{
						if(GForce.State = 1)
						{
						Sleep 600
						Send {Click}
						Send {Click}
						}
						else
						{
						Sleep 600
						ControlClick, x0 y0, ArkAscended,, %Button%,,
						ControlClick, x0 y0, ArkAscended,, %Button%,,
						}

						If not cfToggle
							break
					}

					if(cfToggle)
					{	
					Send {f}
					;Farm
						if(!cfarmToggle)
						{
							InventoryPixel()
							Sort()
						}
					
					;Farm++
						if(cfarmToggle)
						{
							Gui, Submit, NoHide
							InventoryPixel()
							SortC()
						}
						If not cfToggle
							break
					}
					If not cfToggle
						break
				}

				Sleep LDelay
				Send {1}

				Sleep SDelay
				Send {2}

				Sleep SDelay
				Send {3}
				
			}
			else
			{
				if(GForce.State=1)
				{
				Sleep SDelay
				Send {Click}
				Send {Click}
				}
				else
				{
				Sleep SDelay
				ControlClick, x0 y0, ArkAscended,, %Button%,,
				ControlClick, x0 y0, ArkAscended,, %Button%,,
				}
			}
	}
return


~f::
if(cfToggle)
{	
;Farm
	if(!cfarmToggle)
	{
		InventoryPixel()
		Sort()
	}

;Farm++
	if(cfarmToggle)
	{
		Gui, Submit, NoHide
		InventoryPixel()
		SortC()
	}

}

if(MagicFToggle)
{
	Gui, Submit, NoHide
	if(MagicFOption[1].State = 1)
	{
		if(BabyF[1].State = 1)
		{
			InventoryPixel()
			sleep LDelay
			MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
			MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
			Send {Click}
			Send, Spoil
			sleep SDelay
			MouseMove, %RemoteTransferAllX%, %RemoteTransferAllY%, 1
			MouseMove, %RemoteTransferAllX%, %RemoteTransferAllY%, 1
			Send {Click}
			sleep SDelay
			MouseMove, %LocalSearchX%, %LocalSearchY%, 1
			MouseMove, %LocalSearchX%, %LocalSearchY%, 1
			Send {Click}
			Send, Raw
			sleep SDelay
			MouseMove, %LocalTransferAllX%, %LocalTransferAllY%, 1
			MouseMove, %LocalTransferAllX%, %LocalTransferAllY%, 1
			Send {Click}
		}
		if(BabyF[2].State = 1)
		{
						InventoryPixel()
			sleep LDelay
			MouseMove, %LocalSearchX%, %LocalSearchY%, 1
			MouseMove, %LocalSearchX%, %LocalSearchY%, 1
			Send {Click}
			Send, Mejo
			sleep SDelay
			MouseMove, %LocalTransferAllX%, %LocalTransferAllY%, 1
			MouseMove, %LocalTransferAllX%, %LocalTransferAllY%, 1
			Send {Click}
		}

		Send {Esc}
	}
	
	if(MagicFOption[2].State = 1)
	{
		InventoryPixel()

		sleep LDelay
		MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
		MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
		Send {Click}
		Send, Seed
		sleep SDelay
		MouseMove, %RemoteDropX%, %RemoteDropY%, 1
		MouseMove, %RemoteDropX%, %RemoteDropY%, 1
		Send {Click}

		if(Mejoberry.State = 0)
		{
			sleep LDelay
			MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
			MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
			Send {Click}
			Send {Click}
			Send, Mejo
			sleep SDelay
			MouseMove, %RemoteDropX%, %RemoteDropY%, 1
			MouseMove, %RemoteDropX%, %RemoteDropY%, 1
			Send {Click}
		}
		if(Narcoberry.State = 0)
		{
			sleep SDelay
			MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
			MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
			Send {Click}
			Send {Click}
			Send, Narco
			sleep SDelay
			MouseMove, %RemoteDropX%, %RemoteDropY%, 1
			MouseMove, %RemoteDropX%, %RemoteDropY%, 1
			Send {Click}
		}
		if(Stimberry.State = 0)
		{
			sleep SDelay
			MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
			MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
			Send {Click}
			Send {Click}
			Send, Stim
			sleep SDelay
			MouseMove, %RemoteDropX%, %RemoteDropY%, 1
			MouseMove, %RemoteDropX%, %RemoteDropY%, 1
			Send {Click}
		}
		if(Tintoberry.State =0)
		{
			sleep SDelay
			MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
			MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
			Send {Click}
			Send {Click}
			Send, Tinto
			sleep SDelay
			MouseMove, %RemoteDropX%, %RemoteDropY%, 1
			MouseMove, %RemoteDropX%, %RemoteDropY%, 1
			Send {Click}
		}
		if(Azulberry.State = 0)
		{
			sleep SDelay
			MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
			MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
			Send {Click}
			Send {Click}
			Send, Azul
			sleep SDelay
			MouseMove, %RemoteDropX%, %RemoteDropY%, 1
			MouseMove, %RemoteDropX%, %RemoteDropY%, 1
			Send {Click}
		}
		if(Amarberry.State = 0)
		{
			sleep SDelay
			MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
			MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
			Send {Click}
			Send {Click}
			Send, Amar
			sleep SDelay
			MouseMove, %RemoteDropX%, %RemoteDropY%, 1
			MouseMove, %RemoteDropX%, %RemoteDropY%, 1
			Send {Click}
		}
		if(Cianberry.State = 0)
		{
			sleep SDelay
			MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
			MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
			Send {Click}
			Send {Click}
			Send, Cian
			sleep SDelay
			MouseMove, %RemoteDropX%, %RemoteDropY%, 1
			MouseMove, %RemoteDropX%, %RemoteDropY%, 1
			Send {Click}
		}
		if(Magenberry.State = 0)
		{
			sleep SDelay
			MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
			MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
			Send {Click}
			Send {Click}
			Send, Magen
			sleep SDelay
			MouseMove, %RemoteDropX%, %RemoteDropY%, 1
			MouseMove, %RemoteDropX%, %RemoteDropY%, 1
			Send {Click}
		}
		if(Verdberry.State = 0)
		{
			sleep SDelay
			MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
			MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
			Send {Click}
			Send {Click}
			Send, Verd
			sleep SDelay
			MouseMove, %RemoteDropX%, %RemoteDropY%, 1
			MouseMove, %RemoteDropX%, %RemoteDropY%, 1
			Send {Click}
		}
		if(Fiber.State = 0)
		{
			sleep SDelay
			MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
			MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
			Send {Click}
			Send {Click}
			Send, Fiber
			sleep SDelay
			MouseMove, %RemoteDropX%, %RemoteDropY%, 1
			MouseMove, %RemoteDropX%, %RemoteDropY%, 1
			Send {Click}
		}
		Send {Esc}
	}

	if(MagicFOption[3].State = 1)
	{
		if(Prime.State = 1)
		{
			sleep LDelay
			MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
			MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
			Send {Click}
			Send, Prime
			sleep SDelay
			MouseMove, %RemoteTransferAllX%, %RemoteTransferAllY%, 1
			MouseMove, %RemoteTransferAllX%, %RemoteTransferAllY%, 1
			Send {Click}
		}

		if(Prime.State = 0)
		{
			sleep LDelay
			MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
			MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
			Send {Click}
			Send, Prime
			sleep SDelay
			MouseMove, %RemoteDropX%, %RemoteDropY%, 1
			MouseMove, %RemoteDropX%, %RemoteDropY%, 1
			Send {Click}
		}

		if(Fish.State = 0)
		{
			sleep LDelay
			MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
			MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
			Send {Click}
			Send, Fish
			sleep SDelay
			MouseMove, %RemoteDropX%, %RemoteDropY%, 1
			MouseMove, %RemoteDropX%, %RemoteDropY%, 1
			Send {Click}
		}

		if(Fish.State = 1)
		{
			sleep SDelay
			MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
			MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
			Send {Click}
			Send, Fish
			sleep SDelay
			MouseMove, %RemoteTransferAllX%, %RemoteTransferAllY%, 1
			MouseMove, %RemoteTransferAllX%, %RemoteTransferAllY%, 1
			Send {Click}
		}

		if(Hide.State = 1)
		{
			sleep SDelay
			MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
			MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
			Send {Click}
			Send, Hide
			sleep SDelay
			MouseMove, %RemoteTransferAllX%, %RemoteTransferAllY%, 1
			MouseMove, %RemoteTransferAllX%, %RemoteTransferAllY%, 1
			Send {Click}
		}

		if(Meat.State = 1)
		{
			sleep SDelay
			MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
			MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
			Send {Click}
			Send, Meat
			sleep SDelay
			MouseMove, %RemoteTransferAllX%, %RemoteTransferAllY%, 1
			MouseMove, %RemoteTransferAllX%, %RemoteTransferAllY%, 1
			Send {Click}
		}

		sleep SDelay
		MouseMove, %RemoteDropX%, %RemoteDropY%, 1
		MouseMove, %RemoteDropX%, %RemoteDropY%, 1
		Send {Click}
		Send {Esc}
	}
}
return

;Autorun
~RCtrl::
loop
{
	ControlSend,, {w down}, ArkAscended
	GetKeyState, state, w, P
	if(state = U)
		ControlSend,, {w up}, ArkAscended
		break
}
return


FarmPlus:
cfarmToggle := !cfarmToggle
if(cfarmToggle)
{
	if(MagicF.State = 1)
	{
		MagicF.Switch_State()
	}

	Gui, Show, h310, <GG Mai>
	GuiControl, Move, Version, y295
	GuiControl, Show, FarmPlus	
	Metal.ShowSwitch()
	Obsidian.ShowSwitch()
	Flint.ShowSwitch()
	Stone.ShowSwitch()
	Crystal.ShowSwitch()
	Oil.ShowSwitch()
	Wood.ShowSwitch()
	Thatch.ShowSwitch()
	Rare.ShowSwitch()
	Seed.ShowSwitch()
	Berry.ShowSwitch()
}
if(!cfarmToggle)
{
	Gui, show, h150, <GG Mai>
	GuiControl, Move, Version, y135
	GuiControl, Hide, FarmPlus	
	Metal.HideSwitch()
	Obsidian.HideSwitch()
	Flint.HideSwitch()
	Stone.HideSwitch()
	Crystal.HideSwitch()
	Oil.HideSwitch()
	Wood.HideSwitch()
	Thatch.HideSwitch()
	Rare.HideSwitch()
	Seed.HideSwitch()
	Berry.HideSwitch()
}
return


GForce:
GForceToggle := !GForceToggle
if(GForceToggle)
{
	if(cfarmToggle)
	{
		AfkMode.ShowSwitch()
	}
	else
	{
		AfkMode.ShowSwitch()
	}
}
if(!GForceToggle)
{
	if(cfarmToggle)
	{
		AfkMode.HideSwitch()
	}
	else
	{
		AfkMode.HideSwitch()
	}
}
return


MagicF:
MagicFToggle := !MagicFToggle
if(MagicFToggle)
{
	if(Farm.State = 1)
	{
		Farm.Switch_State()
	}
	if(cfToggle = 1)
	{
		cfToggle := !cfToggle
	}

	Gui, Show, h210, <GG Mai> 
	GuiControl, Move, Version, y195
	GuiControl, Show, FMode	
	MagicFOption[1].ShowSwitch()
	MagicFOption[2].ShowSwitch()
	MagicFOption[3].ShowSwitch()

	if(MagicFOption[1].State = 1)
	{
		Gui, Show, h260, <GG Mai> 
		GuiControl, Move, Version, y245
		GuiControl, Show, FBabyMode
		BabyF[1].ShowSwitch()
		BabyF[2].ShowSwitch()
	}

	if(MagicFOption[2].State = 1)
	{
		Gui, Show, h340, <GG Mai> 
		GuiControl, Move, Version, y325
		GuiControl, Show, BerryMode
		Mejoberry.ShowSwitch()
		Narcoberry.ShowSwitch()
		Stimberry.ShowSwitch()
		Tintoberry.ShowSwitch()
		Azulberry.ShowSwitch()
		Amarberry.ShowSwitch()
		Cianberry.ShowSwitch()
		Magenberry.ShowSwitch()
		Verdberry.ShowSwitch()
		Fiber.ShowSwitch()
	}

	if(MagicFOption[3].State = 1)
	{
		Gui, Show, h280, <GG Mai> 
		GuiControl, Move, Version, y265
		GuiControl, Show, MeatMode
		Meat.ShowSwitch()
		Prime.ShowSwitch()
		Fish.ShowSwitch()
		Hide.ShowSwitch()
	}
}

if(!MagicFToggle)
{
	;MagicFOption[1].State_0()
	;MagicFOption[2].State_0()
	;MagicFOption[3].State_0()

	MagicFOption[1].HideSwitch()
	MagicFOption[2].HideSwitch()
	MagicFOption[3].HideSwitch()

	Gui, show, h150, <GG Mai>
	GuiControl, Move, Version, y135
	GuiControl, Hide, FMode
}
return


MagicFMode:
if(MagicFOption[1].State = 1)
{
	Gui, Show, h260, <GG Mai> 
	GuiControl, Move, Version, y245
	GuiControl, Show, FBabyMode
	BabyF[1].ShowSwitch()
	BabyF[2].ShowSwitch()
}
if(MagicFOption[1].State = 0)
{
	GuiControl, Hide, FBabyMode
	BabyF[1].HideSwitch()
	BabyF[2].HideSwitch()
}

if(MagicFOption[2].State = 1)
{
	Gui, Show, h340, <GG Mai> 
	GuiControl, Move, Version, y325
	GuiControl, Show, BerryMode
	Mejoberry.ShowSwitch()
	Narcoberry.ShowSwitch()
	Stimberry.ShowSwitch()
	Tintoberry.ShowSwitch()
	Azulberry.ShowSwitch()
	Amarberry.ShowSwitch()
	Cianberry.ShowSwitch()
	Magenberry.ShowSwitch()
	Verdberry.ShowSwitch()
	Fiber.ShowSwitch()
}
if(MagicFOption[2].State = 0)
{
	GuiControl, Hide, BerryMode
	Mejoberry.HideSwitch()
	Narcoberry.HideSwitch()
	Stimberry.HideSwitch()
	Tintoberry.HideSwitch()
	Azulberry.HideSwitch()
	Amarberry.HideSwitch()
	Cianberry.HideSwitch()
	Magenberry.HideSwitch()
	Verdberry.HideSwitch()
	Fiber.HideSwitch()
}
if(MagicFOption[3].State = 1)
{
	Gui, Show, h280, <GG Mai> 
	GuiControl, Move, Version, y265
	GuiControl, Show, MeatMode
	Meat.ShowSwitch()
	Prime.ShowSwitch()
	Fish.ShowSwitch()
	Hide.ShowSwitch()
}
if(MagicFOption[3].State = 0)
{
	GuiControl, Hide, MeatMode
	Meat.HideSwitch()
	Prime.HideSwitch()
	Fish.HideSwitch()
	Hide.HideSwitch()
}
return


;AfkModeF:
;Toggle := !Toggle  ; Toggle the script on/off with F2
;if (Toggle)
;    MsgBox, Afk Mode Enabled
;else
;    MsgBox, Afk Mode Disabled
;return
;
;SetTimer, CheckWindow, 240000  ; 4 minutes = 240000 milliseconds
;return
;
;
;CheckWindow:
;if (Toggle)
;{
;    WinGetPos, X, Y, Width, Height, GeForce NOW
;    if ErrorLevel = 0  ; Checks if the window was found
;    {
;        WinMove, GeForce NOW,, X, Y + 1
;        Sleep, 333
;        WinMove, GeForce NOW,, X, Y
;    }
;}
;return

GuiClose:
	ExitApp


;######################################################################################################################################
;######################################################################################################################################
;######################################################################################################################################
;######################################################################################################################################

;Switch
class Flat_Round_Switch_Type_1  {
	__New(x,y,w:=19,Text:="Text",Font:="Arial",FontSize:= "10 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="36373A",State:=0,Label:=""){
		This.State:=State
		This.X:=x
		This.Y:=y
		This.W:=w
		This.H:=21
		This.Text:=Text
		This.Font:=Font
		This.FontSize:=FontSize
		This.FontColor:= "0xFF" FontColor
		This.Background_Color:= "0xFF" Background_Color
		This.Window:=Window
		This.Create_Off_Bitmap()
		This.Create_On_Bitmap()
		This.Create_Trigger()
		This.Label:=Label
		sleep,20
		if(This.State)
			This.Draw_On()
		else
			This.Draw_Off()
	}
	Create_Trigger(){
		Gui , % This.Window ": Add" , Picture , % "x" This.X " y" This.Y " w" This.W " h" This.H " 0xE hwndhwnd"
		This.Hwnd:=hwnd
		BD := THIS.Switch_State.BIND( THIS ) 
		GUICONTROL +G , % This.Hwnd , % BD
	}
	Create_Off_Bitmap(){
		;Bitmap Created Using: HB Bitmap Maker
		pBitmap:=Gdip_CreateBitmap( This.W , 21 ) 
			G := Gdip_GraphicsFromImage( pBitmap )
		Gdip_SetSmoothingMode( G , 2 )
		Brush := Gdip_BrushCreateSolid( This.Background_Color )
		Gdip_FillRectangle( G , Brush , -1 , -1 , This.W+2 , 23 )
		Gdip_DeleteBrush( Brush )
		Pen := Gdip_CreatePen( "0xFF44474A" , 1 )
		Gdip_DrawRoundedRectangle( G , Pen , 1 , 2 , 26 , 14 , 5 )
		Gdip_DeletePen( Pen )
		Pen := Gdip_CreatePen( "0xFF1B1D1E" , 1 )
		Gdip_DrawRoundedRectangle( G , Pen , 1 , 2 , 26 , 13 , 5 )
		Gdip_DeletePen( Pen )
		Brush := Gdip_BrushCreateSolid( "0xFF262827" )
		Gdip_FillRoundedRectangle( G , Brush , 1 , 2 , 26 , 13 , 5 )
		Gdip_DeleteBrush( Brush )
		Brush := Gdip_BrushCreateSolid( "0xFF303334" )
		Gdip_FillRoundedRectangle( G , Brush , 2 , 3 , 24 , 11 , 5 )
		Gdip_DeleteBrush( Brush )
		Brush := Gdip_BrushCreateSolid( "0x8827282B" )
		Gdip_FillEllipse( G , Brush , 0 , 0 , 18 , 18 )
		Gdip_DeleteBrush( Brush )
		Brush := Gdip_BrushCreateSolid( "0xFF1A1C1F" )
		Gdip_FillEllipse( G , Brush , 0 , 0 , 17 , 17 )
		Gdip_DeleteBrush( Brush )
		Brush := Gdip_CreateLineBrushFromRect( 3 , 2 , 11 , 14 , "0xFF60646A" , "0xFF393B3F" , 1 , 1 )
		Gdip_FillEllipse( G , Brush , 1 , 1 , 15 , 15 )
		Gdip_DeleteBrush( Brush )
		Brush := Gdip_CreateLineBrushFromRect( 5 , 3 , 10 , 12 , "0xFF4D5055" , "0xFF36383B" , 1 , 1 )
		Gdip_FillEllipse( G , Brush , 2 , 2 , 13 , 13 )
		Gdip_DeleteBrush( Brush )
		;Adding text
		;-------------------------------------------------------------
		Brush := Gdip_BrushCreateSolid( This.FontColor )
		Gdip_TextToGraphics( G , This.Text , "s" This.FontSize " vCenter c" Brush " x33 y0" , This.Font , This.W-33, This.H )
		Gdip_DeleteBrush( Brush )
		;-------------------------------------------------------------
		Gdip_DeleteGraphics( G )
		This.Off_Bitmap := Gdip_CreateHBITMAPFromBitmap(pBitmap)
		Gdip_DisposeImage(pBitmap)
	}
	Create_On_Bitmap(){
		;Bitmap Created Using: HB Bitmap Maker
		pBitmap:=Gdip_CreateBitmap( This.W , 21 ) 
			G := Gdip_GraphicsFromImage( pBitmap )
		Gdip_SetSmoothingMode( G , 2 )
		Brush := Gdip_BrushCreateSolid( This.Background_Color )
		Gdip_FillRectangle( G , Brush , -1 , -1 , This.W+2 , 23 )
		Gdip_DeleteBrush( Brush )
		Pen := Gdip_CreatePen( "0xFF44474A" , 1 )
		Gdip_DrawRoundedRectangle( G , Pen , 1 , 2 , 26 , 14 , 5 )
		Gdip_DeletePen( Pen )
		Pen := Gdip_CreatePen( "0xFF1B1D1E" , 1 )
		Gdip_DrawRoundedRectangle( G , Pen , 1 , 2 , 26 , 13 , 5 )
		Gdip_DeletePen( Pen )
		;------------------------------------------------------------------
		;On Background Colors
		Brush := Gdip_BrushCreateSolid( "0xFF8846C2" )
		Gdip_FillRoundedRectangle( G , Brush , 2 , 3 , 25 , 11 , 5 )
		Gdip_DeleteBrush( Brush )
		Brush := Gdip_BrushCreateSolid( "0xFFA866E2" )
		;--------------------------------------------------------------------
		Gdip_FillRoundedRectangle( G , Brush , 2 , 5 , 23 , 9 , 4 )
		Gdip_DeleteBrush( Brush )
		Brush := Gdip_BrushCreateSolid( "0x8827282B" )
		Gdip_FillEllipse( G , Brush , 11 , 0 , 18 , 18 )
		Gdip_DeleteBrush( Brush )
		Brush := Gdip_BrushCreateSolid( "0xFF1A1C1F" )
		Gdip_FillEllipse( G , Brush , 11 , 0 , 17 , 17 )
		Gdip_DeleteBrush( Brush )
		Brush := Gdip_CreateLineBrushFromRect( 3 , 2 , 11 , 14 , "0xFF60646A" , "0xFF393B3F" , 1 , 1 )
		Gdip_FillEllipse( G , Brush , 12 , 1 , 15 , 15 )
		Gdip_DeleteBrush( Brush )
		Brush := Gdip_CreateLineBrushFromRect( 5 , 3 , 10 , 12 , "0xFF4D5055" , "0xFF36383B" , 1 , 1 )
		Gdip_FillEllipse( G , Brush , 13 , 2 , 13 , 13 )
		Gdip_DeleteBrush( Brush )
		;Adding text
		;-------------------------------------------------------------
		Brush := Gdip_BrushCreateSolid( This.FontColor )
		Gdip_TextToGraphics( G , This.Text , "s" This.FontSize " vCenter c" Brush " x33 y0" , This.Font , This.W-33, This.H )
		Gdip_DeleteBrush( Brush )
		;-------------------------------------------------------------
		Gdip_DeleteGraphics( G )
		This.On_Bitmap := Gdip_CreateHBITMAPFromBitmap(pBitmap)
		Gdip_DisposeImage(pBitmap)
	}
	Switch_State(){
		(This.State:=!This.State)?(This.Draw_On()):(This.Draw_Off())
		if(This.Label)  
			gosub,% This.Label
	}
	Draw_Off(){
		SetImage( This.Hwnd , This.Off_Bitmap )
	}
	Draw_On(){
		SetImage( This.Hwnd , This.On_Bitmap )
	}
	;Method to hide the switch
	HideSwitch(){
        GuiControl, Hide, % This.Hwnd
    }
	;Method to Show the switch
	ShowSwitch(){
        GuiControl, Show, % This.Hwnd
    }
}

;Switch Button
class Flat_Round_Radio_Type_1   {
    __New(x,y,w:=19,Text:="Text",Font:="Arial",FontSize:= "10 Bold" , FontColor:="FFFFFF" ,Window:="1",Background_Color:="36373A",HighLightColor:="1A1C1F",State:=0,GroupArray:="",Label:=""){
        This.State:=State
        This.X:=x
        This.Y:=y
        This.W:=W
        This.H:=19
        This.Text:=Text
        This.Font:=Font
        This.FontSize:=FontSize
        This.FontColor:="0xFF" FontColor
        This.HighLightColor:= "0xFF" HighLightColor
        This.GroupArray:=GroupArray
        This.Name:=This.GroupArray.Length()+1
        This.Background_Color:="0xFF" Background_Color
        This.Window:=Window
        This.Create_Off_Bitmap()
        This.Create_On_Bitmap()
        This.Create_Trigger()
		This.Label:=Label
        sleep,20
        if(This.State)
            This.Draw_On()
        else
            This.Draw_Off()
        udb := THIS.UpdateValue.BIND( THIS )
        SetTimer,% udb,-100
    }
    Create_Trigger(){
        Gui , % This.Window ": Add" , Picture , % "x" This.X " y" This.Y " w" This.W " h" This.H " 0xE hwndHwnd"
        This.Hwnd:=hwnd
        BD := THIS.Switch_State.BIND( THIS ) 
        GUICONTROL +G , % This.Hwnd , % BD
    }
    Create_Off_Bitmap(){
        ;Bitmap Created Using: HB Bitmap Maker
        pBitmap:=Gdip_CreateBitmap( This.W , 19 ) 
         G := Gdip_GraphicsFromImage( pBitmap )
        Gdip_SetSmoothingMode( G , 2 )
        Brush := Gdip_BrushCreateSolid( This.Background_Color )
        Gdip_FillRectangle( G , Brush , -1 , -1 , This.W+2 , 21 )
        Gdip_DeleteBrush( Brush )
        Brush := Gdip_BrushCreateSolid( "0xFF313436" )
        Gdip_FillEllipse( G , Brush , 1 , 1 , 17 , 17 )
        Gdip_DeleteBrush( Brush )
        Brush := Gdip_BrushCreateSolid( "0xFF1A1C1F" )
        Gdip_FillEllipse( G , Brush , 1 , 0 , 17 , 17 )
        Gdip_DeleteBrush( Brush )
        Brush := Gdip_CreateLineBrushFromRect( 7 , 1 , 10 , 14 , "0xFF60646A" , "0xFF393B3F" , 1 , 1 )
        Gdip_FillEllipse( G , Brush , 2 , 1 , 15 , 15 )
        Gdip_DeleteBrush( Brush )
        Brush := Gdip_CreateLineBrushFromRect( 7 , 2 , 10 , 14 , "0xFF4A4D52" , "0xFF393B3F" , 1 , 1 )
        Gdip_FillEllipse( G , Brush , 3 , 2 , 13 , 13 )
        Gdip_DeleteBrush( Brush )
        Brush := Gdip_BrushCreateSolid( "0xFF4D5055" )
        Gdip_FillEllipse( G , Brush , 7 , 7 , 5 , 6 )
        Gdip_DeleteBrush( Brush )
        Brush := Gdip_BrushCreateSolid( "0xFF222325" )
        Gdip_FillEllipse( G , Brush , 7 , 6 , 5 , 5 )
        Gdip_DeleteBrush( Brush )
        ;Adding text
        ;-------------------------------------------------------------
        Brush := Gdip_BrushCreateSolid( This.FontColor )
        Gdip_TextToGraphics( G , This.Text , "s" This.FontSize " vCenter c" Brush " x23 y0" , This.Font , This.W-23, This.H )
        Gdip_DeleteBrush( Brush )
        ;-------------------------------------------------------------
        Gdip_DeleteGraphics( G )
        This.Off_Bitmap := Gdip_CreateHBITMAPFromBitmap(pBitmap)
        Gdip_DisposeImage(pBitmap)
    }
    Create_On_Bitmap(){
        ;Bitmap Created Using: HB Bitmap Maker
        pBitmap:=Gdip_CreateBitmap( This.W , 19 ) 
         G := Gdip_GraphicsFromImage( pBitmap )
        Gdip_SetSmoothingMode( G , 2 )
        Brush := Gdip_BrushCreateSolid( This.Background_Color )
        Gdip_FillRectangle( G , Brush , -1 , -1 , This.W+2 , 21 )
        Gdip_DeleteBrush( Brush )
        Brush := Gdip_BrushCreateSolid( "0xFF484A4B" )
        Gdip_FillEllipse( G , Brush , 1 , 1 , 17 , 17 )
        Gdip_DeleteBrush( Brush )
        Brush := Gdip_BrushCreateSolid( "0xFF1A1C1F" )
        Gdip_FillEllipse( G , Brush , 1 , 0 , 17 , 17 )
        Gdip_DeleteBrush( Brush )
        Brush := Gdip_BrushCreateSolid( "0xFF29292F" )
        Gdip_FillEllipse( G , Brush , 2 , 1 , 15 , 15 )
        Gdip_DeleteBrush( Brush )
        Brush := Gdip_CreateLineBrushFromRect( 5 , 1 , 10 , 14 , "0xFF2E2F31" , "0xFF333337" , 1 , 1 )
        Gdip_FillEllipse( G , Brush , 3 , 2 , 13 , 13 )
        Gdip_DeleteBrush( Brush )
        Brush := Gdip_BrushCreateSolid( "0xFF4D5055" )
        Gdip_FillEllipse( G , Brush , 7 , 7 , 5 , 5 )
        Gdip_DeleteBrush( Brush )
        Brush := Gdip_BrushCreateSolid( This.HighLightColor )
        Gdip_FillEllipse( G , Brush , 7 , 6 , 5 , 5 )
        Gdip_DeleteBrush( Brush )
        ;Adding text
        ;-------------------------------------------------------------
        Brush := Gdip_BrushCreateSolid( This.FontColor )
        Gdip_TextToGraphics( G , This.Text , "s" This.FontSize " vCenter c" Brush " x23 y0" , This.Font , This.W-23, This.H )
        Gdip_DeleteBrush( Brush )
        ;-------------------------------------------------------------
        Gdip_DeleteGraphics( G )
        This.On_Bitmap := Gdip_CreateHBITMAPFromBitmap( pBitmap )
        Gdip_DisposeImage( pBitmap )
    }
    UpdateValue(){
        Loop,% This.GroupArray.Length() 
            if(This.GroupArray[A_Index].State=1){
                lc:=A_Index
                Loop,% This.GroupArray.Length() 
                    This.GroupArray[A_Index].Value:=lc
            }
    }
	Switch_State() {
		if (This.State != 1) {
			; Remember the value of the currently selected item
			OldValue := This.Value
	
			This.State := 1
			This.Draw_On()
	
			Loop, % This.GroupArray.Length() {
				if (This.GroupArray[A_Index].Name != This.Name) {
					This.GroupArray[A_Index].State := 0
					This.GroupArray[A_Index].Draw_Off()
					This.Value := A_Index  ; Update the value for the current item
	
					; Call the label for the item being turned off
					if (This.GroupArray[A_Index].Label) {
						OldValue := A_Index
					}
				}
			}
	
			; Update the value for all items in the group
			Loop, % This.GroupArray.Length() {
				This.GroupArray[A_Index].Value := This.Value
			}
	
			; Call the label for the previously selected item outside the loop
			if (This.GroupArray[OldValue] && This.GroupArray[OldValue].Label) {
				gosub, % This.GroupArray[OldValue].Label
			}
	
			if (This.Label) {
				gosub, % This.Label
			}
		}
	}
	State_0(){
		This.State := 0
		This.Draw_Off()
		gosub, % This.Label
	}
    Draw_Off(){
        SetImage( This.Hwnd , This.Off_Bitmap )
    }
    Draw_On(){
        SetImage( This.Hwnd , This.On_Bitmap )
    }
	;Method to hide the switch
	HideSwitch(){
        GuiControl, Hide, % This.Hwnd
    }
	;Method to show the switch
	ShowSwitch(){
        GuiControl, Show, % This.Hwnd
    }
}


;######################################################################################################################################
;######################################################## Gdip standard library #######################################################
;######################################################################################################################################
	
BitBlt(ddc, dx, dy, dw, dh, sdc, sx, sy, Raster=""){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	return DllCall("gdi32\BitBlt", Ptr, dDC, "int", dx, "int", dy, "int", dw, "int", dh, Ptr, sDC, "int", sx, "int", sy, "uint", Raster ? Raster : 0x00CC0020)
}
Gdip_DrawImage(pGraphics, pBitmap, dx="", dy="", dw="", dh="", sx="", sy="", sw="", sh="", Matrix=1){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	if (Matrix&1 = "")
		ImageAttr := Gdip_SetImageAttributesColorMatrix(Matrix)
	else if (Matrix != 1)
		ImageAttr := Gdip_SetImageAttributesColorMatrix("1|0|0|0|0|0|1|0|0|0|0|0|1|0|0|0|0|0|" Matrix "|0|0|0|0|0|1")
	if(sx = "" && sy = "" && sw = "" && sh = ""){
		if(dx = "" && dy = "" && dw = "" && dh = ""){
			sx := dx := 0, sy := dy := 0
			sw := dw := Gdip_GetImageWidth(pBitmap)
			sh := dh := Gdip_GetImageHeight(pBitmap)
		}else   {
			sx := sy := 0,sw := Gdip_GetImageWidth(pBitmap),sh := Gdip_GetImageHeight(pBitmap)
		}
	}
	E := DllCall("gdiplus\GdipDrawImageRectRect", Ptr, pGraphics, Ptr, pBitmap, "float", dx, "float", dy, "float", dw, "float", dh, "float", sx, "float", sy, "float", sw, "float", sh, "int", 2, Ptr, ImageAttr, Ptr, 0, Ptr, 0)
	if ImageAttr
		Gdip_DisposeImageAttributes(ImageAttr)
	return E
}
Gdip_SetImageAttributesColorMatrix(Matrix){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	VarSetCapacity(ColourMatrix, 100, 0)
	Matrix := RegExReplace(RegExReplace(Matrix, "^[^\d-\.]+([\d\.])", "$1", "", 1), "[^\d-\.]+", "|")
	StringSplit, Matrix, Matrix, |
	Loop, 25
	{
		Matrix := (Matrix%A_Index% != "") ? Matrix%A_Index% : Mod(A_Index-1, 6) ? 0 : 1
		NumPut(Matrix, ColourMatrix, (A_Index-1)*4, "float")
	}
	DllCall("gdiplus\GdipCreateImageAttributes", A_PtrSize ? "UPtr*" : "uint*", ImageAttr)
	DllCall("gdiplus\GdipSetImageAttributesColorMatrix", Ptr, ImageAttr, "int", 1, "int", 1, Ptr, &ColourMatrix, Ptr, 0, "int", 0)
	return ImageAttr
}
Gdip_GetImageWidth(pBitmap){
	DllCall("gdiplus\GdipGetImageWidth", A_PtrSize ? "UPtr" : "UInt", pBitmap, "uint*", Width)
	return Width
}
Gdip_GetImageHeight(pBitmap){
	DllCall("gdiplus\GdipGetImageHeight", A_PtrSize ? "UPtr" : "UInt", pBitmap, "uint*", Height)
	return Height
}
Gdip_DeletePen(pPen){
	return DllCall("gdiplus\GdipDeletePen", A_PtrSize ? "UPtr" : "UInt", pPen)
}
Gdip_DeleteBrush(pBrush){
	return DllCall("gdiplus\GdipDeleteBrush", A_PtrSize ? "UPtr" : "UInt", pBrush)
}
Gdip_DisposeImage(pBitmap){
	return DllCall("gdiplus\GdipDisposeImage", A_PtrSize ? "UPtr" : "UInt", pBitmap)
}
Gdip_DeleteGraphics(pGraphics){
	return DllCall("gdiplus\GdipDeleteGraphics", A_PtrSize ? "UPtr" : "UInt", pGraphics)
}
Gdip_DisposeImageAttributes(ImageAttr){
	return DllCall("gdiplus\GdipDisposeImageAttributes", A_PtrSize ? "UPtr" : "UInt", ImageAttr)
}
Gdip_DeleteFont(hFont){
	return DllCall("gdiplus\GdipDeleteFont", A_PtrSize ? "UPtr" : "UInt", hFont)
}
Gdip_DeleteStringFormat(hFormat){
	return DllCall("gdiplus\GdipDeleteStringFormat", A_PtrSize ? "UPtr" : "UInt", hFormat)
}
Gdip_DeleteFontFamily(hFamily){
	return DllCall("gdiplus\GdipDeleteFontFamily", A_PtrSize ? "UPtr" : "UInt", hFamily)
}
CreateCompatibleDC(hdc=0){
	return DllCall("CreateCompatibleDC", A_PtrSize ? "UPtr" : "UInt", hdc)
}
SelectObject(hdc, hgdiobj){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	return DllCall("SelectObject", Ptr, hdc, Ptr, hgdiobj)
}
DeleteObject(hObject){
	return DllCall("DeleteObject", A_PtrSize ? "UPtr" : "UInt", hObject)
}
GetDC(hwnd=0){
	return DllCall("GetDC", A_PtrSize ? "UPtr" : "UInt", hwnd)
}
GetDCEx(hwnd, flags=0, hrgnClip=0){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	return DllCall("GetDCEx", Ptr, hwnd, Ptr, hrgnClip, "int", flags)
}
ReleaseDC(hdc, hwnd=0){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	return DllCall("ReleaseDC", Ptr, hwnd, Ptr, hdc)
}
DeleteDC(hdc){
	return DllCall("DeleteDC", A_PtrSize ? "UPtr" : "UInt", hdc)
}
Gdip_SetClipRegion(pGraphics, Region, CombineMode=0){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	return DllCall("gdiplus\GdipSetClipRegion", Ptr, pGraphics, Ptr, Region, "int", CombineMode)
}
CreateDIBSection(w, h, hdc="", bpp=32, ByRef ppvBits=0){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	hdc2 := hdc ? hdc : GetDC()
	VarSetCapacity(bi, 40, 0)
	NumPut(w, bi, 4, "uint"), NumPut(h, bi, 8, "uint"), NumPut(40, bi, 0, "uint"), NumPut(1, bi, 12, "ushort"), NumPut(0, bi, 16, "uInt"), NumPut(bpp, bi, 14, "ushort")
	hbm := DllCall("CreateDIBSection", Ptr, hdc2, Ptr, &bi, "uint", 0, A_PtrSize ? "UPtr*" : "uint*", ppvBits, Ptr, 0, "uint", 0, Ptr)
	if !hdc
		ReleaseDC(hdc2)
	return hbm
}
Gdip_GraphicsFromImage(pBitmap){
	DllCall("gdiplus\GdipGetImageGraphicsContext", A_PtrSize ? "UPtr" : "UInt", pBitmap, A_PtrSize ? "UPtr*" : "UInt*", pGraphics)
	return pGraphics
}
Gdip_GraphicsFromHDC(hdc){
	DllCall("gdiplus\GdipCreateFromHDC", A_PtrSize ? "UPtr" : "UInt", hdc, A_PtrSize ? "UPtr*" : "UInt*", pGraphics)
	return pGraphics
}
Gdip_GetDC(pGraphics){
	DllCall("gdiplus\GdipGetDC", A_PtrSize ? "UPtr" : "UInt", pGraphics, A_PtrSize ? "UPtr*" : "UInt*", hdc)
	return hdc
}
	
	
Gdip_Startup(){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	if !DllCall("GetModuleHandle", "str", "gdiplus", Ptr)
		DllCall("LoadLibrary", "str", "gdiplus")
	VarSetCapacity(si, A_PtrSize = 8 ? 24 : 16, 0), si := Chr(1)
	DllCall("gdiplus\GdiplusStartup", A_PtrSize ? "UPtr*" : "uint*", pToken, Ptr, &si, Ptr, 0)
	return pToken
}
Gdip_TextToGraphics(pGraphics, Text, Options, Font="Arial", Width="", Height="", Measure=0){
	IWidth := Width, IHeight:= Height
	RegExMatch(Options, "i)X([\-\d\.]+)(p*)", xpos)
	RegExMatch(Options, "i)Y([\-\d\.]+)(p*)", ypos)
	RegExMatch(Options, "i)W([\-\d\.]+)(p*)", Width)
	RegExMatch(Options, "i)H([\-\d\.]+)(p*)", Height)
	RegExMatch(Options, "i)C(?!(entre|enter))([a-f\d]+)", Colour)
	RegExMatch(Options, "i)Top|Up|Bottom|Down|vCentre|vCenter", vPos)
	RegExMatch(Options, "i)NoWrap", NoWrap)
	RegExMatch(Options, "i)R(\d)", Rendering)
	RegExMatch(Options, "i)S(\d+)(p*)", Size)
	if !Gdip_DeleteBrush(Gdip_CloneBrush(Colour2))
		PassBrush := 1, pBrush := Colour2
	if !(IWidth && IHeight) && (xpos2 || ypos2 || Width2 || Height2 || Size2)
		return -1
	Style := 0, Styles := "Regular|Bold|Italic|BoldItalic|Underline|Strikeout"
	Loop, Parse, Styles, |
	{
		if RegExMatch(Options, "\b" A_loopField)
		Style |= (A_LoopField != "StrikeOut") ? (A_Index-1) : 8
	}
	Align := 0, Alignments := "Near|Left|Centre|Center|Far|Right"
	Loop, Parse, Alignments, |
	{
		if RegExMatch(Options, "\b" A_loopField)
			Align |= A_Index//2.1      ; 0|0|1|1|2|2
	}
	xpos := (xpos1 != "") ? xpos2 ? IWidth*(xpos1/100) : xpos1 : 0
	ypos := (ypos1 != "") ? ypos2 ? IHeight*(ypos1/100) : ypos1 : 0
	Width := Width1 ? Width2 ? IWidth*(Width1/100) : Width1 : IWidth
	Height := Height1 ? Height2 ? IHeight*(Height1/100) : Height1 : IHeight
	if !PassBrush
		Colour := "0x" (Colour2 ? Colour2 : "ff000000")
	Rendering := ((Rendering1 >= 0) && (Rendering1 <= 5)) ? Rendering1 : 4
	Size := (Size1 > 0) ? Size2 ? IHeight*(Size1/100) : Size1 : 12
	hFamily := Gdip_FontFamilyCreate(Font)
	hFont := Gdip_FontCreate(hFamily, Size, Style)
	FormatStyle := NoWrap ? 0x4000 | 0x1000 : 0x4000
	hFormat := Gdip_StringFormatCreate(FormatStyle)
	pBrush := PassBrush ? pBrush : Gdip_BrushCreateSolid(Colour)
	if !(hFamily && hFont && hFormat && pBrush && pGraphics)
		return !pGraphics ? -2 : !hFamily ? -3 : !hFont ? -4 : !hFormat ? -5 : !pBrush ? -6 : 0
	CreateRectF(RC, xpos, ypos, Width, Height)
	Gdip_SetStringFormatAlign(hFormat, Align)
	Gdip_SetTextRenderingHint(pGraphics, Rendering)
	ReturnRC := Gdip_MeasureString(pGraphics, Text, hFont, hFormat, RC)
	if vPos
	{
		StringSplit, ReturnRC, ReturnRC, |
		if (vPos = "vCentre") || (vPos = "vCenter")
			ypos += (Height-ReturnRC4)//2
		else if (vPos = "Top") || (vPos = "Up")
			ypos := 0
		else if (vPos = "Bottom") || (vPos = "Down")
			ypos := Height-ReturnRC4
		CreateRectF(RC, xpos, ypos, Width, ReturnRC4)
		ReturnRC := Gdip_MeasureString(pGraphics, Text, hFont, hFormat, RC)
	}
	if !Measure
		E := Gdip_DrawString(pGraphics, Text, hFont, hFormat, pBrush, RC)
	if !PassBrush
		Gdip_DeleteBrush(pBrush)
	Gdip_DeleteStringFormat(hFormat)
	Gdip_DeleteFont(hFont)
	Gdip_DeleteFontFamily(hFamily)
	return E ? E : ReturnRC
}
Gdip_DrawString(pGraphics, sString, hFont, hFormat, pBrush, ByRef RectF){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	if (!A_IsUnicode)
	{
		nSize := DllCall("MultiByteToWideChar", "uint", 0, "uint", 0, Ptr, &sString, "int", -1, Ptr, 0, "int", 0)
		VarSetCapacity(wString, nSize*2)
		DllCall("MultiByteToWideChar", "uint", 0, "uint", 0, Ptr, &sString, "int", -1, Ptr, &wString, "int", nSize)
	}
	return DllCall("gdiplus\GdipDrawString", Ptr, pGraphics, Ptr, A_IsUnicode ? &sString : &wString, "int", -1, Ptr, hFont, Ptr, &RectF, Ptr, hFormat, Ptr, pBrush)
}
Gdip_CreateLineBrush(x1, y1, x2, y2, ARGB1, ARGB2, WrapMode=1){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	CreatePointF(PointF1, x1, y1), CreatePointF(PointF2, x2, y2)
	DllCall("gdiplus\GdipCreateLineBrush", Ptr, &PointF1, Ptr, &PointF2, "Uint", ARGB1, "Uint", ARGB2, "int", WrapMode, A_PtrSize ? "UPtr*" : "UInt*", LGpBrush)
	return LGpBrush
}
Gdip_CreateLineBrushFromRect(x, y, w, h, ARGB1, ARGB2, LinearGradientMode=1, WrapMode=1){
	CreateRectF(RectF, x, y, w, h)
	DllCall("gdiplus\GdipCreateLineBrushFromRect", A_PtrSize ? "UPtr" : "UInt", &RectF, "int", ARGB1, "int", ARGB2, "int", LinearGradientMode, "int", WrapMode, A_PtrSize ? "UPtr*" : "UInt*", LGpBrush)
	return LGpBrush
}
Gdip_CloneBrush(pBrush){
	DllCall("gdiplus\GdipCloneBrush", A_PtrSize ? "UPtr" : "UInt", pBrush, A_PtrSize ? "UPtr*" : "UInt*", pBrushClone)
	return pBrushClone
}
Gdip_FontFamilyCreate(Font){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	if (!A_IsUnicode)
	{
		nSize := DllCall("MultiByteToWideChar", "uint", 0, "uint", 0, Ptr, &Font, "int", -1, "uint", 0, "int", 0)
		VarSetCapacity(wFont, nSize*2)
		DllCall("MultiByteToWideChar", "uint", 0, "uint", 0, Ptr, &Font, "int", -1, Ptr, &wFont, "int", nSize)
	}
	DllCall("gdiplus\GdipCreateFontFamilyFromName", Ptr, A_IsUnicode ? &Font : &wFont, "uint", 0, A_PtrSize ? "UPtr*" : "UInt*", hFamily)
	return hFamily
}
Gdip_SetStringFormatAlign(hFormat, Align){
	return DllCall("gdiplus\GdipSetStringFormatAlign", A_PtrSize ? "UPtr" : "UInt", hFormat, "int", Align)
}
Gdip_StringFormatCreate(Format=0, Lang=0){
	DllCall("gdiplus\GdipCreateStringFormat", "int", Format, "int", Lang, A_PtrSize ? "UPtr*" : "UInt*", hFormat)
	return hFormat
}
Gdip_FontCreate(hFamily, Size, Style=0){
	DllCall("gdiplus\GdipCreateFont", A_PtrSize ? "UPtr" : "UInt", hFamily, "float", Size, "int", Style, "int", 0, A_PtrSize ? "UPtr*" : "UInt*", hFont)
	return hFont
}
Gdip_CreatePen(ARGB, w){
	DllCall("gdiplus\GdipCreatePen1", "UInt", ARGB, "float", w, "int", 2, A_PtrSize ? "UPtr*" : "UInt*", pPen)
	return pPen
}
Gdip_CreatePenFromBrush(pBrush, w){
	DllCall("gdiplus\GdipCreatePen2", A_PtrSize ? "UPtr" : "UInt", pBrush, "float", w, "int", 2, A_PtrSize ? "UPtr*" : "UInt*", pPen)
	return pPen
}
Gdip_BrushCreateSolid(ARGB=0xff000000){
	DllCall("gdiplus\GdipCreateSolidFill", "UInt", ARGB, A_PtrSize ? "UPtr*" : "UInt*", pBrush)
	return pBrush
}
Gdip_BrushCreateHatch(ARGBfront, ARGBback, HatchStyle=0){
	DllCall("gdiplus\GdipCreateHatchBrush", "int", HatchStyle, "UInt", ARGBfront, "UInt", ARGBback, A_PtrSize ? "UPtr*" : "UInt*", pBrush)
	return pBrush
}
CreateRectF(ByRef RectF, x, y, w, h){
	VarSetCapacity(RectF, 16)
	NumPut(x, RectF, 0, "float"), NumPut(y, RectF, 4, "float"), NumPut(w, RectF, 8, "float"), NumPut(h, RectF, 12, "float")
}
Gdip_SetTextRenderingHint(pGraphics, RenderingHint){
	return DllCall("gdiplus\GdipSetTextRenderingHint", A_PtrSize ? "UPtr" : "UInt", pGraphics, "int", RenderingHint)
}
Gdip_MeasureString(pGraphics, sString, hFont, hFormat, ByRef RectF){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	VarSetCapacity(RC, 16)
	if !A_IsUnicode
	{
		nSize := DllCall("MultiByteToWideChar", "uint", 0, "uint", 0, Ptr, &sString, "int", -1, "uint", 0, "int", 0)
		VarSetCapacity(wString, nSize*2)
		DllCall("MultiByteToWideChar", "uint", 0, "uint", 0, Ptr, &sString, "int", -1, Ptr, &wString, "int", nSize)
	}
	DllCall("gdiplus\GdipMeasureString", Ptr, pGraphics, Ptr, A_IsUnicode ? &sString : &wString, "int", -1, Ptr, hFont, Ptr, &RectF, Ptr, hFormat, Ptr, &RC, "uint*", Chars, "uint*", Lines)
	return &RC ? NumGet(RC, 0, "float") "|" NumGet(RC, 4, "float") "|" NumGet(RC, 8, "float") "|" NumGet(RC, 12, "float") "|" Chars "|" Lines : 0
}
CreateRect(ByRef Rect, x, y, w, h){
	VarSetCapacity(Rect, 16)
	NumPut(x, Rect, 0, "uint"), NumPut(y, Rect, 4, "uint"), NumPut(w, Rect, 8, "uint"), NumPut(h, Rect, 12, "uint")
}
CreateSizeF(ByRef SizeF, w, h){
	VarSetCapacity(SizeF, 8)
	NumPut(w, SizeF, 0, "float"), NumPut(h, SizeF, 4, "float")
}
CreatePointF(ByRef PointF, x, y){
	VarSetCapacity(PointF, 8)
	NumPut(x, PointF, 0, "float"), NumPut(y, PointF, 4, "float")
}
Gdip_DrawArc(pGraphics, pPen, x, y, w, h, StartAngle, SweepAngle){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	return DllCall("gdiplus\GdipDrawArc", Ptr, pGraphics, Ptr, pPen, "float", x, "float", y, "float", w, "float", h, "float", StartAngle, "float", SweepAngle)
}
Gdip_DrawPie(pGraphics, pPen, x, y, w, h, StartAngle, SweepAngle){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	return DllCall("gdiplus\GdipDrawPie", Ptr, pGraphics, Ptr, pPen, "float", x, "float", y, "float", w, "float", h, "float", StartAngle, "float", SweepAngle)
}
Gdip_DrawLine(pGraphics, pPen, x1, y1, x2, y2){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	return DllCall("gdiplus\GdipDrawLine", Ptr, pGraphics, Ptr, pPen, "float", x1, "float", y1, "float", x2, "float", y2)
}
Gdip_DrawLines(pGraphics, pPen, Points){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	StringSplit, Points, Points, |
	VarSetCapacity(PointF, 8*Points0)
	Loop, %Points0%
	{
		StringSplit, Coord, Points%A_Index%, `,
		NumPut(Coord1, PointF, 8*(A_Index-1), "float"), NumPut(Coord2, PointF, (8*(A_Index-1))+4, "float")
	}
	return DllCall("gdiplus\GdipDrawLines", Ptr, pGraphics, Ptr, pPen, Ptr, &PointF, "int", Points0)
}
Gdip_FillRectangle(pGraphics, pBrush, x, y, w, h){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	return DllCall("gdiplus\GdipFillRectangle", Ptr, pGraphics, Ptr, pBrush, "float", x, "float", y, "float", w, "float", h)
}
Gdip_FillRoundedRectangle(pGraphics, pBrush, x, y, w, h, r){
	Region := Gdip_GetClipRegion(pGraphics)
	Gdip_SetClipRect(pGraphics, x-r, y-r, 2*r, 2*r, 4)
	Gdip_SetClipRect(pGraphics, x+w-r, y-r, 2*r, 2*r, 4)
	Gdip_SetClipRect(pGraphics, x-r, y+h-r, 2*r, 2*r, 4)
	Gdip_SetClipRect(pGraphics, x+w-r, y+h-r, 2*r, 2*r, 4)
	E := Gdip_FillRectangle(pGraphics, pBrush, x, y, w, h)
	Gdip_SetClipRegion(pGraphics, Region, 0)
	Gdip_SetClipRect(pGraphics, x-(2*r), y+r, w+(4*r), h-(2*r), 4)
	Gdip_SetClipRect(pGraphics, x+r, y-(2*r), w-(2*r), h+(4*r), 4)
	Gdip_FillEllipse(pGraphics, pBrush, x, y, 2*r, 2*r)
	Gdip_FillEllipse(pGraphics, pBrush, x+w-(2*r), y, 2*r, 2*r)
	Gdip_FillEllipse(pGraphics, pBrush, x, y+h-(2*r), 2*r, 2*r)
	Gdip_FillEllipse(pGraphics, pBrush, x+w-(2*r), y+h-(2*r), 2*r, 2*r)
	Gdip_SetClipRegion(pGraphics, Region, 0)
	Gdip_DeleteRegion(Region)
	return E
}
Gdip_GetClipRegion(pGraphics){
	Region := Gdip_CreateRegion()
	DllCall("gdiplus\GdipGetClip", A_PtrSize ? "UPtr" : "UInt", pGraphics, "UInt*", Region)
	return Region
}
Gdip_SetClipRect(pGraphics, x, y, w, h, CombineMode=0){
	return DllCall("gdiplus\GdipSetClipRect",  A_PtrSize ? "UPtr" : "UInt", pGraphics, "float", x, "float", y, "float", w, "float", h, "int", CombineMode)
}
Gdip_SetClipPath(pGraphics, Path, CombineMode=0){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	return DllCall("gdiplus\GdipSetClipPath", Ptr, pGraphics, Ptr, Path, "int", CombineMode)
}
Gdip_ResetClip(pGraphics){
	return DllCall("gdiplus\GdipResetClip", A_PtrSize ? "UPtr" : "UInt", pGraphics)
}
Gdip_FillEllipse(pGraphics, pBrush, x, y, w, h){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	return DllCall("gdiplus\GdipFillEllipse", Ptr, pGraphics, Ptr, pBrush, "float", x, "float", y, "float", w, "float", h)
}
Gdip_FillRegion(pGraphics, pBrush, Region){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	return DllCall("gdiplus\GdipFillRegion", Ptr, pGraphics, Ptr, pBrush, Ptr, Region)
}
Gdip_FillPath(pGraphics, pBrush, Path){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	return DllCall("gdiplus\GdipFillPath", Ptr, pGraphics, Ptr, pBrush, Ptr, Path)
}
Gdip_CreateRegion(){
	DllCall("gdiplus\GdipCreateRegion", "UInt*", Region)
	return Region
}
Gdip_DeleteRegion(Region){
	return DllCall("gdiplus\GdipDeleteRegion", A_PtrSize ? "UPtr" : "UInt", Region)
}
Gdip_CreateBitmap(Width, Height, Format=0x26200A){
	DllCall("gdiplus\GdipCreateBitmapFromScan0", "int", Width, "int", Height, "int", 0, "int", Format, A_PtrSize ? "UPtr" : "UInt", 0, A_PtrSize ? "UPtr*" : "uint*", pBitmap)
	Return pBitmap
}
Gdip_SetSmoothingMode(pGraphics, SmoothingMode){
	return DllCall("gdiplus\GdipSetSmoothingMode", A_PtrSize ? "UPtr" : "UInt", pGraphics, "int", SmoothingMode)
}
Gdip_DrawRectangle(pGraphics, pPen, x, y, w, h){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	return DllCall("gdiplus\GdipDrawRectangle", Ptr, pGraphics, Ptr, pPen, "float", x, "float", y, "float", w, "float", h)
}
Gdip_DrawRoundedRectangle(pGraphics, pPen, x, y, w, h, r){
	Gdip_SetClipRect(pGraphics, x-r, y-r, 2*r, 2*r, 4)
	Gdip_SetClipRect(pGraphics, x+w-r, y-r, 2*r, 2*r, 4)
	Gdip_SetClipRect(pGraphics, x-r, y+h-r, 2*r, 2*r, 4)
	Gdip_SetClipRect(pGraphics, x+w-r, y+h-r, 2*r, 2*r, 4)
	E := Gdip_DrawRectangle(pGraphics, pPen, x, y, w, h)
	Gdip_ResetClip(pGraphics)
	Gdip_SetClipRect(pGraphics, x-(2*r), y+r, w+(4*r), h-(2*r), 4)
	Gdip_SetClipRect(pGraphics, x+r, y-(2*r), w-(2*r), h+(4*r), 4)
	Gdip_DrawEllipse(pGraphics, pPen, x, y, 2*r, 2*r)
	Gdip_DrawEllipse(pGraphics, pPen, x+w-(2*r), y, 2*r, 2*r)
	Gdip_DrawEllipse(pGraphics, pPen, x, y+h-(2*r), 2*r, 2*r)
	Gdip_DrawEllipse(pGraphics, pPen, x+w-(2*r), y+h-(2*r), 2*r, 2*r)
	Gdip_ResetClip(pGraphics)
	return E
}
Gdip_DrawEllipse(pGraphics, pPen, x, y, w, h){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	return DllCall("gdiplus\GdipDrawEllipse", Ptr, pGraphics, Ptr, pPen, "float", x, "float", y, "float", w, "float", h)
}
Gdip_CreateHBITMAPFromBitmap(pBitmap, Background=0xffffffff){
	DllCall("gdiplus\GdipCreateHBITMAPFromBitmap", A_PtrSize ? "UPtr" : "UInt", pBitmap, A_PtrSize ? "UPtr*" : "uint*", hbm, "int", Background)
	return hbm
}
SetImage(hwnd, hBitmap){
	SendMessage, 0x172, 0x0, hBitmap,, ahk_id %hwnd%
	E := ErrorLevel
	DeleteObject(E)
	return E
}
Gdip_FillPolygon(pGraphics, pBrush, Points, FillMode=0){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	StringSplit, Points, Points, |
	VarSetCapacity(PointF, 8*Points0)
	Loop, %Points0%
	{
		StringSplit, Coord, Points%A_Index%, `,
		NumPut(Coord1, PointF, 8*(A_Index-1), "float"), NumPut(Coord2, PointF, (8*(A_Index-1))+4, "float")
	}
	return DllCall("gdiplus\GdipFillPolygon", Ptr, pGraphics, Ptr, pBrush, Ptr, &PointF, "int", Points0, "int", FillMode)
}
;#####################################################################################
; Default = 0
; LowQuality = 1
; HighQuality = 2
; Bilinear = 3
; Bicubic = 4
; NearestNeighbor = 5
; HighQualityBilinear = 6
; HighQualityBicubic = 7
Gdip_SetInterpolationMode(pGraphics, InterpolationMode)
{
	return DllCall("gdiplus\GdipSetInterpolationMode", A_PtrSize ? "UPtr" : "UInt", pGraphics, "int", InterpolationMode)
}