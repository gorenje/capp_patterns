@STATIC;1.0;I;21;Foundation/CPObject.jt;6877;objj_executeFile("Foundation/CPObject.j", NO);
{var the_class = objj_allocateClassPair(CPObject, "CPBasePlatformString"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("bootstrap"), function $CPBasePlatformString__bootstrap(self, _cmd)
{ with(self)
{
}
},["void"]), new objj_method(sel_getUid("sizeOfString:withFont:forWidth:"), function $CPBasePlatformString__sizeOfString_withFont_forWidth_(self, _cmd, aString, aFont, aWidth)
{ with(self)
{
    return { width:0.0, height:0.0 };
}
},["CGSize","CPString","CPFont","float"])]);
}
var DOMFixedWidthSpanElement = nil,
    DOMFlexibleWidthSpanElement = nil,
    DOMMetricsDivElement = nil,
    DOMMetricsTextSpanElement = nil,
    DOMMetricsImgElement = nil,
    DOMIFrameElement = nil,
    DOMIFrameDocument = nil,
    DefaultFont = nil;
{var the_class = objj_allocateClassPair(CPBasePlatformString, "CPPlatformString"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("bootstrap"), function $CPPlatformString__bootstrap(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "createDOMElements");
}
},["void"]), new objj_method(sel_getUid("createDOMElements"), function $CPPlatformString__createDOMElements(self, _cmd)
{ with(self)
{
    var style;
    DOMIFrameElement = document.createElement("iframe");
    DOMIFrameElement.name = "iframe_" + FLOOR(RAND() * 10000);
    DOMIFrameElement.className = "cpdontremove";
    style = DOMIFrameElement.style;
    style.position = "absolute";
    style.left = "-100px";
    style.top = "-100px";
    style.width = "1px";
    style.height = "1px";
    style.borderWidth = "0px";
    style.overflow = "hidden";
    style.zIndex = 100000000000;
    var bodyElement = objj_msgSend(CPPlatform, "mainBodyElement");
    bodyElement.appendChild(DOMIFrameElement);
    DOMIFrameDocument = (DOMIFrameElement.contentDocument || DOMIFrameElement.contentWindow.document);
    DOMIFrameDocument.write('<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'+
                            '<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"><head></head><body></body></html>');
    DOMIFrameDocument.close();
    var DOMDivElement = DOMIFrameDocument.createElement("div");
    DOMDivElement.style.position = "absolute";
    DOMDivElement.style.width = "100000px";
    DOMIFrameDocument.body.appendChild(DOMDivElement);
    DOMFlexibleWidthSpanElement = DOMIFrameDocument.createElement("span");
    style = DOMFlexibleWidthSpanElement.style;
    style.position = "absolute";
    style.visibility = "visible";
    style.padding = "0px";
    style.margin = "0px";
    style.whiteSpace = "pre";
    DOMFixedWidthSpanElement = DOMIFrameDocument.createElement("span");
    style = DOMFixedWidthSpanElement.style;
    style.display = "block";
    style.position = "absolute";
    style.visibility = "visible";
    style.padding = "0px";
    style.margin = "0px";
    style.width = "1px";
    style.wordWrap = "break-word";
    try
    {
        style.whiteSpace = "pre";
        style.whiteSpace = "-o-pre-wrap";
        style.whiteSpace = "-pre-wrap";
        style.whiteSpace = "-moz-pre-wrap";
        style.whiteSpace = "pre-wrap";
    }
    catch(e)
    {
        style.whiteSpace = "pre";
    }
    DOMDivElement.appendChild(DOMFlexibleWidthSpanElement);
    DOMDivElement.appendChild(DOMFixedWidthSpanElement);
}
},["void"]), new objj_method(sel_getUid("createDOMMetricsElements"), function $CPPlatformString__createDOMMetricsElements(self, _cmd)
{ with(self)
{
    if (!DOMIFrameElement)
        objj_msgSend(self, "createDOMElements");
    var style;
    DOMMetricsDivElement = DOMIFrameDocument.createElement("div");
    DOMMetricsDivElement.style.position = "absolute";
    DOMMetricsDivElement.style.width = "100000px";
    DOMIFrameDocument.body.appendChild(DOMMetricsDivElement);
    DOMMetricsTextSpanElement = DOMIFrameDocument.createElement("span");
    DOMMetricsTextSpanElement.innerHTML = "x";
    style = DOMMetricsTextSpanElement.style;
    style.position = "absolute";
    style.visibility = "visible";
    style.padding = "0px";
    style.margin = "0px";
    style.whiteSpace = "pre";
    var imgPath = objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(CPView, "class")), "pathForResource:", "empty.png");
    DOMMetricsImgElement = DOMIFrameDocument.createElement("img");
    DOMMetricsImgElement.setAttribute("src", imgPath);
    DOMMetricsImgElement.setAttribute("width", "1");
    DOMMetricsImgElement.setAttribute("height", "1");
    DOMMetricsImgElement.setAttribute("alt", "");
    style = DOMMetricsImgElement.style;
    style.visibility = "visible";
    style.padding = "0px";
    style.margin = "0px";
    style.border = "none";
    style.verticalAlign = "baseline";
    DOMMetricsDivElement.appendChild(DOMMetricsTextSpanElement);
    DOMMetricsDivElement.appendChild(DOMMetricsImgElement);
}
},["void"]), new objj_method(sel_getUid("sizeOfString:withFont:forWidth:"), function $CPPlatformString__sizeOfString_withFont_forWidth_(self, _cmd, aString, aFont, aWidth)
{ with(self)
{
    if (!aFont)
    {
        if (!DefaultFont)
            DefaultFont = objj_msgSend(CPFont, "systemFontOfSize:", 12.0);
        aFont = DefaultFont;
    }
    if (!DOMIFrameElement)
        objj_msgSend(self, "createDOMElements");
    var span;
    if (!aWidth)
        span = DOMFlexibleWidthSpanElement;
    else
    {
        span = DOMFixedWidthSpanElement;
        span.style.width = ROUND(aWidth) + "px";
    }
    span.style.font = objj_msgSend(aFont, "cssString");
    if (CPFeatureIsCompatible(CPJavaScriptInnerTextFeature))
        span.innerText = aString;
    else if (CPFeatureIsCompatible(CPJavaScriptTextContentFeature))
        span.textContent = aString;
    return { width:span.clientWidth, height:span.clientHeight };
}
},["CGSize","CPString","CPFont","float"]), new objj_method(sel_getUid("metricsOfFont:"), function $CPPlatformString__metricsOfFont_(self, _cmd, aFont)
{ with(self)
{
    if (!aFont)
    {
        if (!DefaultFont)
            DefaultFont = objj_msgSend(CPFont, "systemFontOfSize:", 12.0);
        aFont = DefaultFont;
    }
    if (!DOMMetricsDivElement)
        objj_msgSend(self, "createDOMMetricsElements");
    DOMMetricsDivElement.style.font = objj_msgSend(aFont, "cssString");
    var baseline = DOMMetricsImgElement.offsetTop - DOMMetricsTextSpanElement.offsetTop + DOMMetricsImgElement.offsetHeight,
        descender = baseline - DOMMetricsTextSpanElement.offsetHeight,
        lineHeight = DOMMetricsTextSpanElement.offsetHeight;
    return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", baseline, "ascender", descender, "descender", lineHeight, "lineHeight");
}
},["CPDictionary","CPFont"])]);
}

