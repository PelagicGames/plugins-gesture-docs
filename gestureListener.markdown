# gesture.gestureListener()

|                      | &nbsp; 
| -------------------- | ---------------------------------------------------------------
| __Type__             | [function](http://docs.coronalabs.com/api/type/Function.html)
| __Library__          | [gesture.*](Readme.markdown)
| __Return value__     | [String](https://docs.coronalabs.com/api/type/String.html), [Boolean](https://docs.coronalabs.com/api/type/Boolean.html), nil
| __Keywords__         | gesture, event, listener
| __See also__         | [Sample code](sample.lua)


## Overview

This function is called within a touch listener, and at the end of the touch event returns the recognized gesture (or False).


## Syntax

	gesture.gestureListener( event )

##### event <small>(required)</small>
_[Table](http://docs.coronalabs.com/api/type/Table.html)._ The event parameter to the touch listener.


## Examples

``````lua
local gesture = require 'plugin.gesture'

-- Add gesture listener to the background
local background = display.newRect(0, 0, display.contentWidth, dispay.contentHeight)

function background:touch(event)
	-- Call this before doing anything else in the touch listener
	local gestureResult = gesture.gestureListener(event)

	print(gestureResult)
end

background:addEventListener("touch", background)
``````
