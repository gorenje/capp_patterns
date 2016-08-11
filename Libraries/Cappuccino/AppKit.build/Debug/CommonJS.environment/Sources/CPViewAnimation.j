@STATIC;1.0;i;13;CPAnimation.jt;7799;objj_executeFile("CPAnimation.j", YES);
CPViewAnimationTargetKey = "CPViewAnimationTargetKey";
CPViewAnimationStartFrameKey = "CPViewAnimationStartFrameKey";
CPViewAnimationEndFrameKey = "CPViewAnimationEndFrameKey";
CPViewAnimationEffectKey = "CPViewAnimationEffectKey";
CPViewAnimationFadeInEffect = "CPViewAnimationFadeInEffect";
CPViewAnimationFadeOutEffect = "CPViewAnimationFadeOutEffect";
{var the_class = objj_allocateClassPair(CPAnimation, "CPViewAnimation"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_viewAnimations")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithViewAnimations:"), function $CPViewAnimation__initWithViewAnimations_(self, _cmd, viewAnimations)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPViewAnimation").super_class }, "initWithDuration:animationCurve:", 0.5, CPAnimationLinear))
    {
        objj_msgSend(self, "setViewAnimations:", viewAnimations);
    }
    return self;
}
},["id","CPArray"]), new objj_method(sel_getUid("startAnimation"), function $CPViewAnimation__startAnimation(self, _cmd)
{ with(self)
{
    var animationIndex = objj_msgSend(_viewAnimations, "count");
    while (animationIndex--)
    {
        var dictionary = objj_msgSend(_viewAnimations, "objectAtIndex:", animationIndex),
            view = objj_msgSend(self, "_targetView:", dictionary),
            startFrame = objj_msgSend(self, "_startFrame:", dictionary);
        objj_msgSend(view, "setFrame:", startFrame);
        var effect = objj_msgSend(self, "_effect:", dictionary);
        if (effect === CPViewAnimationFadeInEffect)
        {
            objj_msgSend(view, "setAlphaValue:", 0.0);
            objj_msgSend(self, "_targetView:setHidden:", view, NO);
        }
        else if (effect === CPViewAnimationFadeOutEffect)
            objj_msgSend(view, "setAlphaValue:", 1.0);
    }
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPViewAnimation").super_class }, "startAnimation");
}
},["void"]), new objj_method(sel_getUid("setCurrentProgress:"), function $CPViewAnimation__setCurrentProgress_(self, _cmd, progress)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPViewAnimation").super_class }, "setCurrentProgress:", progress);
    var animationIndex = objj_msgSend(_viewAnimations, "count");
    while (animationIndex--)
    {
        var dictionary = objj_msgSend(_viewAnimations, "objectAtIndex:", animationIndex),
            view = objj_msgSend(self, "_targetView:", dictionary),
            startFrame = objj_msgSend(self, "_startFrame:", dictionary),
            endFrame = objj_msgSend(self, "_endFrame:", dictionary),
            differenceFrame = { origin: { x:0.0, y:0.0 }, size: { width:0.0, height:0.0 } };
        differenceFrame.origin.x = endFrame.origin.x - startFrame.origin.x;
        differenceFrame.origin.y = endFrame.origin.y - startFrame.origin.y;
        differenceFrame.size.width = endFrame.size.width - startFrame.size.width;
        differenceFrame.size.height = endFrame.size.height - startFrame.size.height;
        var intermediateFrame = { origin: { x:0.0, y:0.0 }, size: { width:0.0, height:0.0 } };
        intermediateFrame.origin.x = startFrame.origin.x + differenceFrame.origin.x * progress;
        intermediateFrame.origin.y = startFrame.origin.y + differenceFrame.origin.y * progress;
        intermediateFrame.size.width = startFrame.size.width + differenceFrame.size.width * progress;
        intermediateFrame.size.height = startFrame.size.height + differenceFrame.size.height * progress;
        objj_msgSend(view, "setFrame:", intermediateFrame);
        var effect = objj_msgSend(self, "_effect:", dictionary);
        if (effect === CPViewAnimationFadeInEffect)
            objj_msgSend(view, "setAlphaValue:", 1.0 * progress);
        else if (effect === CPViewAnimationFadeOutEffect)
            objj_msgSend(view, "setAlphaValue:", 1.0 + ( 0.0 - 1.0 ) * progress);
        if (progress === 1.0)
            objj_msgSend(self, "_targetView:setHidden:", view, (endFrame.size.width <= 0.0 || endFrame.size.height <= 0.0) || objj_msgSend(view, "alphaValue") === 0.0);
    }
}
},["void","CPAnimationProgress"]), new objj_method(sel_getUid("stopAnimation"), function $CPViewAnimation__stopAnimation(self, _cmd)
{ with(self)
{
    var animationIndex = objj_msgSend(_viewAnimations, "count");
    while (animationIndex--)
    {
        var dictionary = objj_msgSend(_viewAnimations, "objectAtIndex:", animationIndex),
            view = objj_msgSend(self, "_targetView:", dictionary),
            endFrame = objj_msgSend(self, "_endFrame:", dictionary);
        objj_msgSend(view, "setFrame:", endFrame);
        var effect = objj_msgSend(self, "_effect:", dictionary);
        if (effect === CPViewAnimationFadeInEffect)
            objj_msgSend(view, "setAlphaValue:", 1.0);
        else if (effect === CPViewAnimationFadeOutEffect)
            objj_msgSend(view, "setAlphaValue:", 0.0);
        objj_msgSend(self, "_targetView:setHidden:", view, (endFrame.size.width <= 0.0 || endFrame.size.height <= 0.0) || objj_msgSend(view, "alphaValue") === 0.0);
    }
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPViewAnimation").super_class }, "stopAnimation");
}
},["void"]), new objj_method(sel_getUid("_targetView:setHidden:"), function $CPViewAnimation___targetView_setHidden_(self, _cmd, theView, isHidden)
{ with(self)
{
    if (objj_msgSend(theView, "isKindOfClass:", objj_msgSend(CPWindow, "class")))
    {
        if (isHidden)
            objj_msgSend(theView, "orderOut:", self);
        else
            objj_msgSend(theView, "orderFront:", self);
    }
    else
        objj_msgSend(theView, "setHidden:", isHidden);
}
},["void","id","BOOL"]), new objj_method(sel_getUid("_targetView:"), function $CPViewAnimation___targetView_(self, _cmd, dictionary)
{ with(self)
{
    var targetView = objj_msgSend(dictionary, "valueForKey:", CPViewAnimationTargetKey);
    if (!targetView)
        objj_msgSend(CPException, "raise:reason:", CPInternalInconsistencyException, objj_msgSend(CPString, "stringWithFormat:", "view animation: %@ does not have a target view", objj_msgSend(dictionary, "description")));
    return targetView;
}
},["id","CPDictionary"]), new objj_method(sel_getUid("_startFrame:"), function $CPViewAnimation___startFrame_(self, _cmd, dictionary)
{ with(self)
{
    var startFrame = objj_msgSend(dictionary, "valueForKey:", CPViewAnimationStartFrameKey);
    if (!startFrame)
        return objj_msgSend(objj_msgSend(self, "_targetView:", dictionary), "frame");
    return startFrame;
}
},["CGRect","CPDictionary"]), new objj_method(sel_getUid("_endFrame:"), function $CPViewAnimation___endFrame_(self, _cmd, dictionary)
{ with(self)
{
    var endFrame = objj_msgSend(dictionary, "valueForKey:", CPViewAnimationEndFrameKey);
    if (!endFrame)
        return objj_msgSend(objj_msgSend(self, "_targetView:", dictionary), "frame");
    return endFrame;
}
},["CGRect","CPDictionary"]), new objj_method(sel_getUid("_effect:"), function $CPViewAnimation___effect_(self, _cmd, dictionary)
{ with(self)
{
    return objj_msgSend(dictionary, "valueForKey:", CPViewAnimationEffectKey);
}
},["CPString","CPDictionary"]), new objj_method(sel_getUid("viewAnimations"), function $CPViewAnimation__viewAnimations(self, _cmd)
{ with(self)
{
    return _viewAnimations;
}
},["CPArray"]), new objj_method(sel_getUid("setViewAnimations:"), function $CPViewAnimation__setViewAnimations_(self, _cmd, viewAnimations)
{ with(self)
{
    if (viewAnimations != _viewAnimations)
    {
        objj_msgSend(self, "stopAnimation");
        _viewAnimations = objj_msgSend(viewAnimations, "copy");
    }
}
},["void","CPArray"])]);
}

