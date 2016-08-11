@STATIC;1.0;i;9;CPColor.ji;19;CPGraphicsContext.jt;2799;objj_executeFile("CPColor.j", YES);
objj_executeFile("CPGraphicsContext.j", YES);
CPDrawTiledRects= function(
                boundsRect,
                clipRect,
                      sides,
                 grays)
{
    if (sides.length != grays.length)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "sides (length: " + sides.length + ") and grays (length: " + grays.length + ") must have the same length.");
    var colors = [];
    for (var i = 0; i < grays.length; ++i)
        colors.push(objj_msgSend(CPColor, "colorWithCalibratedWhite:alpha:", grays[i], 1.0));
    return CPDrawColorTiledRects(boundsRect, clipRect, sides, colors);
}
CPDrawColorTiledRects= function(
                boundsRect,
                clipRect,
                      sides,
                   colors)
{
    if (sides.length != colors.length)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "sides (length: " + sides.length + ") and colors (length: " + colors.length + ") must have the same length.");
    var resultRect = { origin: { x:boundsRect.origin.x, y:boundsRect.origin.y }, size: { width:boundsRect.size.width, height:boundsRect.size.height } },
        slice = { origin: { x:0.0, y:0.0 }, size: { width:0.0, height:0.0 } },
        remainder = { origin: { x:0.0, y:0.0 }, size: { width:0.0, height:0.0 } },
        context = objj_msgSend(objj_msgSend(CPGraphicsContext, "currentContext"), "graphicsPort");
    CGContextSaveGState(context);
    CGContextSetLineWidth(context, 1.0);
    for (var sideIndex = 0; sideIndex < sides.length; ++sideIndex)
    {
        var side = sides[sideIndex];
        CGRectDivide(resultRect, slice, remainder, 1.0, side);
        resultRect = remainder;
        slice = CGRectIntersection(slice, clipRect);
        if ((slice.size.width <= 0.0 || slice.size.height <= 0.0))
            continue;
        var minX, maxX, minY, maxY;
        if (side == CPMinXEdge || side == CPMaxXEdge)
        {
            if ((slice.size.width) < 1.0)
                continue;
            minX = (slice.origin.x) + 0.5;
            maxX = minX;
            minY = (slice.origin.y);
            maxY = (slice.origin.y + slice.size.height);
        }
        else
        {
            if ((slice.size.height) < 1.0)
                continue;
            minX = (slice.origin.x);
            maxX = (slice.origin.x + slice.size.width);
            minY = (slice.origin.y) + 0.5;
            maxY = minY;
        }
        CGContextBeginPath(context);
        CGContextMoveToPoint(context, minX, minY);
        CGContextAddLineToPoint(context, maxX, maxY);
        CGContextSetStrokeColor(context, colors[sideIndex]);
        CGContextStrokePath(context);
    }
    CGContextRestoreGState(context);
    return resultRect;
}

