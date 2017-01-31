# simple_gesture.getSupportedGestures()

|                      | &nbsp; 
| -------------------- | ---------------------------------------------------------------
| __Type__             | [function](http://docs.coronalabs.com/api/type/Function.html)
| __Library__          | [simple_gesture.*](Readme.markdown)
| __Return value__     | [Array](http://docs.coronalabs.com/api/type/Array.html)
| __Keywords__         | simple, gesture, supported
| __See also__         | [Sample code](sample.lua), [simple_gesture.setValidGestures()](setValidGestures.markdown)


## Overview

This function returns an array of the names of the supported gestures. These are the valid inputs to [simple_gesture.setValidGestures()](setValidGestures.markdown).


## Syntax

	simple_gesture.getSupportedGestures()


## Examples

``````lua
local simple_gesture = require 'plugin.simple_gesture'

local supportedGestures = simple_gesture.getSupportedGestures()
print("Supported gestures: ")

for index=1,#supportedGestures do
	print("  " .. supportedGestures[index])
end
``````
