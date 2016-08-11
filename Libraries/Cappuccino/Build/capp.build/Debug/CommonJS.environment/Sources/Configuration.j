@STATIC;1.0;I;25;Foundation/CPDictionary.jI;21;Foundation/CPString.jI;21;Foundation/CPObject.jt;7293;


objj_executeFile("Foundation/CPDictionary.j", NO);
objj_executeFile("Foundation/CPString.j", NO);
objj_executeFile("Foundation/CPObject.j", NO);

var FILE = require("file"),
    SYSTEM = require("system");

var DefaultDictionary = nil,
    DefaultConfiguration = nil,
    UserConfiguration = nil;

{var the_class = objj_allocateClassPair(CPObject, "Configuration"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("path"), new objj_ivar("dictionary"), new objj_ivar("temporaryDictionary")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithPath:"), function $Configuration__initWithPath_(self, _cmd, aPath)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("Configuration").super_class }, "init");

    if (self)
    {
        path = aPath;
        temporaryDictionary = objj_msgSend(CPDictionary, "dictionary");

        if (path && FILE.isReadable(path))
            dictionary = CFPropertyList.readPropertyListFromFile(path);


        if (!dictionary)
            dictionary = objj_msgSend(CPDictionary, "dictionary");
    }

    return self;
}
},["id","CPString"]), new objj_method(sel_getUid("path"), function $Configuration__path(self, _cmd)
{ with(self)
{
    return path;
}
},["CPString"]), new objj_method(sel_getUid("storedKeyEnumerator"), function $Configuration__storedKeyEnumerator(self, _cmd)
{ with(self)
{
    return objj_msgSend(dictionary, "keyEnumerator");
}
},["CPEnumerator"]), new objj_method(sel_getUid("keyEnumerator"), function $Configuration__keyEnumerator(self, _cmd)
{ with(self)
{
    var set = objj_msgSend(CPSet, "setWithArray:", objj_msgSend(dictionary, "allKeys"));

    objj_msgSend(set, "addObjectsFromArray:", objj_msgSend(temporaryDictionary, "allKeys"));
    objj_msgSend(set, "addObjectsFromArray:", objj_msgSend(DefaultDictionary, "allKeys"));

    return objj_msgSend(set, "objectEnumerator");
}
},["CPEnumerator"]), new objj_method(sel_getUid("valueForKey:"), function $Configuration__valueForKey_(self, _cmd, aKey)
{ with(self)
{
    var value = objj_msgSend(dictionary, "objectForKey:", aKey);

    if (!value)
        value = objj_msgSend(temporaryDictionary, "objectForKey:", aKey);

    if (!value)
        value = objj_msgSend(DefaultDictionary, "objectForKey:", aKey);

    return value;
}
},["CPString","CPString"]), new objj_method(sel_getUid("setValue:forKey:"), function $Configuration__setValue_forKey_(self, _cmd, aString, aKey)
{ with(self)
{
    objj_msgSend(dictionary, "setObject:forKey:", aString, aKey);
}
},["void","CPString","CPString"]), new objj_method(sel_getUid("removeValueForKey:"), function $Configuration__removeValueForKey_(self, _cmd, aKey)
{ with(self)
{
    objj_msgSend(dictionary, "removeObjectForKey:", aKey);
}
},["void","CPString"]), new objj_method(sel_getUid("setTemporaryValue:forKey:"), function $Configuration__setTemporaryValue_forKey_(self, _cmd, aString, aKey)
{ with(self)
{
    objj_msgSend(temporaryDictionary, "setObject:forKey:", aString, aKey);
}
},["void","CPString","CPString"]), new objj_method(sel_getUid("save"), function $Configuration__save(self, _cmd)
{ with(self)
{
    var path = objj_msgSend(self, "path");

    if (!path)
        return;

    CFPropertyList.writePropertyListToFile(dictionary, path);
}
},["void"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $Configuration__initialize(self, _cmd)
{ with(self)
{
    if (self !== objj_msgSend(Configuration, "class"))
        return;

    DefaultDictionary = objj_msgSend(CPDictionary, "dictionary");

    objj_msgSend(DefaultDictionary, "setObject:forKey:", "You", "user.name");
    objj_msgSend(DefaultDictionary, "setObject:forKey:", "you@yourcompany.com", "user.email");
    objj_msgSend(DefaultDictionary, "setObject:forKey:", "Your Company", "organization.name");
    objj_msgSend(DefaultDictionary, "setObject:forKey:", "feedback @nospam@ yourcompany.com", "organization.email");
    objj_msgSend(DefaultDictionary, "setObject:forKey:", "http://yourcompany.com", "organization.url");
    objj_msgSend(DefaultDictionary, "setObject:forKey:", "com.yourcompany", "organization.identifier");

    var date = new Date(),
        months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];

    objj_msgSend(DefaultDictionary, "setObject:forKey:", date.getFullYear(), "project.year");
    objj_msgSend(DefaultDictionary, "setObject:forKey:", months[date.getMonth()] + ' ' + date.getDate() + ", " + date.getFullYear(), "project.date");
}
},["void"]), new objj_method(sel_getUid("defaultConfiguration"), function $Configuration__defaultConfiguration(self, _cmd)
{ with(self)
{
    if (!DefaultConfiguration)
        DefaultConfiguration = objj_msgSend(objj_msgSend(self, "alloc"), "initWithPath:", nil);

    return DefaultConfiguration;
}
},["id"]), new objj_method(sel_getUid("userConfiguration"), function $Configuration__userConfiguration(self, _cmd)
{ with(self)
{
    if (!UserConfiguration)
        UserConfiguration = objj_msgSend(objj_msgSend(self, "alloc"), "initWithPath:", FILE.join(SYSTEM.env["HOME"], ".cappconfig"));

    return UserConfiguration;
}
},["id"])]);
}

config= function( )
{
    var count = arguments.length;

    if (count === 0 || count > 2)
    {
        printUsage();
        return;
    }

    var argument = arguments[0],
        key = nil,
        value = nil,
        action = nil,
        valid = YES;

    switch (argument)
    {
        case "--get":
        case "--remove": action = argument.substring(2);

                            if (count === 2)
                                key = arguments[1];
                            else
                                valid = NO;
                            break;

        case "-l":
        case "--list": action = "list";
                            valid = count === 1;
                            break;


        default: action = "set";
                            key = argument;

                            if (count === 2)
                                value = arguments[1];
                            else
                                valid = NO;
    }

    if (!valid)
    {
        printUsage();
        return;
    }

    var configuration = objj_msgSend(Configuration, "userConfiguration");

    if (action === "list")
    {
        var key = nil,
            keyEnumerator = objj_msgSend(configuration, "storedKeyEnumerator");

        while (key = objj_msgSend(keyEnumerator, "nextObject"))
            print(key + '=' + objj_msgSend(configuration, "valueForKey:", key));
    }
    else if (action === "get")
    {
        var value = objj_msgSend(configuration, "valueForKey:", key);

        if (value != nil)
            print(value);
    }
    else if (action === "remove")
    {
        var value = objj_msgSend(configuration, "valueForKey:", key);

        if (value != nil)
        {
            objj_msgSend(configuration, "removeValueForKey:", key);
            objj_msgSend(configuration, "save");
        }
    }
    else if (key !== nil && value !== nil)
    {
        objj_msgSend(configuration, "setValue:forKey:", value, key);
        objj_msgSend(configuration, "save");
    }
}

