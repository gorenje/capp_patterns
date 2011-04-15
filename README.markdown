Geometric Patterns
------------------

Based on [islamic_patterns][ref1] but instead of using [ProcessingJS][ref2], this uses 
[Cappuccino][ref3] to do the drawing.

Building
--------

To build cappuccino project:

    git clone git://github.com/gorenje/capp_patterns.git
    git submodule update --init
    cd Libraries/Cappuccino
    jake release && jake debug
    cd ../GRKit
    jake release && jake debug
    cd ../..
    open index.html

Demo
----

Live [demo][ref5] can be viewed [here][ref5].

Inspiration
-----------

Inspired by [Islamic Patterns: An Analytical and Cosmological Approach][ref4]

[ref1]: https://github.com/gorenje/islamic_patterns
[ref2]: http://ProcessingJS.org
[ref3]: http://cappuccino.org
[ref4]: http://www.amazon.de/Islamic-Patterns-Analytical-Cosmological-Approach/dp/0500270716/ref=sr_1_1?ie=UTF8&s=books-intl-de&qid=1285012540&sr=8-1
[ref5]: http://2monki.es/capp_patterns/Build/Flatten/patterns/index.html
