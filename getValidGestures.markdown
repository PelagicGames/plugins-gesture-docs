# simple_gesture.getValidGestures()

|                      | &nbsp; 
| -------------------- | ---------------------------------------------------------------
| __Type__             | [function](http://docs.coronalabs.com/api/type/Function.html)
| __Library__          | [simple_gesture.*](Readme.markdown)
| __Return value__     | [Array](http://docs.coronalabs.com/api/type/Array.html)
| __Keywords__         | simple, gesture, valid
| __See also__         | [Sample code](sample.lua), [simple_gesture.setValidGestures()](setValidGestures.markdown), [simple_gesture.getSupportedGestures()](getSupportedGestures.markdown)


## Overview

This function returns an array of the names of the valid gestures. These are the currently recognized gestures, as set by [simple_gesture.setValidGestures()](setValidGestures.markdown). By default, the valid gestures are the full set of supported gestures, as returned by [simple_gesture.getSupportedGestures()](getSupportedGestures.markdown).


## Syntax

	simple_gesture.getValidGestures()


## Examples

``````lua
local simple_gesture = require 'plugin.simple_gesture'

local validGestures = simple_gesture.getValidGestures()
print("Valid gestures: ")

for index=1,#validGestures do
	print("  " .. validGestures[index])
end
``````
