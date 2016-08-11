@STATIC;1.0;i;10;CPObject.ji;10;CPString.ji;13;CPException.jt;7809;objj_executeFile("CPObject.j", YES);
objj_executeFile("CPString.j", YES);
objj_executeFile("CPException.j", YES);
var CPDateReferenceDate = new Date(Date.UTC(2001, 1, 1, 0, 0, 0, 0));
{var the_class = objj_allocateClassPair(CPObject, "CPDate"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithTimeIntervalSinceNow:"), function $CPDate__initWithTimeIntervalSinceNow_(self, _cmd, seconds)
{ with(self)
{
    self = new Date((new Date()).getTime() + seconds * 1000);
    return self;
}
},["id","CPTimeInterval"]), new objj_method(sel_getUid("initWithTimeIntervalSince1970:"), function $CPDate__initWithTimeIntervalSince1970_(self, _cmd, seconds)
{ with(self)
{
    self = new Date(seconds * 1000);
    return self;
}
},["id","CPTimeInterval"]), new objj_method(sel_getUid("initWithTimeIntervalSinceReferenceDate:"), function $CPDate__initWithTimeIntervalSinceReferenceDate_(self, _cmd, seconds)
{ with(self)
{
    self = objj_msgSend(self, "initWithTimeInterval:sinceDate:", seconds, CPDateReferenceDate);
    return self;
}
},["id","CPTimeInterval"]), new objj_method(sel_getUid("initWithTimeInterval:sinceDate:"), function $CPDate__initWithTimeInterval_sinceDate_(self, _cmd, seconds, refDate)
{ with(self)
{
    self = new Date(refDate.getTime() + seconds * 1000);
    return self;
}
},["id","CPTimeInterval","CPDate"]), new objj_method(sel_getUid("initWithString:"), function $CPDate__initWithString_(self, _cmd, description)
{ with(self)
{
    var format = /(\d{4})-(\d{2})-(\d{2}) (\d{2}):(\d{2}):(\d{2}) ([-+])(\d{2})(\d{2})/,
        d = description.match(new RegExp(format));
    if (!d || d.length != 10)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "initWithString: the string must be in YYYY-MM-DD HH:MM:SS ±HHMM format");
    var date = new Date(d[1], d[2] - 1, d[3]),
        timeZoneOffset = (Number(d[8]) * 60 + Number(d[9])) * (d[7] === '-' ? 1 : -1);
    date.setHours(d[4]);
    date.setMinutes(d[5]);
    date.setSeconds(d[6]);
    self = new Date(date.getTime() + (timeZoneOffset - date.getTimezoneOffset()) * 60 * 1000);
    return self;
}
},["id","CPString"]), new objj_method(sel_getUid("timeIntervalSinceDate:"), function $CPDate__timeIntervalSinceDate_(self, _cmd, anotherDate)
{ with(self)
{
    return (self.getTime() - anotherDate.getTime()) / 1000.0;
}
},["CPTimeInterval","CPDate"]), new objj_method(sel_getUid("timeIntervalSinceNow"), function $CPDate__timeIntervalSinceNow(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "timeIntervalSinceDate:", objj_msgSend(CPDate, "date"));
}
},["CPTimeInterval"]), new objj_method(sel_getUid("timeIntervalSince1970"), function $CPDate__timeIntervalSince1970(self, _cmd)
{ with(self)
{
    return self.getTime() / 1000.0;
}
},["CPTimeInterval"]), new objj_method(sel_getUid("timeIntervalSinceReferenceDate"), function $CPDate__timeIntervalSinceReferenceDate(self, _cmd)
{ with(self)
{
    return (self.getTime() - CPDateReferenceDate.getTime()) / 1000.0;
}
},["CPTimeInterval"]), new objj_method(sel_getUid("isEqual:"), function $CPDate__isEqual_(self, _cmd, aDate)
{ with(self)
{
    if (self === aDate)
        return YES;
    if (!aDate || !objj_msgSend(aDate, "isKindOfClass:", objj_msgSend(CPDate, "class")))
        return NO;
    return objj_msgSend(self, "isEqualToDate:", aDate);
}
},["BOOL","CPDate"]), new objj_method(sel_getUid("isEqualToDate:"), function $CPDate__isEqualToDate_(self, _cmd, aDate)
{ with(self)
{
    if (!aDate)
        return NO;
    return !(self < aDate || self > aDate);
}
},["BOOL","CPDate"]), new objj_method(sel_getUid("compare:"), function $CPDate__compare_(self, _cmd, anotherDate)
{ with(self)
{
    return (self > anotherDate) ? CPOrderedDescending : ((self < anotherDate) ? CPOrderedAscending : CPOrderedSame);
}
},["CPComparisonResult","CPDate"]), new objj_method(sel_getUid("earlierDate:"), function $CPDate__earlierDate_(self, _cmd, anotherDate)
{ with(self)
{
    return (self < anotherDate) ? self : anotherDate;
}
},["CPDate","CPDate"]), new objj_method(sel_getUid("laterDate:"), function $CPDate__laterDate_(self, _cmd, anotherDate)
{ with(self)
{
    return (self > anotherDate) ? self : anotherDate;
}
},["CPDate","CPDate"]), new objj_method(sel_getUid("description"), function $CPDate__description(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPString, "stringWithFormat:", "%04d-%02d-%02d %02d:%02d:%02d %s", self.getFullYear(), self.getMonth()+1, self.getDate(), self.getHours(), self.getMinutes(), self.getSeconds(), objj_msgSend(CPDate, "timezoneOffsetString:", self.getTimezoneOffset()));
}
},["CPString"]), new objj_method(sel_getUid("copy"), function $CPDate__copy(self, _cmd)
{ with(self)
{
    return new Date(self.getTime());
}
},["id"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("alloc"), function $CPDate__alloc(self, _cmd)
{ with(self)
{
    var result = new Date;
    result.isa = objj_msgSend(self, "class");
    return result;
}
},["id"]), new objj_method(sel_getUid("date"), function $CPDate__date(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "init");
}
},["id"]), new objj_method(sel_getUid("dateWithTimeIntervalSinceNow:"), function $CPDate__dateWithTimeIntervalSinceNow_(self, _cmd, seconds)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPDate, "alloc"), "initWithTimeIntervalSinceNow:", seconds);
}
},["id","CPTimeInterval"]), new objj_method(sel_getUid("dateWithTimeIntervalSince1970:"), function $CPDate__dateWithTimeIntervalSince1970_(self, _cmd, seconds)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPDate, "alloc"), "initWithTimeIntervalSince1970:", seconds);
}
},["id","CPTimeInterval"]), new objj_method(sel_getUid("dateWithTimeIntervalSinceReferenceDate:"), function $CPDate__dateWithTimeIntervalSinceReferenceDate_(self, _cmd, seconds)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPDate, "alloc"), "initWithTimeIntervalSinceReferenceDate:", seconds);
}
},["id","CPTimeInterval"]), new objj_method(sel_getUid("distantPast"), function $CPDate__distantPast(self, _cmd)
{ with(self)
{
    return new Date(-10000, 1, 1, 0, 0, 0, 0);
}
},["id"]), new objj_method(sel_getUid("distantFuture"), function $CPDate__distantFuture(self, _cmd)
{ with(self)
{
    return new Date(10000, 1, 1, 0, 0, 0, 0);
}
},["id"]), new objj_method(sel_getUid("timeIntervalSinceReferenceDate"), function $CPDate__timeIntervalSinceReferenceDate(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPDate, "date"), "timeIntervalSinceReferenceDate");
}
},["CPTimeInterval"]), new objj_method(sel_getUid("timezoneOffsetString:"), function $CPDate__timezoneOffsetString_(self, _cmd, timezoneOffset)
{ with(self)
{
    var offset = -timezoneOffset,
        positive = offset >= 0,
        hours = positive ? FLOOR(offset / 60) : CEIL(offset / 60),
        minutes = offset - hours * 60;
    return objj_msgSend(CPString, "stringWithFormat:", "%s%02d%02d", positive ? "+" : "-", ABS(hours), ABS(minutes));
}
},["CPString","int"])]);
}
var CPDateTimeKey = "CPDateTimeKey";
{
var the_class = objj_getClass("CPDate")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPDate\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPDate__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self)
    {
        self.setTime(objj_msgSend(aCoder, "decodeIntForKey:", CPDateTimeKey));
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPDate__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSend(aCoder, "encodeInt:forKey:", self.getTime(), CPDateTimeKey);
}
},["void","CPCoder"])]);
}
Date.prototype.isa = CPDate;

