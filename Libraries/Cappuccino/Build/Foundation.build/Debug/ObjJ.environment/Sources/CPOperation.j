@STATIC;1.0;i;9;CPArray.ji;10;CPObject.jt;6049;objj_executeFile("CPArray.j", YES);
objj_executeFile("CPObject.j", YES);
CPOperationQueuePriorityVeryLow = -8;
CPOperationQueuePriorityLow = -4;
CPOperationQueuePriorityNormal = 0;
CPOperationQueuePriorityHigh = 4;
CPOperationQueuePriorityVeryHigh = 8;
{var the_class = objj_allocateClassPair(CPObject, "CPOperation"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("operations"), new objj_ivar("_cancelled"), new objj_ivar("_executing"), new objj_ivar("_finished"), new objj_ivar("_ready"), new objj_ivar("_queuePriority"), new objj_ivar("_completionFunction"), new objj_ivar("_dependencies")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("main"), function $CPOperation__main(self, _cmd)
{ with(self)
{
}
},["void"]), new objj_method(sel_getUid("init"), function $CPOperation__init(self, _cmd)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPOperation").super_class }, "init");
    if (self)
    {
        _cancelled = NO;
        _executing = NO;
        _finished = NO;
        _ready = YES;
        _dependencies = objj_msgSend(objj_msgSend(CPArray, "alloc"), "init");
        _queuePriority = CPOperationQueuePriorityNormal;
    }
    return self;
}
},["id"]), new objj_method(sel_getUid("start"), function $CPOperation__start(self, _cmd)
{ with(self)
{
    if (!_cancelled)
    {
        objj_msgSend(self, "willChangeValueForKey:", "isExecuting");
        _executing = YES;
        objj_msgSend(self, "didChangeValueForKey:", "isExecuting");
        objj_msgSend(self, "main");
        if (_completionFunction)
        {
            _completionFunction();
        }
        objj_msgSend(self, "willChangeValueForKey:", "isExecuting");
        _executing = NO;
        objj_msgSend(self, "didChangeValueForKey:", "isExecuting");
        objj_msgSend(self, "willChangeValueForKey:", "isFinished");
        _finished = YES;
        objj_msgSend(self, "didChangeValueForKey:", "isFinished");
    }
}
},["void"]), new objj_method(sel_getUid("isCancelled"), function $CPOperation__isCancelled(self, _cmd)
{ with(self)
{
    return _cancelled;
}
},["BOOL"]), new objj_method(sel_getUid("isExecuting"), function $CPOperation__isExecuting(self, _cmd)
{ with(self)
{
    return _executing;
}
},["BOOL"]), new objj_method(sel_getUid("isFinished"), function $CPOperation__isFinished(self, _cmd)
{ with(self)
{
    return _finished;
}
},["BOOL"]), new objj_method(sel_getUid("isConcurrent"), function $CPOperation__isConcurrent(self, _cmd)
{ with(self)
{
    return NO;
}
},["BOOL"]), new objj_method(sel_getUid("isReady"), function $CPOperation__isReady(self, _cmd)
{ with(self)
{
    return _ready;
}
},["BOOL"]), new objj_method(sel_getUid("completionFunction"), function $CPOperation__completionFunction(self, _cmd)
{ with(self)
{
    return _completionFunction;
}
},["JSObject"]), new objj_method(sel_getUid("setCompletionFunction:"), function $CPOperation__setCompletionFunction_(self, _cmd, aJavaScriptFunction)
{ with(self)
{
    _completionFunction = aJavaScriptFunction;
}
},["void","JSObject"]), new objj_method(sel_getUid("addDependency:"), function $CPOperation__addDependency_(self, _cmd, anOperation)
{ with(self)
{
    objj_msgSend(self, "willChangeValueForKey:", "dependencies");
    objj_msgSend(anOperation, "addObserver:forKeyPath:options:context:", self, "isFinished", (CPKeyValueObservingOptionNew), NULL);
    objj_msgSend(_dependencies, "addObject:", anOperation);
    objj_msgSend(self, "didChangeValueForKey:", "dependencies");
    objj_msgSend(self, "_updateIsReadyState");
}
},["void","CPOperation"]), new objj_method(sel_getUid("removeDependency:"), function $CPOperation__removeDependency_(self, _cmd, anOperation)
{ with(self)
{
    objj_msgSend(self, "willChangeValueForKey:", "dependencies");
    objj_msgSend(_dependencies, "removeObject:", anOperation);
    objj_msgSend(anOperation, "removeObserver:forKeyPath:", self, "isFinished");
    objj_msgSend(self, "didChangeValueForKey:", "dependencies");
    objj_msgSend(self, "_updateIsReadyState");
}
},["void","CPOperation"]), new objj_method(sel_getUid("dependencies"), function $CPOperation__dependencies(self, _cmd)
{ with(self)
{
    return _dependencies;
}
},["CPArray"]), new objj_method(sel_getUid("waitUntilFinished"), function $CPOperation__waitUntilFinished(self, _cmd)
{ with(self)
{
}
},["void"]), new objj_method(sel_getUid("cancel"), function $CPOperation__cancel(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "willChangeValueForKey:", "isCancelled");
    _cancelled = YES;
    objj_msgSend(self, "didChangeValueForKey:", "isCancelled");
}
},["void"]), new objj_method(sel_getUid("setQueuePriority:"), function $CPOperation__setQueuePriority_(self, _cmd, priority)
{ with(self)
{
    _queuePriority = priority;
}
},["void","int"]), new objj_method(sel_getUid("queuePriority"), function $CPOperation__queuePriority(self, _cmd)
{ with(self)
{
    return _queuePriority;
}
},["int"]), new objj_method(sel_getUid("observeValueForKeyPath:ofObject:change:context:"), function $CPOperation__observeValueForKeyPath_ofObject_change_context_(self, _cmd, keyPath, object, change, context)
{ with(self)
{
    if (keyPath == "isFinished")
    {
        objj_msgSend(self, "_updateIsReadyState");
    }
}
},["void","CPString","id","CPDictionary","void"]), new objj_method(sel_getUid("_updateIsReadyState"), function $CPOperation___updateIsReadyState(self, _cmd)
{ with(self)
{
    var newReady = YES;
    if (_dependencies && objj_msgSend(_dependencies, "count") > 0)
    {
        var i = 0;
        for (i = 0; i < objj_msgSend(_dependencies, "count"); i++)
        {
            if (!objj_msgSend(objj_msgSend(_dependencies, "objectAtIndex:", i), "isFinished"))
            {
                newReady = NO;
            }
        }
    }
    if (newReady != _ready)
    {
        objj_msgSend(self, "willChangeValueForKey:", "isReady");
        _ready = newReady;
        objj_msgSend(self, "didChangeValueForKey:", "isReady");
    }
}
},["void"])]);
}

