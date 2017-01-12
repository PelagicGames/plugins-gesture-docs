-- 
-- Abstract: gesture Library Plugin Test Project
-- 
-- Sample code is MIT licensed, see http://www.coronalabs.com/links/code/license
-- Copyright (C) 2015 Corona Labs Inc. All Rights Reserved.
--
------------------------------------------------------------

-- Load plugin library
local gesture = require "plugin.gesture"

-------------------------------------------------------------------------------
-- BEGIN (Insert your sample test starting here)
-------------------------------------------------------------------------------

local screenW, screenH = display.contentWidth, display.contentHeight

-- Create a background to pick up gestures
local background = display.newRect(0.5 * screenW, 0.5 * screenH, screenW, 2 * screenH)
background:setFillColor(0)

-- Create a label to show the current gesture
local gestureLabel = display.newText("No gesture", 0.5 * screenW, 0.1 * screenH, 200, 50, native.systemFontBold, 18)

-- Print the supported gestures
print("Supported gestures: ")
local supportedGestures = gesture.getSupportedGestures()
for index=1,#supportedGestures do
	print("  " .. supportedGestures[index])
end

-- Set the valid gestures to just up, down, left and right
gesture.setValidGestures({"up", "down", "left", "right", "poo"})
print("Valid gestures: ")
local validGestures = gesture.getValidGestures()
for index=1,#validGestures do
	print("  " .. validGestures[index])
end

-- Add a touch listener that calls into the gesture library
function background:touch(event)
	-- Pass the event directly to the gestureListener function before doing anything else or applying any logic
	local gestureResult = gesture.gestureListener(event)

	-- gestureResult will be nil during a gesture, false if the gesture has ended and not been recognised, and a string value if a valid gesture was recorded
	if (gestureResult) then
		gestureLabel.text = gestureResult
	elseif (gestureResult ~= nil) then
		gestureLabel.text = "No gesture"
	end
end

background:addEventListener("touch", background)

-------------------------------------------------------------------------------
-- END
-------------------------------------------------------------------------------
