-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

local calculateButton = display.newImageRect ("assets/sprites/calculateButton.png", 125, 50)
calculateButton.x = 160	
calculateButton.y = 350 
calculateButton.id = "calculateButton"


responseText = display.newText ( " What movie can you watch? " , display.contentCenterX - 3, 160, native.systemFont, 25 )
responseText:setFillColor ( 255/255 , 255/255, 255/255 )


display.newText (" Enter your age: " , display.contentCenterX, 200, native.systemFont, 30 )


ageField = native.newTextField ( display.contentCenterX, display.contentCenterY + 35, 225, 40 )
ageField.id = "Age textField"


local function calculateButtonTouch( Event )
	

local nn = tonumber(ageField.text)

if nn >= 17 then


	
	responseText.text = "You can watch horror movie alone"



elseif nn >= 13 then


	
	responseText.text = " You can watch horror movie with someone else "

else 

	
	responseText.text = " You can't watch horror movie, you are too young!"

end

end



calculateButton:addEventListener("Touch" , calculateButtonTouch)
