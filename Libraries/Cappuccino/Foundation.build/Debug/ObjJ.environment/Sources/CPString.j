@STATIC;1.0;i;13;CPException.ji;10;CPObject.ji;15;CPObjJRuntime.ji;9;CPRange.ji;18;CPSortDescriptor.ji;7;CPURL.ji;9;CPValue.jt;18020;objj_executeFile("CPException.j", YES);
objj_executeFile("CPObject.j", YES);
objj_executeFile("CPObjJRuntime.j", YES);
objj_executeFile("CPRange.j", YES);
objj_executeFile("CPSortDescriptor.j", YES);
objj_executeFile("CPURL.j", YES);
objj_executeFile("CPValue.j", YES);
CPCaseInsensitiveSearch = 1;
CPLiteralSearch = 2;
CPBackwardsSearch = 4;
CPAnchoredSearch = 8;
CPNumericSearch = 64;
CPDiacriticInsensitiveSearch = 128;
var CPStringUIDs = new CFMutableDictionary();
var CPStringRegexSpecialCharacters = [
      '/', '.', '*', '+', '?', '|', '$', '^',
      '(', ')', '[', ']', '{', '}', '\\'
    ],
    CPStringRegexEscapeExpression = new RegExp("(\\" + CPStringRegexSpecialCharacters.join("|\\") + ")", 'g'),
    CPStringRegexTrimWhitespace = new RegExp("(^\\s+|\\s+$)", 'g');
{var the_class = objj_allocateClassPair(CPObject, "CPString"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithString:"), function $CPString__initWithString_(self, _cmd, aString)
{ with(self)
{
    if (objj_msgSend(self, "class") === CPString)
        return String(aString);
    var result = new String(aString);
    result.isa = objj_msgSend(self, "class");
    return result;
}
},["id","CPString"]), new objj_method(sel_getUid("initWithFormat:"), function $CPString__initWithFormat_(self, _cmd, format)
{ with(self)
{
    if (!format)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "initWithFormat: the format can't be 'nil'");
    self = ObjectiveJ.sprintf.apply(this, Array.prototype.slice.call(arguments, 2));
    return self;
}
},["id","CPString"]), new objj_method(sel_getUid("description"), function $CPString__description(self, _cmd)
{ with(self)
{
    return self;
}
},["CPString"]), new objj_method(sel_getUid("length"), function $CPString__length(self, _cmd)
{ with(self)
{
    return length;
}
},["int"]), new objj_method(sel_getUid("characterAtIndex:"), function $CPString__characterAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    return charAt(anIndex);
}
},["CPString","unsigned"]), new objj_method(sel_getUid("stringByAppendingFormat:"), function $CPString__stringByAppendingFormat_(self, _cmd, format)
{ with(self)
{
    if (!format)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "initWithFormat: the format can't be 'nil'");
    return self + ObjectiveJ.sprintf.apply(this, Array.prototype.slice.call(arguments, 2));
}
},["CPString","CPString"]), new objj_method(sel_getUid("stringByAppendingString:"), function $CPString__stringByAppendingString_(self, _cmd, aString)
{ with(self)
{
    return self + aString;
}
},["CPString","CPString"]), new objj_method(sel_getUid("stringByPaddingToLength:withString:startingAtIndex:"), function $CPString__stringByPaddingToLength_withString_startingAtIndex_(self, _cmd, aLength, aString, anIndex)
{ with(self)
{
    if (length == aLength)
        return self;
    if (aLength < length)
        return substr(0, aLength);
    var string = self,
        substring = aString.substring(anIndex),
        difference = aLength - length;
    while ((difference -= substring.length) >= 0)
        string += substring;
    if (-difference < substring.length)
        string += substring.substring(0, -difference);
    return string;
}
},["CPString","unsigned","CPString","unsigned"]), new objj_method(sel_getUid("componentsSeparatedByString:"), function $CPString__componentsSeparatedByString_(self, _cmd, aString)
{ with(self)
{
    return split(aString);
}
},["CPArray","CPString"]), new objj_method(sel_getUid("substringFromIndex:"), function $CPString__substringFromIndex_(self, _cmd, anIndex)
{ with(self)
{
    return substr(anIndex);
}
},["CPString","unsigned"]), new objj_method(sel_getUid("substringWithRange:"), function $CPString__substringWithRange_(self, _cmd, aRange)
{ with(self)
{
    if (aRange.location < 0 || ((aRange).location + (aRange).length) > length)
        objj_msgSend(CPException, "raise:reason:", CPRangeException, "aRange out of bounds");
    return substr(aRange.location, aRange.length);
}
},["CPString","CPRange"]), new objj_method(sel_getUid("substringToIndex:"), function $CPString__substringToIndex_(self, _cmd, anIndex)
{ with(self)
{
    return substring(0, anIndex);
}
},["CPString","unsigned"]), new objj_method(sel_getUid("rangeOfString:"), function $CPString__rangeOfString_(self, _cmd, aString)
{ with(self)
{
   return objj_msgSend(self, "rangeOfString:options:", aString, 0);
}
},["CPRange","CPString"]), new objj_method(sel_getUid("rangeOfString:options:"), function $CPString__rangeOfString_options_(self, _cmd, aString, aMask)
{ with(self)
{
    return objj_msgSend(self, "rangeOfString:options:range:", aString, aMask, nil);
}
},["CPRange","CPString","int"]), new objj_method(sel_getUid("rangeOfString:options:range:"), function $CPString__rangeOfString_options_range_(self, _cmd, aString, aMask, aRange)
{ with(self)
{
    if (!aString)
        return CPMakeRange(CPNotFound, 0);
    var string = (aRange == nil) ? self : objj_msgSend(self, "substringWithRange:", aRange),
        location = CPNotFound;
    if (aMask & CPCaseInsensitiveSearch)
    {
        string = string.toLowerCase();
        aString = aString.toLowerCase();
    }
    if (aMask & CPBackwardsSearch)
    {
        location = string.lastIndexOf(aString);
        if (aMask & CPAnchoredSearch && location + aString.length != string.length)
            location = CPNotFound;
    }
    else if (aMask & CPAnchoredSearch)
        location = string.substr(0, aString.length).indexOf(aString) != CPNotFound ? 0 : CPNotFound;
    else
        location = string.indexOf(aString);
    if (location == CPNotFound)
        return CPMakeRange(CPNotFound, 0);
    return CPMakeRange(location + (aRange ? aRange.location : 0), aString.length);
}
},["CPRange","CPString","int","CPrange"]), new objj_method(sel_getUid("stringByEscapingRegexControlCharacters"), function $CPString__stringByEscapingRegexControlCharacters(self, _cmd)
{ with(self)
{
    return self.replace(CPStringRegexEscapeExpression, "\\$1");
}
},["CPString"]), new objj_method(sel_getUid("stringByReplacingOccurrencesOfString:withString:"), function $CPString__stringByReplacingOccurrencesOfString_withString_(self, _cmd, target, replacement)
{ with(self)
{
    return self.replace(new RegExp(objj_msgSend(target, "stringByEscapingRegexControlCharacters"), "g"), replacement);
}
},["CPString","CPString","CPString"]), new objj_method(sel_getUid("stringByReplacingOccurrencesOfString:withString:options:range:"), function $CPString__stringByReplacingOccurrencesOfString_withString_options_range_(self, _cmd, target, replacement, options, searchRange)
{ with(self)
{
    var start = substring(0, searchRange.location),
        stringSegmentToSearch = substr(searchRange.location, searchRange.length),
        end = substring(searchRange.location + searchRange.length, self.length),
        target = objj_msgSend(target, "stringByEscapingRegexControlCharacters"),
        regExp;
    if (options & CPCaseInsensitiveSearch)
        regExp = new RegExp(target, "gi");
    else
        regExp = new RegExp(target, "g");
    return start + '' + stringSegmentToSearch.replace(regExp, replacement) + '' + end;
}
},["CPString","CPString","CPString","int","CPRange"]), new objj_method(sel_getUid("stringByReplacingCharactersInRange:withString:"), function $CPString__stringByReplacingCharactersInRange_withString_(self, _cmd, range, replacement)
{ with(self)
{
    return '' + substring(0, range.location) + replacement + substring(range.location + range.length, self.length);
}
},["CPString","CPRange","CPString"]), new objj_method(sel_getUid("stringByTrimmingWhitespace"), function $CPString__stringByTrimmingWhitespace(self, _cmd)
{ with(self)
{
    return self.replace(CPStringRegexTrimWhitespace, "");
}
},["CPString"]), new objj_method(sel_getUid("compare:"), function $CPString__compare_(self, _cmd, aString)
{ with(self)
{
    return objj_msgSend(self, "compare:options:", aString, nil);
}
},["CPComparisonResult","CPString"]), new objj_method(sel_getUid("caseInsensitiveCompare:"), function $CPString__caseInsensitiveCompare_(self, _cmd, aString)
{ with(self)
{
    return objj_msgSend(self, "compare:options:", aString, CPCaseInsensitiveSearch);
}
},["CPComparisonResult","CPString"]), new objj_method(sel_getUid("compare:options:"), function $CPString__compare_options_(self, _cmd, aString, aMask)
{ with(self)
{
    var lhs = self,
        rhs = aString;
    if (aMask & CPCaseInsensitiveSearch)
    {
        lhs = lhs.toLowerCase();
        rhs = rhs.toLowerCase();
    }
    if (aMask & CPDiacriticInsensitiveSearch)
    {
        lhs = lhs.stripDiacritics();
        rhs = rhs.stripDiacritics();
    }
    if (lhs < rhs)
        return CPOrderedAscending;
    if (lhs > rhs)
        return CPOrderedDescending;
    return CPOrderedSame;
}
},["CPComparisonResult","CPString","int"]), new objj_method(sel_getUid("compare:options:range:"), function $CPString__compare_options_range_(self, _cmd, aString, aMask, range)
{ with(self)
{
    var lhs = objj_msgSend(self, "substringWithRange:", range),
        rhs = aString;
    return objj_msgSend(lhs, "compare:options:", rhs, aMask);
}
},["CPComparisonResult","CPString","int","CPRange"]), new objj_method(sel_getUid("hasPrefix:"), function $CPString__hasPrefix_(self, _cmd, aString)
{ with(self)
{
    return aString && aString != "" && indexOf(aString) == 0;
}
},["BOOL","CPString"]), new objj_method(sel_getUid("hasSuffix:"), function $CPString__hasSuffix_(self, _cmd, aString)
{ with(self)
{
    return aString && aString != "" && length >= aString.length && lastIndexOf(aString) == (length - aString.length);
}
},["BOOL","CPString"]), new objj_method(sel_getUid("isEqual:"), function $CPString__isEqual_(self, _cmd, anObject)
{ with(self)
{
    if (self === anObject)
        return YES;
    if (!anObject || !objj_msgSend(anObject, "isKindOfClass:", objj_msgSend(CPString, "class")))
        return NO;
    return objj_msgSend(self, "isEqualToString:", anObject);
}
},["BOOL","id"]), new objj_method(sel_getUid("isEqualToString:"), function $CPString__isEqualToString_(self, _cmd, aString)
{ with(self)
{
    return self == String(aString);
}
},["BOOL","CPString"]), new objj_method(sel_getUid("UID"), function $CPString__UID(self, _cmd)
{ with(self)
{
    var UID = CPStringUIDs.valueForKey(self);
    if (!UID)
    {
        UID = objj_generateObjectUID();
        CPStringUIDs.setValueForKey(self, UID);
    }
    return UID + "";
}
},["unsigned"]), new objj_method(sel_getUid("commonPrefixWithString:"), function $CPString__commonPrefixWithString_(self, _cmd, aString)
{ with(self)
{
    return objj_msgSend(self, "commonPrefixWithString:options:",  aString,  0);
}
},["CPString","CPString"]), new objj_method(sel_getUid("commonPrefixWithString:options:"), function $CPString__commonPrefixWithString_options_(self, _cmd, aString, aMask)
{ with(self)
{
    var len = 0,
        lhs = self,
        rhs = aString,
        min = MIN(objj_msgSend(lhs, "length"), objj_msgSend(rhs, "length"));
    if (aMask & CPCaseInsensitiveSearch)
    {
        lhs = objj_msgSend(lhs, "lowercaseString");
        rhs = objj_msgSend(rhs, "lowercaseString");
    }
    for (; len < min; len++ )
    {
        if ( objj_msgSend(lhs, "characterAtIndex:", len) !== objj_msgSend(rhs, "characterAtIndex:", len) )
            break;
    }
    return objj_msgSend(self, "substringToIndex:", len);
}
},["CPString","CPString","int"]), new objj_method(sel_getUid("capitalizedString"), function $CPString__capitalizedString(self, _cmd)
{ with(self)
{
    var parts = self.split(/\b/g),
        i = 0,
        count = parts.length;
    for (; i < count; i++)
    {
        if (i == 0 || (/\s$/).test(parts[i - 1]))
            parts[i] = parts[i].substring(0, 1).toUpperCase() + parts[i].substring(1).toLowerCase();
        else
            parts[i] = parts[i].toLowerCase();
    }
    return parts.join("");
}
},["CPString"]), new objj_method(sel_getUid("lowercaseString"), function $CPString__lowercaseString(self, _cmd)
{ with(self)
{
    return toLowerCase();
}
},["CPString"]), new objj_method(sel_getUid("uppercaseString"), function $CPString__uppercaseString(self, _cmd)
{ with(self)
{
    return toUpperCase();
}
},["CPString"]), new objj_method(sel_getUid("doubleValue"), function $CPString__doubleValue(self, _cmd)
{ with(self)
{
    return parseFloat(self, 10);
}
},["double"]), new objj_method(sel_getUid("boolValue"), function $CPString__boolValue(self, _cmd)
{ with(self)
{
    var replaceRegExp = new RegExp("^\\s*[\\+,\\-]?0*");
    return RegExp("^[Y,y,t,T,1-9]").test(self.replace(replaceRegExp, ''));
}
},["BOOL"]), new objj_method(sel_getUid("floatValue"), function $CPString__floatValue(self, _cmd)
{ with(self)
{
    return parseFloat(self, 10);
}
},["float"]), new objj_method(sel_getUid("intValue"), function $CPString__intValue(self, _cmd)
{ with(self)
{
    return parseInt(self, 10);
}
},["int"]), new objj_method(sel_getUid("pathComponents"), function $CPString__pathComponents(self, _cmd)
{ with(self)
{
    var result = split('/');
    if (result[0] === "")
        result[0] = "/";
    if (result[result.length - 1] === "")
        result.pop();
    return result;
}
},["CPArray"]), new objj_method(sel_getUid("pathExtension"), function $CPString__pathExtension(self, _cmd)
{ with(self)
{
    if (lastIndexOf('.') === CPNotFound)
        return "";
    return substr(lastIndexOf('.') + 1);
}
},["CPString"]), new objj_method(sel_getUid("lastPathComponent"), function $CPString__lastPathComponent(self, _cmd)
{ with(self)
{
    var components = objj_msgSend(self, "pathComponents");
    return components[components.length - 1];
}
},["CPString"]), new objj_method(sel_getUid("stringByDeletingLastPathComponent"), function $CPString__stringByDeletingLastPathComponent(self, _cmd)
{ with(self)
{
    var path = self,
        start = length - 1;
    while (path.charAt(start) === '/')
        start--;
    path = path.substr(0, path.lastIndexOf('/', start));
    if (path === "" && charAt(0) === '/')
        return '/';
    return path;
}
},["CPString"]), new objj_method(sel_getUid("stringByDeletingPathExtension"), function $CPString__stringByDeletingPathExtension(self, _cmd)
{ with(self)
{
    var extension = objj_msgSend(self, "pathExtension");
    if (extension === "")
        return self;
    if (lastIndexOf('.') < 1)
        return self;
    return substr(0, objj_msgSend(self, "length") - (extension.length + 1));
}
},["CPString"]), new objj_method(sel_getUid("stringByStandardizingPath"), function $CPString__stringByStandardizingPath(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPURL, "URLWithString:", self), "absoluteString");
}
},["CPString"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("alloc"), function $CPString__alloc(self, _cmd)
{ with(self)
{
    if (objj_msgSend(self, "class") !== CPString)
       return objj_msgSendSuper({ receiver:self, super_class:objj_getMetaClass("CPString").super_class }, "alloc");
    return new String;
}
},["id"]), new objj_method(sel_getUid("string"), function $CPString__string(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "init");
}
},["id"]), new objj_method(sel_getUid("stringWithHash:"), function $CPString__stringWithHash_(self, _cmd, aHash)
{ with(self)
{
    var hashString = parseInt(aHash, 10).toString(16);
    return "000000".substring(0, MAX(6 - hashString.length, 0)) + hashString;
}
},["id","unsigned"]), new objj_method(sel_getUid("stringWithString:"), function $CPString__stringWithString_(self, _cmd, aString)
{ with(self)
{
    if (!aString)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "stringWithString: the string can't be 'nil'");
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithString:", aString);
}
},["id","CPString"]), new objj_method(sel_getUid("stringWithFormat:"), function $CPString__stringWithFormat_(self, _cmd, format)
{ with(self)
{
    if (!format)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "initWithFormat: the format can't be 'nil'");
    return ObjectiveJ.sprintf.apply(this, Array.prototype.slice.call(arguments, 2));
}
},["id","CPString"])]);
}
{
var the_class = objj_getClass("CPString")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPString\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("objectFromJSON"), function $CPString__objectFromJSON(self, _cmd)
{ with(self)
{
    return JSON.parse(self);
}
},["JSObject"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("JSONFromObject:"), function $CPString__JSONFromObject_(self, _cmd, anObject)
{ with(self)
{
    return JSON.stringify(anObject);
}
},["CPString","JSObject"])]);
}
{
var the_class = objj_getClass("CPString")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPString\"");
var meta_class = the_class.isa;class_addMethods(meta_class, [new objj_method(sel_getUid("UUID"), function $CPString__UUID(self, _cmd)
{ with(self)
{
    var g = "",
        i = 0;
    for (; i < 32; i++)
        g += FLOOR(RAND() * 0xF).toString(0xF);
    return g;
}
},["CPString"])]);
}
var diacritics = [[192,198],[224,230],[231,231],[232,235],[236,239],[242,246],[249,252]],
    normalized = [65,97,99,101,105,111,117];
String.prototype.stripDiacritics = function()
{
    var output = "";
    for (var indexSource = 0; indexSource < this.length; indexSource++)
    {
        var code = this.charCodeAt(indexSource);
        for (var i = 0; i < diacritics.length; i++)
        {
            var drange = diacritics[i];
            if (code >= drange[0] && code <= drange[drange.length - 1])
            {
                code = normalized[i];
                break;
            }
        }
        output += String.fromCharCode(code);
    }
    return output;
}
String.prototype.isa = CPString;

