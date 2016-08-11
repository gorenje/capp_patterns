@STATIC;1.0;i;16;CPCharacterSet.ji;14;CPDictionary.ji;10;CPString.jt;10640;objj_executeFile("CPCharacterSet.j", YES);
objj_executeFile("CPDictionary.j", YES);
objj_executeFile("CPString.j", YES);
{var the_class = objj_allocateClassPair(CPObject, "CPScanner"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_string"), new objj_ivar("_locale"), new objj_ivar("_scanLocation"), new objj_ivar("_caseSensitive"), new objj_ivar("_charactersToBeSkipped")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithString:"), function $CPScanner__initWithString_(self, _cmd, aString)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPScanner").super_class }, "init"))
    {
        _string = objj_msgSend(aString, "copy");
        _scanLocation = 0;
        _charactersToBeSkipped = objj_msgSend(CPCharacterSet, "whitespaceCharacterSet");
        _caseSensitive = NO;
    }
    return self;
}
},["id","CPString"]), new objj_method(sel_getUid("copy"), function $CPScanner__copy(self, _cmd)
{ with(self)
{
    var copy = objj_msgSend(objj_msgSend(CPScanner, "alloc"), "initWithString:", objj_msgSend(self, "string"));
    objj_msgSend(copy, "setCharactersToBeSkipped:", objj_msgSend(self, "charactersToBeSkipped"));
    objj_msgSend(copy, "setCaseSensitive:", objj_msgSend(self, "caseSensitive"));
    objj_msgSend(copy, "setLocale:", objj_msgSend(self, "locale"));
    objj_msgSend(copy, "setScanLocation:", objj_msgSend(self, "scanLocation"));
    return copy;
}
},["id"]), new objj_method(sel_getUid("locale"), function $CPScanner__locale(self, _cmd)
{ with(self)
{
    return _locale;
}
},["CPDictionary"]), new objj_method(sel_getUid("setLocale:"), function $CPScanner__setLocale_(self, _cmd, aLocale)
{ with(self)
{
    _locale = aLocale;
}
},["void","CPDictionary"]), new objj_method(sel_getUid("setCaseSensitive:"), function $CPScanner__setCaseSensitive_(self, _cmd, flag)
{ with(self)
{
    _caseSensitive = flag;
}
},["void","BOOL"]), new objj_method(sel_getUid("caseSensitive"), function $CPScanner__caseSensitive(self, _cmd)
{ with(self)
{
    return _caseSensitive;
}
},["BOOL"]), new objj_method(sel_getUid("string"), function $CPScanner__string(self, _cmd)
{ with(self)
{
    return _string;
}
},["CPString"]), new objj_method(sel_getUid("charactersToBeSkipped"), function $CPScanner__charactersToBeSkipped(self, _cmd)
{ with(self)
{
    return _charactersToBeSkipped;
}
},["CPCharacterSet"]), new objj_method(sel_getUid("setCharactersToBeSkipped:"), function $CPScanner__setCharactersToBeSkipped_(self, _cmd, c)
{ with(self)
{
    _charactersToBeSkipped = c;
}
},["void","CPCharacterSet"]), new objj_method(sel_getUid("isAtEnd"), function $CPScanner__isAtEnd(self, _cmd)
{ with(self)
{
    return _scanLocation == _string.length;
}
},["BOOL"]), new objj_method(sel_getUid("scanLocation"), function $CPScanner__scanLocation(self, _cmd)
{ with(self)
{
    return _scanLocation;
}
},["int"]), new objj_method(sel_getUid("setScanLocation:"), function $CPScanner__setScanLocation_(self, _cmd, aLocation)
{ with(self)
{
    if (aLocation > _string.length)
        aLocation = _string.length;
    else if (aLocation < 0)
        aLocation = 0;
    _scanLocation = aLocation;
}
},["void","int"]), new objj_method(sel_getUid("_performScanWithSelector:withObject:into:"), function $CPScanner___performScanWithSelector_withObject_into_(self, _cmd, s, arg, ref)
{ with(self)
{
    var ret = objj_msgSend(self, "performSelector:withObject:", s, arg);
    if (ret == nil)
        return NO;
    if (ref != nil)
        ref(ret);
    return YES;
}
},["BOOL","SEL","id","id"]), new objj_method(sel_getUid("scanCharactersFromSet:intoString:"), function $CPScanner__scanCharactersFromSet_intoString_(self, _cmd, scanSet, ref)
{ with(self)
{
    return objj_msgSend(self, "_performScanWithSelector:withObject:into:", sel_getUid("scanCharactersFromSet:"), scanSet, ref);
}
},["BOOL","CPCharacterSet","id"]), new objj_method(sel_getUid("scanCharactersFromSet:"), function $CPScanner__scanCharactersFromSet_(self, _cmd, scanSet)
{ with(self)
{
    return objj_msgSend(self, "_scanWithSet:breakFlag:", scanSet, NO);
}
},["CPString","CPCharacterSet"]), new objj_method(sel_getUid("scanUpToCharactersFromSet:intoString:"), function $CPScanner__scanUpToCharactersFromSet_intoString_(self, _cmd, scanSet, ref)
{ with(self)
{
    return objj_msgSend(self, "_performScanWithSelector:withObject:into:", sel_getUid("scanUpToCharactersFromSet:"), scanSet, ref);
}
},["BOOL","CPCharacterSet","id"]), new objj_method(sel_getUid("scanUpToCharactersFromSet:"), function $CPScanner__scanUpToCharactersFromSet_(self, _cmd, scanSet)
{ with(self)
{
    return objj_msgSend(self, "_scanWithSet:breakFlag:", scanSet, YES);
}
},["CPString","CPCharacterSet"]), new objj_method(sel_getUid("_scanWithSet:breakFlag:"), function $CPScanner___scanWithSet_breakFlag_(self, _cmd, scanSet, stop)
{ with(self)
{
    if (objj_msgSend(self, "isAtEnd"))
        return nil;
    var current = objj_msgSend(self, "scanLocation"),
        str = nil;
    while (current < _string.length)
    {
        var c = (_string.charAt(current));
        if (objj_msgSend(scanSet, "characterIsMember:", c) == stop)
            break;
        if (!objj_msgSend(_charactersToBeSkipped, "characterIsMember:", c))
        {
            if (!str)
                str = '';
            str += c;
        }
        current++;
    }
    if (str)
        objj_msgSend(self, "setScanLocation:", current);
    return str;
}
},["CPString","CPCharacterSet","BOOL"]), new objj_method(sel_getUid("_movePastCharactersToBeSkipped"), function $CPScanner___movePastCharactersToBeSkipped(self, _cmd)
{ with(self)
{
    var current = objj_msgSend(self, "scanLocation"),
        string = objj_msgSend(self, "string"),
        toSkip = objj_msgSend(self, "charactersToBeSkipped");
    while (current < string.length)
    {
        if (!objj_msgSend(toSkip, "characterIsMember:", string.charAt(current)))
            break;
        current++;
    }
    objj_msgSend(self, "setScanLocation:", current);
}
},["void"]), new objj_method(sel_getUid("scanString:intoString:"), function $CPScanner__scanString_intoString_(self, _cmd, aString, ref)
{ with(self)
{
    return objj_msgSend(self, "_performScanWithSelector:withObject:into:", sel_getUid("scanString:"), aString, ref);
}
},["BOOL","CPString","id"]), new objj_method(sel_getUid("scanString:"), function $CPScanner__scanString_(self, _cmd, s)
{ with(self)
{
    objj_msgSend(self, "_movePastCharactersToBeSkipped");
    if (objj_msgSend(self, "isAtEnd"))
        return nil;
    var currentStr = objj_msgSend(self, "string").substr(objj_msgSend(self, "scanLocation"), s.length);
    if ((_caseSensitive && currentStr != s) || (!_caseSensitive && (currentStr.toLowerCase() != s.toLowerCase())))
    {
        return nil;
    }
    else
    {
        objj_msgSend(self, "setScanLocation:", objj_msgSend(self, "scanLocation") + s.length);
        return s;
    }
}
},["CPString","CPString"]), new objj_method(sel_getUid("scanUpToString:intoString:"), function $CPScanner__scanUpToString_intoString_(self, _cmd, aString, ref)
{ with(self)
{
    return objj_msgSend(self, "_performScanWithSelector:withObject:into:", sel_getUid("scanUpToString:"), aString, ref);
}
},["BOOL","CPString","id"]), new objj_method(sel_getUid("scanUpToString:"), function $CPScanner__scanUpToString_(self, _cmd, s)
{ with(self)
{
    var current = objj_msgSend(self, "scanLocation"),
        str = objj_msgSend(self, "string"),
        captured = nil;
    while (current < str.length)
    {
        var currentStr = str.substr(current, s.length);
        if (currentStr == s || (!_caseSensitive && currentStr.toLowerCase() == s.toLowerCase()))
            break;
        if (!captured)
            captured = '';
        captured += str.charAt(current);
        current++;
    }
    if (captured)
        objj_msgSend(self, "setScanLocation:", current);
    if (objj_msgSend(self, "charactersToBeSkipped"))
        captured = objj_msgSend(captured, "_stringByTrimmingCharactersInSet:options:", objj_msgSend(self, "charactersToBeSkipped"), _CPCharacterSetTrimAtBeginning);
    return captured;
}
},["CPString","CPString"]), new objj_method(sel_getUid("scanWithParseFunction:"), function $CPScanner__scanWithParseFunction_(self, _cmd, parseFunction)
{ with(self)
{
    objj_msgSend(self, "_movePastCharactersToBeSkipped");
    var str = objj_msgSend(self, "string"),
        loc = objj_msgSend(self, "scanLocation");
    if (objj_msgSend(self, "isAtEnd"))
        return 0;
    var s = str.substring(loc, str.length),
        f = parseFunction(s);
    if (isNaN(f))
        return nil;
    loc += (""+f).length;
    var i = 0;
    while (!isNaN(parseFloat(str.substring(loc+i, str.length))))
        {i++;}
    objj_msgSend(self, "setScanLocation:", loc + i);
    return f;
}
},["float","Function"]), new objj_method(sel_getUid("scanFloat"), function $CPScanner__scanFloat(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "scanWithParseFunction:", parseFloat);
}
},["float"]), new objj_method(sel_getUid("scanInt"), function $CPScanner__scanInt(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "scanWithParseFunction:", parseInt);
}
},["int"]), new objj_method(sel_getUid("scanInt:"), function $CPScanner__scanInt_(self, _cmd, intoInt)
{ with(self)
{
    return objj_msgSend(self, "_performScanWithSelector:withObject:into:", sel_getUid("scanInt"), nil, intoInt);
}
},["BOOL","int"]), new objj_method(sel_getUid("scanFloat:"), function $CPScanner__scanFloat_(self, _cmd, intoFloat)
{ with(self)
{
    return objj_msgSend(self, "_performScanWithSelector:withObject:into:", sel_getUid("scanFloat"), nil, intoFloat);
}
},["BOOL","float"]), new objj_method(sel_getUid("scanDouble:"), function $CPScanner__scanDouble_(self, _cmd, intoDouble)
{ with(self)
{
    return objj_msgSend(self, "scanFloat:", intoDouble);
}
},["BOOL","float"]), new objj_method(sel_getUid("description"), function $CPScanner__description(self, _cmd)
{ with(self)
{
    return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPScanner").super_class }, "description") + " {" + CPStringFromClass(objj_msgSend(self, "class")) + ", state = '" + (objj_msgSend(self, "string").substr(0, _scanLocation) + "{{ SCAN LOCATION ->}}" + objj_msgSend(self, "string").substr(_scanLocation)) + "'; }";
}
},["void"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("scannerWithString:"), function $CPScanner__scannerWithString_(self, _cmd, aString)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithString:", aString);
}
},["id","CPString"])]);
}

