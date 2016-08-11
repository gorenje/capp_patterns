@STATIC;1.0;i;14;CPFlashMovie.ji;8;CPView.jt;6482;objj_executeFile("CPFlashMovie.j", YES);
objj_executeFile("CPView.j", YES);
var IEFlashCLSID = "clsid:D27CDB6E-AE6D-11cf-96B8-444553540000";
{var the_class = objj_allocateClassPair(CPView, "CPFlashView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_flashMovie"), new objj_ivar("_params"), new objj_ivar("_paramElements"), new objj_ivar("_DOMParamElement"), new objj_ivar("_DOMObjectElement"), new objj_ivar("_DOMInnerObjectElement")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $CPFlashView__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPFlashView").super_class }, "initWithFrame:", aFrame);
    if (self)
    {
        if (!CPBrowserIsEngine(CPInternetExplorerBrowserEngine))
        {
            _DOMObjectElement = document.createElement("object");
            _DOMObjectElement.width = "100%";
            _DOMObjectElement.height = "100%";
            _DOMObjectElement.style.top = "0px";
            _DOMObjectElement.style.left = "0px";
            _DOMObjectElement.type = "application/x-shockwave-flash";
            _DOMObjectElement.setAttribute("classid", IEFlashCLSID);
            _DOMParamElement = document.createElement("param");
            _DOMParamElement.name = "movie";
            _DOMInnerObjectElement = document.createElement("object");
            _DOMInnerObjectElement.width = "100%";
            _DOMInnerObjectElement.height = "100%";
            _DOMObjectElement.appendChild(_DOMParamElement);
            _DOMObjectElement.appendChild(_DOMInnerObjectElement);
            _DOMElement.appendChild(_DOMObjectElement);
        }
        else
            objj_msgSend(self, "_rebuildIEObjects");
    }
    return self;
}
},["id","CGRect"]), new objj_method(sel_getUid("setFlashMovie:"), function $CPFlashView__setFlashMovie_(self, _cmd, aFlashMovie)
{ with(self)
{
    if (_flashMovie == aFlashMovie)
        return;
    _flashMovie = aFlashMovie;
    if (!CPBrowserIsEngine(CPInternetExplorerBrowserEngine))
    {
        _DOMParamElement.value = objj_msgSend(aFlashMovie, "filename");
        _DOMInnerObjectElement.data = objj_msgSend(aFlashMovie, "filename");
    }
    else
        objj_msgSend(self, "_rebuildIEObjects");
}
},["void","CPFlashMovie"]), new objj_method(sel_getUid("flashMovie"), function $CPFlashView__flashMovie(self, _cmd)
{ with(self)
{
    return _flashMovie;
}
},["CPFlashMovie"]), new objj_method(sel_getUid("setFlashVars:"), function $CPFlashView__setFlashVars_(self, _cmd, aDictionary)
{ with(self)
{
    var varString = "",
        enumerator = objj_msgSend(aDictionary, "keyEnumerator");
    var key;
    while (key = objj_msgSend(enumerator, "nextObject"))
        varString = objj_msgSend(varString, "stringByAppendingFormat:", "&%@=%@", key, objj_msgSend(aDictionary, "objectForKey:", key));
    if (!_params)
        _params = objj_msgSend(CPDictionary, "dictionary");
    objj_msgSend(_params, "setObject:forKey:", varString, "flashvars");
    objj_msgSend(self, "setParameters:", _params);
}
},["void","CPDictionary"]), new objj_method(sel_getUid("flashVars"), function $CPFlashView__flashVars(self, _cmd)
{ with(self)
{
    return objj_msgSend(_params, "objectForKey:", "flashvars");
}
},["CPDictionary"]), new objj_method(sel_getUid("setParameters:"), function $CPFlashView__setParameters_(self, _cmd, aDictionary)
{ with(self)
{
    if (_paramElements && !CPBrowserIsEngine(CPInternetExplorerBrowserEngine))
    {
        var elements = objj_msgSend(_paramElements, "allValues"),
            count = objj_msgSend(elements, "count");
        for (var i = 0; i < count; i++)
            _DOMObjectElement.removeChild(objj_msgSend(elements, "objectAtIndex:", i));
    }
    _params = aDictionary;
    if (!CPBrowserIsEngine(CPInternetExplorerBrowserEngine))
    {
        _paramElements = objj_msgSend(CPDictionary, "dictionary");
        var enumerator = objj_msgSend(_params, "keyEnumerator"),
            key;
        while (key = objj_msgSend(enumerator, "nextObject") && _DOMObjectElement)
        {
            var param = document.createElement("param");
            param.name = key;
            param.value = objj_msgSend(_params, "objectForKey:", key);
            _DOMObjectElement.appendChild(param);
            objj_msgSend(_paramElements, "setObject:forKey:", param, key);
        }
    }
    else
        objj_msgSend(self, "_rebuildIEObjects");
}
},["void","CPDictionary"]), new objj_method(sel_getUid("parameters"), function $CPFlashView__parameters(self, _cmd)
{ with(self)
{
    return _params;
}
},["CPDictionary"]), new objj_method(sel_getUid("_rebuildIEObjects"), function $CPFlashView___rebuildIEObjects(self, _cmd)
{ with(self)
{
    _DOMElement.innerHTML = "";
    if (!objj_msgSend(_flashMovie, "filename"))
        return;
    var paramString = objj_msgSend(CPString, "stringWithFormat:", "<param name='movie' value='%@' />", objj_msgSend(_flashMovie, "filename")),
        paramEnumerator = objj_msgSend(_params, "keyEnumerator"),
        key;
    while (key = objj_msgSend(paramEnumerator, "nextObject"))
        paramString = objj_msgSend(paramString, "stringByAppendingFormat:", "<param name='%@' value='%@' />", key, objj_msgSend(_params, "objectForKey:", key));
    _DOMObjectElement = document.createElement("object");
    _DOMElement.appendChild(_DOMObjectElement);
    _DOMObjectElement.outerHTML = objj_msgSend(CPString, "stringWithFormat:", "<object classid=%@ width=%@ height=%@>%@</object>", IEFlashCLSID, CGRectGetWidth(objj_msgSend(self, "bounds")), CGRectGetHeight(objj_msgSend(self, "bounds")), paramString);
}
},["void"]), new objj_method(sel_getUid("mouseDragged:"), function $CPFlashView__mouseDragged_(self, _cmd, anEvent)
{ with(self)
{
    objj_msgSend(objj_msgSend(objj_msgSend(self, "window"), "platformWindow"), "_propagateCurrentDOMEvent:", YES);
}
},["void","CPEvent"]), new objj_method(sel_getUid("mouseDown:"), function $CPFlashView__mouseDown_(self, _cmd, anEvent)
{ with(self)
{
    objj_msgSend(objj_msgSend(objj_msgSend(self, "window"), "platformWindow"), "_propagateCurrentDOMEvent:", YES);
}
},["void","CPEvent"]), new objj_method(sel_getUid("mouseUp:"), function $CPFlashView__mouseUp_(self, _cmd, anEvent)
{ with(self)
{
    objj_msgSend(objj_msgSend(objj_msgSend(self, "window"), "platformWindow"), "_propagateCurrentDOMEvent:", YES);
}
},["void","CPEvent"])]);
}

