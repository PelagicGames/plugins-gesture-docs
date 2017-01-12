# gesture: Plugin API Docs

|                      | &nbsp; 
| -------------------- | ---------------------------------------------------------------
| __Type__             | [Library](http://docs.coronalabs.com/api/type/Library.html)
| __Corona Store__     | [gesture](http://store.coronalabs.com/plugin/gesture)
| __Keywords__         | gesture, touch, event, listener
| __See also__         | [Sample code](sample.lua)

## Overview

The gesture plugin can be used in your [Corona](https://coronalabs.com/products/corona-sdk/) project. It enables you to enhance touch listeners on large objects, such as background images, to recognise gesture events, such as directional swipes.


## Syntax

	local gesture = require "plugin.gesture"

### Functions

##### [gesture.setValidGestures()](setValidGestures.markdown)

##### [gesture.gestureListener()](gestureListener.markdown)

##### [gesture.getValidGestures()](getValidGestures.markdown)

##### [gesture.getSupportedGestures()](getSupportedGestures.markdown)


### SDK

When you build using the Corona Simulator, the server automatically takes care of integrating the plugin into your project. 

All you need to do is add an entry into a `plugins` table of your `build.settings`. The following is an example of a minimal `build.settings` file:

``````
settings =
{
	plugins =
	{
		-- key is the name passed to Lua's 'require()'
		["plugin.gesture"] =
		{
			-- required
			publisherId = "com.pelagic-games",
		},
	},		
}
``````

### Enterprise

If you have activated this plugin, you can download this plugin from the corresponding plugin page in the [Corona Store](http://store.coronalabs.com/plugin/gesture).


## Resources

### Sample Code

You can access sample code [here](sample.lua).

### Support

More support is available from the Pelagic Games team:

* [E-mail](mailto://support@pelagic-games)
* [Plugin Publisher](http://www.pelagic-games.com)


## Compatibility

| Platform                     | Supported
| ---------------------------- | ---------------------------- 
| iOS                          | Yes
| Android                      | Yes
| Android (GameStick)          | Yes
| Android (Kindle)             | Yes
| Android (NOOK)               | Yes
| Android (Ouya)               | Yes
| Mac App                      | Yes
| Win32 App                    | Yes
| Windows Phone 8              | Yes
| Corona Simulator (Mac)       | Yes
| Corona Simulator (Win)       | Yes

