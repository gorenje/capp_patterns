@STATIC;1.0;i;9;CGColor.ji;14;CGColorSpace.jt;878;objj_executeFile("CGColor.j", YES);
objj_executeFile("CGColorSpace.j", YES);
kCGGradientDrawsBeforeStartLocation = 1 << 0;
kCGGradientDrawsAfterEndLocation = 1 << 1;
CGGradientCreateWithColorComponents= function(aColorSpace, components, locations, count)
{
    if (locations === NULL)
        var locations = [0.0, 1.0];
    if (count === NULL)
        var count = locations.length;
    var colors = [];
    while (count--)
    {
        var offset = count * 4;
        colors[count] = CGColorCreate(aColorSpace, components.slice(offset, offset + 4));
    }
    return CGGradientCreateWithColors(aColorSpace, colors, locations);
}
CGGradientCreateWithColors= function(aColorSpace, colors, locations)
{
    return { colorspace:aColorSpace, colors:colors, locations:locations };
}
CGGradientRelease= function()
{
}
CGGradientRetain= function(aGradient)
{
    return aGradient;
}

