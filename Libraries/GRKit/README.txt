Some utilities for Cappuccino
=============================

Still work in progress.

GRClassMixin
------------

Runtime helper for mixing functionality into existing objects. Similiar to the
mixins found in Ruby but to runtime. That means that methods defined by the class
including the mixin, *will* be overridden and lost. A mixin should not define
methods that a class wants to define.

GRRotateView
------------

Provide the basics for creating a view that can rotate it self and still know whether
a mouse event is destined for the view.

GRInfoWindow
------------

Subclass of CPAlert that allows having no buttons. It was possible to have a CPAlert
with no button in release 0.8.1 of Cappuccino, but with 0.9.x this was removed. So
this class provides a no-button-alert window.

GRCommWorker
------------

Wrapper around CPURLConnection and LPURLPostRequest to provide the REST actions
(DELETE and PUT in addition to GET and POST). These wrappers assume that the
response is Json and pass back a JSObject to the delegate.

GRColorStopPicker
-----------------

Provide an extra tab to the CPColorPanel to allow for the definition of gradients.
This is still experimental, use it at your own risk and see g_r_color_stop_picker.j
for details on usage.

Usage
=====

Similiar to other Frameworks, this should be included in the Frameworks directory
in your application:

cd Frameworks && git clone git://github.com/gorenje/GRKit.git

Or if you like, add an extra Libraries directory, build the library and link from
Frameworks directory:

### checkout and build library.
cd Libraries
git clone git://github.com/gorenje/GRKit.git
cd GRKit
jake release && jake debug

### link from frameworks
cd ../../Frameworks
ln -s ../Libraries/GRKit/Build/Release/GRKit
cd Debug
ln -s ../../Libraries/GRKit/Build/Debug/GRKit

This setup can be seen in action at:
  https://github.com/primalmotion/Archipel/tree/master/ArchipelClient

