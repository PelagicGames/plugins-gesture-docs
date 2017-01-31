# simple_gesture.setValidGestures()

|                      | &nbsp; 
| -------------------- | ---------------------------------------------------------------
| __Type__             | [function](http://docs.coronalabs.com/api/type/Function.html)
| __Library__          | [simple_gesture.*](Readme.markdown)
| __Return value__     | nil
| __Keywords__         | simple, gesture, valid
| __See also__         | [Sample code](sample.lua), [simple_gesture.getValidGestures()](getValidGestures.markdown), [simple_gesture.getSupportedGestures()](getSupportedGestures.markdown), [simple_gesture.gestureListener()](gestureListener.markdown)


## Overview

This function sets the valid gestures that can be returned by [simple_gesture.gestureListener()](gestureListener.markdown). These must be either custom-defined gestures or supported, built-in gestures. A runtime error is raised if an unsupported gesture is specified.


## Syntax

	simple_gesture.setValidGestures( gestureArray )
	simple_gesture.setValidGestures( gestureTable )


##### gestureArray <small>(required)</small>
_[Array](http://docs.coronalabs.com/api/type/Array.html)._ Array of string values that must be supported gesture types, as reported by [simple_gesture.getSupportedGestures()](getSupportedGestures.markdown)

##### gestureTable <small>(required)</small>
_[Table](http://docs.coronalabs.com/api/type/Table.html)._ Used as an alternative to gestureArray for overriding the supported, built-in gestures. The keys are the names of the newly-defined gestures, and the values are [Arrays](http://docs.coronalabs.com/api/type/Array.html), comprising the x and y coordinates of points on the unit circle.


## Examples

``````lua
local simple_gesture = require 'plugin.simple_gesture'

-- Set gestures from the supported, built-in gestures
simple_gesture.setValidGestures({"up", "down", "left", "right"})
``````

``````lua
local simple_gesture = require 'plugin.simple_gesture'
local math = require 'math'

local root2 = math.sqrt(2)

-- Define your own custom gestures
simple_gesture.setValidGestures({up_left={-root2, -root2}, down_left={-root2, root2}, right={1, 0}})
``````
