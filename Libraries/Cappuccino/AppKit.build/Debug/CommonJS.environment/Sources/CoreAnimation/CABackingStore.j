@STATIC;1.0;i;12;CGGeometry.ji;17;CPCompatibility.jt;923;objj_executeFile("CGGeometry.j", YES);
objj_executeFile("CPCompatibility.j", YES);
CABackingStoreGetContext= function(aBackingStore)
{
    return aBackingStore.context;
}
if (CPFeatureIsCompatible(CPHTMLCanvasFeature))
{
CABackingStoreCreate = function()
{
    var DOMElement = document.createElement("canvas");
    DOMElement.style.position = "absolute";
    return { context:DOMElement.getContext("2d"), buffer:DOMElement, _image:DOMElement };
}
CABackingStoreSetSize = function(aBackingStore, aSize)
{
    var buffer = aBackingStore.buffer;
    buffer.width = aSize.width;
    buffer.height = aSize.height;
    buffer.style.width = aSize.width + "px";;
    buffer.style.height = aSize.height + "px";;
}
}
else
{
CABackingStoreCreate = function()
{
    var context = CGBitmapGraphicsContextCreate();
    context.buffer = "";
    return { context:context };
}
CABackingStoreSetSize = function(aBackingStore, aSize)
{
}
}

