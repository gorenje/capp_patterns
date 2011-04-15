Geometric Patterns
------------------

Based on [islamic_patterns][ref1] but instead of using [ProcessingJS][ref2], this uses 
[Cappuccino][ref3] to do the drawing.

Inspiration was taken from [Islamic Patterns: An Analytical and Cosmological Approach][ref4]
and all images are created using geometric algorithms -- no images or screenshots.

The patterns properties can be modified, the patterns aren't static.

Building
--------

Having [downloaded][ref6] and installed Cappuccino, to build this:

    git clone git://github.com/gorenje/capp_patterns.git
    git submodule update --init
    cd Libraries/Cappuccino
    jake release && jake debug
    cd ../GRKit
    jake release && jake debug
    cd ../..
    open index.html

Cappuccino is linked into this project in the Libraries directory and will be used from
there. That makes sure that a working version of Cappuccino is being used ;)

GRKit is just a bunch of helpers for doing rotation and geometry calculations.

Demo
----

Live [demo][ref5] can be viewed [here][ref5]. 

You can view patterns but also edit thier properties by using the 'Pattern Property' 
button on the top left. The current settings can be dumped to the console window (i.e.
FireBug or Web Inspector) but can only be integrated by cloning the project and adding
a new pattern class.

Inspiration
-----------

Inspired by [Islamic Patterns: An Analytical and Cosmological Approach][ref4]

Why
---

To demostrate (to myself) how to draw in Cappuccino and to understand how to generate
complex patterns just using circles. But basically, it's the same kind of 'why' as
in 'why did hillary climb that mountain'.

[ref1]: https://github.com/gorenje/islamic_patterns
[ref2]: http://ProcessingJS.org
[ref3]: http://cappuccino.org
[ref4]: http://www.amazon.de/Islamic-Patterns-Analytical-Cosmological-Approach/dp/0500270716/ref=sr_1_1?ie=UTF8&s=books-intl-de&qid=1285012540&sr=8-1
[ref5]: http://2monki.es/capp_patterns/Build/Flatten/patterns/index.html
[ref6]: http://cappuccino.org/download/
