-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

local EnterButton = display.newImageRect ("assets/sprites/enterbutton.png", 125, 50)
EnterButton.x = 160
EnterButton.Y = 350
EnterButton.id = "Enter Button"


ResponseText = display.newText ( " What movie can you watch? " , display.contentCenterX - 3, 160, native.systemFont, 25 )
ResponseText:setFillColor ( 0/255 , 0/255, 0/255 )


display.newText (" Enter your age: " , display.contentCenterX, 380, native.systemFont, 30 )


AgeField = native.newTextField ( display.contentCenterX, display.contentCenterY + 35, 225, 40 )
AgeField.id = "Age textField"


local function EnterButtonTouch( Event )
	end

local Age = tonumber (AgeField.text)

if Age >= 18 then
	print ("")
    print ("You can watch horror movie alone")
	ResponseText.text = "You can watch horror movie alone"

elseif Age >= 13 then
	print ("")
	print (" You can watch horror movie with someone else ")
	ResponseText.text = " You can watch horror movie with someone else "

else 
	print ("")
	print (" You can't watch horror movie, you are too young!")
	ResponseText.text = " You can't watch horror movie, you are too young!"

end


EnterButton:addEventListener ("Touch" , EnterButtonTouch)
