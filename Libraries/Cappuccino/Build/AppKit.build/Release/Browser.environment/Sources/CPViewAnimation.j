@STATIC;1.0;i;13;CPAnimation.jt;5176;
objj_executeFile("CPAnimation.j",YES);
CPViewAnimationTargetKey="CPViewAnimationTargetKey";
CPViewAnimationStartFrameKey="CPViewAnimationStartFrameKey";
CPViewAnimationEndFrameKey="CPViewAnimationEndFrameKey";
CPViewAnimationEffectKey="CPViewAnimationEffectKey";
CPViewAnimationFadeInEffect="CPViewAnimationFadeInEffect";
CPViewAnimationFadeOutEffect="CPViewAnimationFadeOutEffect";
var _1=objj_allocateClassPair(CPAnimation,"CPViewAnimation"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_viewAnimations")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithViewAnimations:"),function(_3,_4,_5){
with(_3){
if(_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPViewAnimation").super_class},"initWithDuration:animationCurve:",0.5,CPAnimationLinear)){
objj_msgSend(_3,"setViewAnimations:",_5);
}
return _3;
}
}),new objj_method(sel_getUid("startAnimation"),function(_6,_7){
with(_6){
var _8=objj_msgSend(_viewAnimations,"count");
while(_8--){
var _9=objj_msgSend(_viewAnimations,"objectAtIndex:",_8),_a=objj_msgSend(_6,"_targetView:",_9),_b=objj_msgSend(_6,"_startFrame:",_9);
objj_msgSend(_a,"setFrame:",_b);
var _c=objj_msgSend(_6,"_effect:",_9);
if(_c===CPViewAnimationFadeInEffect){
objj_msgSend(_a,"setAlphaValue:",0);
objj_msgSend(_6,"_targetView:setHidden:",_a,NO);
}else{
if(_c===CPViewAnimationFadeOutEffect){
objj_msgSend(_a,"setAlphaValue:",1);
}
}
}
objj_msgSendSuper({receiver:_6,super_class:objj_getClass("CPViewAnimation").super_class},"startAnimation");
}
}),new objj_method(sel_getUid("setCurrentProgress:"),function(_d,_e,_f){
with(_d){
objj_msgSendSuper({receiver:_d,super_class:objj_getClass("CPViewAnimation").super_class},"setCurrentProgress:",_f);
var _10=objj_msgSend(_viewAnimations,"count");
while(_10--){
var _11=objj_msgSend(_viewAnimations,"objectAtIndex:",_10),_12=objj_msgSend(_d,"_targetView:",_11),_13=objj_msgSend(_d,"_startFrame:",_11),_14=objj_msgSend(_d,"_endFrame:",_11),_15={origin:{x:0,y:0},size:{width:0,height:0}};
_15.origin.x=_14.origin.x-_13.origin.x;
_15.origin.y=_14.origin.y-_13.origin.y;
_15.size.width=_14.size.width-_13.size.width;
_15.size.height=_14.size.height-_13.size.height;
var _16={origin:{x:0,y:0},size:{width:0,height:0}};
_16.origin.x=_13.origin.x+_15.origin.x*_f;
_16.origin.y=_13.origin.y+_15.origin.y*_f;
_16.size.width=_13.size.width+_15.size.width*_f;
_16.size.height=_13.size.height+_15.size.height*_f;
objj_msgSend(_12,"setFrame:",_16);
var _17=objj_msgSend(_d,"_effect:",_11);
if(_17===CPViewAnimationFadeInEffect){
objj_msgSend(_12,"setAlphaValue:",1*_f);
}else{
if(_17===CPViewAnimationFadeOutEffect){
objj_msgSend(_12,"setAlphaValue:",1+(0-1)*_f);
}
}
if(_f===1){
objj_msgSend(_d,"_targetView:setHidden:",_12,(_14.size.width<=0||_14.size.height<=0)||objj_msgSend(_12,"alphaValue")===0);
}
}
}
}),new objj_method(sel_getUid("stopAnimation"),function(_18,_19){
with(_18){
var _1a=objj_msgSend(_viewAnimations,"count");
while(_1a--){
var _1b=objj_msgSend(_viewAnimations,"objectAtIndex:",_1a),_1c=objj_msgSend(_18,"_targetView:",_1b),_1d=objj_msgSend(_18,"_endFrame:",_1b);
objj_msgSend(_1c,"setFrame:",_1d);
var _1e=objj_msgSend(_18,"_effect:",_1b);
if(_1e===CPViewAnimationFadeInEffect){
objj_msgSend(_1c,"setAlphaValue:",1);
}else{
if(_1e===CPViewAnimationFadeOutEffect){
objj_msgSend(_1c,"setAlphaValue:",0);
}
}
objj_msgSend(_18,"_targetView:setHidden:",_1c,(_1d.size.width<=0||_1d.size.height<=0)||objj_msgSend(_1c,"alphaValue")===0);
}
objj_msgSendSuper({receiver:_18,super_class:objj_getClass("CPViewAnimation").super_class},"stopAnimation");
}
}),new objj_method(sel_getUid("_targetView:setHidden:"),function(_1f,_20,_21,_22){
with(_1f){
if(objj_msgSend(_21,"isKindOfClass:",objj_msgSend(CPWindow,"class"))){
if(_22){
objj_msgSend(_21,"orderOut:",_1f);
}else{
objj_msgSend(_21,"orderFront:",_1f);
}
}else{
objj_msgSend(_21,"setHidden:",_22);
}
}
}),new objj_method(sel_getUid("_targetView:"),function(_23,_24,_25){
with(_23){
var _26=objj_msgSend(_25,"valueForKey:",CPViewAnimationTargetKey);
if(!_26){
objj_msgSend(CPException,"raise:reason:",CPInternalInconsistencyException,objj_msgSend(CPString,"stringWithFormat:","view animation: %@ does not have a target view",objj_msgSend(_25,"description")));
}
return _26;
}
}),new objj_method(sel_getUid("_startFrame:"),function(_27,_28,_29){
with(_27){
var _2a=objj_msgSend(_29,"valueForKey:",CPViewAnimationStartFrameKey);
if(!_2a){
return objj_msgSend(objj_msgSend(_27,"_targetView:",_29),"frame");
}
return _2a;
}
}),new objj_method(sel_getUid("_endFrame:"),function(_2b,_2c,_2d){
with(_2b){
var _2e=objj_msgSend(_2d,"valueForKey:",CPViewAnimationEndFrameKey);
if(!_2e){
return objj_msgSend(objj_msgSend(_2b,"_targetView:",_2d),"frame");
}
return _2e;
}
}),new objj_method(sel_getUid("_effect:"),function(_2f,_30,_31){
with(_2f){
return objj_msgSend(_31,"valueForKey:",CPViewAnimationEffectKey);
}
}),new objj_method(sel_getUid("viewAnimations"),function(_32,_33){
with(_32){
return _viewAnimations;
}
}),new objj_method(sel_getUid("setViewAnimations:"),function(_34,_35,_36){
with(_34){
if(_36!=_viewAnimations){
objj_msgSend(_34,"stopAnimation");
_viewAnimations=objj_msgSend(_36,"copy");
}
}
})]);
