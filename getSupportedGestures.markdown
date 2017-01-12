# gesture.getSupportedGestures()

|                      | &nbsp; 
| -------------------- | ---------------------------------------------------------------
| __Type__             | [function](http://docs.coronalabs.com/api/type/Function.html)
| __Library__          | [gesture.*](Readme.markdown)
| __Return value__     | [Array](http://docs.coronalabs.com/api/type/Array.html)
| __Keywords__         | gesture, supported
| __See also__         | [Sample code](sample.lua), [gesture.setValidGestures()](setValidGestures.markdown)


## Overview

This function returns an array of the names of the supported gestures. These are the valid inputs to [gesture.setValidGestures()](setValidGestures.markdown).


## Syntax

	gesture.getSupportedGestures()


## Examples

``````lua
local gesture = require 'plugin.gesture'

local supportedGestures = gesture.getSupportedGestures()
print("Supported gestures: ")

for index=1,#supportedGestures do
	print("  " .. supportedGestures[index])
end
``````
