@STATIC;1.0;I;21;Foundation/CPObject.jt;7530;
objj_executeFile("Foundation/CPObject.j",NO);
var _1=nil,_2=[],_3={};
var _4=objj_allocateClassPair(CPObject,"CPCursor"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_cssString"),new objj_ivar("_hotSpot"),new objj_ivar("_image"),new objj_ivar("_isSetOnMouseEntered"),new objj_ivar("_isSetOnMouseExited")]);
objj_registerClassPair(_4);
class_addMethods(_4,[new objj_method(sel_getUid("_cssString"),function(_6,_7){
with(_6){
return _cssString;
}
}),new objj_method(sel_getUid("hotSpot"),function(_8,_9){
with(_8){
return _hotSpot;
}
}),new objj_method(sel_getUid("image"),function(_a,_b){
with(_a){
return _image;
}
}),new objj_method(sel_getUid("isSetOnMouseEntered"),function(_c,_d){
with(_c){
return _isSetOnMouseEntered;
}
}),new objj_method(sel_getUid("setOnMouseEntered:"),function(_e,_f,_10){
with(_e){
_isSetOnMouseEntered=_10;
}
}),new objj_method(sel_getUid("isSetOnMouseExited"),function(_11,_12){
with(_11){
return _isSetOnMouseExited;
}
}),new objj_method(sel_getUid("setOnMouseExited:"),function(_13,_14,_15){
with(_13){
_isSetOnMouseExited=_15;
}
}),new objj_method(sel_getUid("initWithCSSString:"),function(_16,_17,_18){
with(_16){
if(_16=objj_msgSendSuper({receiver:_16,super_class:objj_getClass("CPCursor").super_class},"init")){
_cssString=_18;
}
return _16;
}
}),new objj_method(sel_getUid("initWithImage:hotSpot:"),function(_19,_1a,_1b,_1c){
with(_19){
_hotSpot=_1c;
_image=_1b;
return objj_msgSend(_19,"initWithCSSString:","url("+objj_msgSend(_image,"filename")+")"+_1c.x+" "+_1c.y+", auto");
}
}),new objj_method(sel_getUid("initWithImage:foregroundColorHint:backgroundColorHint:hotSpot:"),function(_1d,_1e,_1f,_20,_21,_22){
with(_1d){
return objj_msgSend(_1d,"initWithImage:hotSpot:",_1f,hotSpot);
}
}),new objj_method(sel_getUid("pop"),function(_23,_24){
with(_23){
objj_msgSend(CPCursor,"pop");
}
}),new objj_method(sel_getUid("push"),function(_25,_26){
with(_25){
_1=_2.push(_25);
}
}),new objj_method(sel_getUid("set"),function(_27,_28){
with(_27){
_1=_27;
objj_msgSend(objj_msgSend(_27,"class"),"_setCursorCSS:",_cssString);
}
}),new objj_method(sel_getUid("mouseEntered:"),function(_29,_2a,_2b){
with(_29){
}
}),new objj_method(sel_getUid("mouseExited:"),function(_2c,_2d,_2e){
with(_2c){
}
})]);
class_addMethods(_5,[new objj_method(sel_getUid("hide"),function(_2f,_30){
with(_2f){
objj_msgSend(_2f,"_setCursorCSS:","none");
}
}),new objj_method(sel_getUid("unhide"),function(_31,_32){
with(_31){
objj_msgSend(_31,"_setCursorCSS:",objj_msgSend(_1,"_cssString"));
}
}),new objj_method(sel_getUid("setHiddenUntilMouseMoves:"),function(_33,_34,_35){
with(_33){
if(_35){
objj_msgSend(CPCursor,"hide");
}else{
objj_msgSend(CPCursor,"unhide");
}
}
}),new objj_method(sel_getUid("pop"),function(_36,_37){
with(_36){
if(_2.length>1){
_2.pop();
_1=_2[_2.length-1];
}
}
}),new objj_method(sel_getUid("currentCursor"),function(_38,_39){
with(_38){
return _1;
}
}),new objj_method(sel_getUid("_setCursorCSS:"),function(_3a,_3b,_3c){
with(_3a){
var _3d=objj_msgSend(objj_msgSend(CPPlatformWindow,"visiblePlatformWindows"),"allObjects");
for(var i=0,_3e=objj_msgSend(_3d,"count");i<_3e;i++){
_3d[i]._DOMBodyElement.style.cursor=_3c;
}
}
}),new objj_method(sel_getUid("_systemCursorWithName:cssString:hasImage:"),function(_3f,_40,_41,_42,_43){
with(_3f){
var _44=_3[_41];
if(typeof _44==="undefined"){
var _45;
if(_43){
_45="url("+objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",_3f),"resourcePath")+"/CPCursor/"+_41+".cur), "+_42;
}else{
_45=_42;
}
_44=objj_msgSend(objj_msgSend(CPCursor,"alloc"),"initWithCSSString:",_45);
_3[_41]=_44;
}
return _44;
}
}),new objj_method(sel_getUid("arrowCursor"),function(_46,_47){
with(_46){
return objj_msgSend(CPCursor,"_systemCursorWithName:cssString:hasImage:",CPStringFromSelector(_47),"default",NO);
}
}),new objj_method(sel_getUid("crosshairCursor"),function(_48,_49){
with(_48){
return objj_msgSend(CPCursor,"_systemCursorWithName:cssString:hasImage:",CPStringFromSelector(_49),"crosshair",NO);
}
}),new objj_method(sel_getUid("IBeamCursor"),function(_4a,_4b){
with(_4a){
return objj_msgSend(CPCursor,"_systemCursorWithName:cssString:hasImage:",CPStringFromSelector(_4b),"text",NO);
}
}),new objj_method(sel_getUid("pointingHandCursor"),function(_4c,_4d){
with(_4c){
return objj_msgSend(CPCursor,"_systemCursorWithName:cssString:hasImage:",CPStringFromSelector(_4d),"pointer",NO);
}
}),new objj_method(sel_getUid("resizeDownCursor"),function(_4e,_4f){
with(_4e){
return objj_msgSend(CPCursor,"_systemCursorWithName:cssString:hasImage:",CPStringFromSelector(_4f),"s-resize",NO);
}
}),new objj_method(sel_getUid("resizeUpCursor"),function(_50,_51){
with(_50){
return objj_msgSend(CPCursor,"_systemCursorWithName:cssString:hasImage:",CPStringFromSelector(_51),"n-resize",NO);
}
}),new objj_method(sel_getUid("resizeLeftCursor"),function(_52,_53){
with(_52){
return objj_msgSend(CPCursor,"_systemCursorWithName:cssString:hasImage:",CPStringFromSelector(_53),"w-resize",NO);
}
}),new objj_method(sel_getUid("resizeRightCursor"),function(_54,_55){
with(_54){
return objj_msgSend(CPCursor,"_systemCursorWithName:cssString:hasImage:",CPStringFromSelector(_55),"e-resize",NO);
}
}),new objj_method(sel_getUid("resizeLeftRightCursor"),function(_56,_57){
with(_56){
return objj_msgSend(CPCursor,"_systemCursorWithName:cssString:hasImage:",CPStringFromSelector(_57),"col-resize",NO);
}
}),new objj_method(sel_getUid("resizeUpDownCursor"),function(_58,_59){
with(_58){
return objj_msgSend(CPCursor,"_systemCursorWithName:cssString:hasImage:",CPStringFromSelector(_59),"row-resize",NO);
}
}),new objj_method(sel_getUid("operationNotAllowedCursor"),function(_5a,_5b){
with(_5a){
return objj_msgSend(CPCursor,"_systemCursorWithName:cssString:hasImage:",CPStringFromSelector(_5b),"not-allowed",NO);
}
}),new objj_method(sel_getUid("dragCopyCursor"),function(_5c,_5d){
with(_5c){
return objj_msgSend(CPCursor,"_systemCursorWithName:cssString:hasImage:",CPStringFromSelector(_5d),"copy",YES);
}
}),new objj_method(sel_getUid("dragLinkCursor"),function(_5e,_5f){
with(_5e){
return objj_msgSend(CPCursor,"_systemCursorWithName:cssString:hasImage:",CPStringFromSelector(_5f),"alias",YES);
}
}),new objj_method(sel_getUid("contextualMenuCursor"),function(_60,_61){
with(_60){
return objj_msgSend(CPCursor,"_systemCursorWithName:cssString:hasImage:",CPStringFromSelector(_61),"context-menu",YES);
}
}),new objj_method(sel_getUid("openHandCursor"),function(_62,_63){
with(_62){
return objj_msgSend(CPCursor,"_systemCursorWithName:cssString:hasImage:",CPStringFromSelector(_63),"move",YES);
}
}),new objj_method(sel_getUid("closedHandCursor"),function(_64,_65){
with(_64){
return objj_msgSend(CPCursor,"_systemCursorWithName:cssString:hasImage:",CPStringFromSelector(_65),"-moz-grabbing",YES);
}
}),new objj_method(sel_getUid("disappearingItemCursor"),function(_66,_67){
with(_66){
return objj_msgSend(CPCursor,"_systemCursorWithName:cssString:hasImage:",CPStringFromSelector(_67),"auto",YES);
}
})]);
var _4=objj_getClass("CPCursor");
if(!_4){
throw new SyntaxError("*** Could not find definition for class \"CPCursor\"");
}
var _5=_4.isa;
class_addMethods(_4,[new objj_method(sel_getUid("initWithCoder:"),function(_68,_69,_6a){
with(_68){
if(_68=objj_msgSendSuper({receiver:_68,super_class:objj_getClass("CPCursor").super_class},"init")){
_cssString=objj_msgSend(_6a,"decodeObjectForKey:","CPCursorNameKey");
}
return _68;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_6b,_6c,_6d){
with(_6b){
objj_msgSend(_6d,"encodeObject:forKey:",_cssString,"CPCursorNameKey");
}
})]);
