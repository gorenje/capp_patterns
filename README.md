Geometric Patterns
------------------

Based on [islamic_patterns][ref1] but instead of using
[ProcessingJS][ref2], this uses [Cappuccino][ref3] to do the drawing.

Inspiration was taken from
[Islamic Patterns: An Analytical and Cosmological Approach][ref4]
and all images are created using geometric algorithms -- no images or
screenshots.

The patterns properties can be modified, the patterns aren't static.

Building
--------

*UPDATE*: Building no longer works since the Cappuccino being used is far
too old! But the version of cappuccino with which the code base works is
bundled into this project, so editing the code base will still work.

Having [downloaded][ref6] and installed Cappuccino, to build this:

    git clone git://github.com/gorenje/capp_patterns.git
    git submodule update --init
    cd Libraries/Cappuccino
    jake release && jake debug
    cd ../GRKit
    jake release && jake debug
    cd ../..
    open index.html

Cappuccino is linked into this project in the Libraries directory and
will be used from
there. That makes sure that a working version of Cappuccino is being used ;)

GRKit is just a bunch of helpers for doing rotation and geometry calculations.

Demo
----

A live [demo][ref5] is available.

You can view patterns but also edit their properties by using the
'Pattern Property' button on the top left. The current settings can be
dumped to the console window (i.e. FireBug or Web Inspector) but can only
be integrated by cloning the project and adding as a new pattern class.

Previews
--------

There is a [preview](/preview.md) with links to the demo, there is a [preview](/preview.raw.md) with links to larger pngs and there is a [preview](/preview.svg.md) with links to SVGs.

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
[ref5]: https://gorenje.github.io/capp_patterns/
[ref6]: http://cappuccino.org/download/
