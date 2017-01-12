# gesture.getValidGestures()

|                      | &nbsp; 
| -------------------- | ---------------------------------------------------------------
| __Type__             | [function](http://docs.coronalabs.com/api/type/Function.html)
| __Library__          | [gesture.*](Readme.markdown)
| __Return value__     | [Array](http://docs.coronalabs.com/api/type/Array.html)
| __Keywords__         | gesture, valid
| __See also__         | [Sample code](sample.lua), [gesture.setValidGestures()](setValidGestures.markdown), [gesture.getSupportedGestures()](getSupportedGestures.markdown)


## Overview

This function returns an array of the names of the valid gestures. These are the currently recognized gestures, as set by [gesture.setValidGestures()](setValidGestures.markdown). By default, the valid gestures are the full set of supported gestures, as returned by [gesture.getSupportedGestures()](getSupportedGestures.markdown).


## Syntax

	gesture.getValidGestures()


## Examples

``````lua
local gesture = require 'plugin.gesture'

local validGestures = gesture.getValidGestures()
print("Valid gestures: ")

for index=1,#validGestures do
	print("  " .. validGestures[index])
end
``````
