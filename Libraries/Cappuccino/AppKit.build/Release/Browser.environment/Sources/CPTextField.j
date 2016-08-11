@STATIC;1.0;i;11;CPControl.ji;17;CPStringDrawing.ji;17;CPCompatibility.ji;21;_CPImageAndTextView.jt;34701;
objj_executeFile("CPControl.j",YES);
objj_executeFile("CPStringDrawing.j",YES);
objj_executeFile("CPCompatibility.j",YES);
objj_executeFile("_CPImageAndTextView.j",YES);
CPTextFieldSquareBezel=0;
CPTextFieldRoundedBezel=1;
CPTextFieldDidFocusNotification="CPTextFieldDidFocusNotification";
CPTextFieldDidBlurNotification="CPTextFieldDidBlurNotification";
var _1=nil,_2=nil,_3=nil,_4=nil,_5=nil,_6=NO,_7=NO,_8=NO,_9=nil,_a=nil,_b=nil;
var _c="•";
var _d=objj_getClass("CPString");
if(!_d){
throw new SyntaxError("*** Could not find definition for class \"CPString\"");
}
var _e=_d.isa;
class_addMethods(_d,[new objj_method(sel_getUid("string"),function(_f,_10){
with(_f){
return _f;
}
})]);
CPTextFieldStateRounded=CPThemeState("rounded");
CPTextFieldStatePlaceholder=CPThemeState("placeholder");
var _d=objj_allocateClassPair(CPControl,"CPTextField"),_e=_d.isa;
class_addIvars(_d,[new objj_ivar("_isEditing"),new objj_ivar("_isEditable"),new objj_ivar("_isSelectable"),new objj_ivar("_isSecure"),new objj_ivar("_willBecomeFirstResponderByClick"),new objj_ivar("_drawsBackground"),new objj_ivar("_textFieldBackgroundColor"),new objj_ivar("_placeholderString"),new objj_ivar("_delegate"),new objj_ivar("_textDidChangeValue"),new objj_ivar("_bezelStyle"),new objj_ivar("_isBordered"),new objj_ivar("_controlSize")]);
objj_registerClassPair(_d);
class_addMethods(_d,[new objj_method(sel_getUid("_inputElement"),function(_11,_12){
with(_11){
if(!_1){
_1=document.createElement("input");
_1.style.position="absolute";
_1.style.border="0px";
_1.style.padding="0px";
_1.style.margin="0px";
_1.style.whiteSpace="pre";
_1.style.background="transparent";
_1.style.outline="none";
_b=function(_13){
if(_4&&_4._DOMElement!=_1.parentNode){
return;
}
if(!_6){
objj_msgSend(objj_msgSend(_4,"window"),"makeFirstResponder:",nil);
return;
}
CPTextFieldHandleBlur(_13,_1);
_7=YES;
return true;
};
CPTextFieldHandleBlur=function(_14){
_4=nil;
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
};
_1.onblur=_b;
_3=_1;
}
if(CPFeatureIsCompatible(CPInputTypeCanBeChangedFeature)){
if(objj_msgSend(_11,"isSecure")){
_1.type="password";
}else{
_1.type="text";
}
return _1;
}
if(objj_msgSend(_11,"isSecure")){
if(!_2){
_2=document.createElement("input");
_2.style.position="absolute";
_2.style.border="0px";
_2.style.padding="0px";
_2.style.margin="0px";
_2.style.whiteSpace="pre";
_2.style.background="transparent";
_2.style.outline="none";
_2.type="password";
_2.onblur=_b;
}
_1=_2;
}else{
_1=_3;
}
return _1;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_15,_16,_17){
with(_15){
_15=objj_msgSendSuper({receiver:_15,super_class:objj_getClass("CPTextField").super_class},"initWithFrame:",_17);
if(_15){
objj_msgSend(_15,"setStringValue:","");
objj_msgSend(_15,"setPlaceholderString:","");
_sendActionOn=CPKeyUpMask|CPKeyDownMask;
objj_msgSend(_15,"setValue:forThemeAttribute:",CPLeftTextAlignment,"alignment");
}
return _15;
}
}),new objj_method(sel_getUid("setEditable:"),function(_18,_19,_1a){
with(_18){
if(_isEditable===_1a){
return;
}
_isEditable=_1a;
if(_1a){
_isSelectable=YES;
}
if(!_1a&&objj_msgSend(objj_msgSend(_18,"window"),"firstResponder")===_18){
objj_msgSend(objj_msgSend(_18,"window"),"makeFirstResponder:",nil);
}
}
}),new objj_method(sel_getUid("isEditable"),function(_1b,_1c){
with(_1b){
return _isEditable;
}
}),new objj_method(sel_getUid("setEnabled:"),function(_1d,_1e,_1f){
with(_1d){
objj_msgSendSuper({receiver:_1d,super_class:objj_getClass("CPTextField").super_class},"setEnabled:",_1f);
if(!_1f&&objj_msgSend(objj_msgSend(_1d,"window"),"firstResponder")===_1d){
objj_msgSend(objj_msgSend(_1d,"window"),"makeFirstResponder:",nil);
}
}
}),new objj_method(sel_getUid("setSelectable:"),function(_20,_21,_22){
with(_20){
_isSelectable=_22;
}
}),new objj_method(sel_getUid("isSelectable"),function(_23,_24){
with(_23){
return _isSelectable;
}
}),new objj_method(sel_getUid("setSecure:"),function(_25,_26,_27){
with(_25){
_isSecure=_27;
}
}),new objj_method(sel_getUid("isSecure"),function(_28,_29){
with(_28){
return _isSecure;
}
}),new objj_method(sel_getUid("setBezeled:"),function(_2a,_2b,_2c){
with(_2a){
if(_2c){
objj_msgSend(_2a,"setThemeState:",CPThemeStateBezeled);
}else{
objj_msgSend(_2a,"unsetThemeState:",CPThemeStateBezeled);
}
}
}),new objj_method(sel_getUid("isBezeled"),function(_2d,_2e){
with(_2d){
return objj_msgSend(_2d,"hasThemeState:",CPThemeStateBezeled);
}
}),new objj_method(sel_getUid("setBezelStyle:"),function(_2f,_30,_31){
with(_2f){
var _32=_31===CPTextFieldRoundedBezel;
if(_32){
objj_msgSend(_2f,"setThemeState:",CPTextFieldStateRounded);
}else{
objj_msgSend(_2f,"unsetThemeState:",CPTextFieldStateRounded);
}
}
}),new objj_method(sel_getUid("bezelStyle"),function(_33,_34){
with(_33){
if(objj_msgSend(_33,"hasThemeState:",CPTextFieldStateRounded)){
return CPTextFieldRoundedBezel;
}
return CPTextFieldSquareBezel;
}
}),new objj_method(sel_getUid("setBordered:"),function(_35,_36,_37){
with(_35){
if(_37){
objj_msgSend(_35,"setThemeState:",CPThemeStateBordered);
}else{
objj_msgSend(_35,"unsetThemeState:",CPThemeStateBordered);
}
}
}),new objj_method(sel_getUid("isBordered"),function(_38,_39){
with(_38){
return objj_msgSend(_38,"hasThemeState:",CPThemeStateBordered);
}
}),new objj_method(sel_getUid("setDrawsBackground:"),function(_3a,_3b,_3c){
with(_3a){
if(_drawsBackground==_3c){
return;
}
_drawsBackground=_3c;
objj_msgSend(_3a,"setNeedsLayout");
objj_msgSend(_3a,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("drawsBackground"),function(_3d,_3e){
with(_3d){
return _drawsBackground;
}
}),new objj_method(sel_getUid("setTextFieldBackgroundColor:"),function(_3f,_40,_41){
with(_3f){
if(_textFieldBackgroundColor==_41){
return;
}
_textFieldBackgroundColor=_41;
objj_msgSend(_3f,"setNeedsLayout");
objj_msgSend(_3f,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("textFieldBackgroundColor"),function(_42,_43){
with(_42){
return _textFieldBackgroundColor;
}
}),new objj_method(sel_getUid("acceptsFirstResponder"),function(_44,_45){
with(_44){
return objj_msgSend(_44,"isEditable")&&objj_msgSend(_44,"isEnabled");
}
}),new objj_method(sel_getUid("becomeFirstResponder"),function(_46,_47){
with(_46){
if(_4&&objj_msgSend(_4,"window")!==objj_msgSend(_46,"window")){
objj_msgSend(objj_msgSend(_4,"window"),"makeFirstResponder:",nil);
}
objj_msgSend(_46,"setThemeState:",CPThemeStateEditing);
objj_msgSend(_46,"_updatePlaceholderState");
objj_msgSend(_46,"setNeedsLayout");
_isEditing=NO;
var _48=objj_msgSend(_46,"stringValue"),_49=objj_msgSend(_46,"_inputElement"),_4a=objj_msgSend(_46,"currentValueForThemeAttribute:","font");
objj_msgSend(_4a,"_getMetrics");
_49.value=_48;
_49.style.color=objj_msgSend(objj_msgSend(_46,"currentValueForThemeAttribute:","text-color"),"cssString");
_49.style.font=objj_msgSend(_4a,"cssString");
_49.style.zIndex=1000;
switch(objj_msgSend(_46,"alignment")){
case CPCenterTextAlignment:
_49.style.textAlign="center";
break;
case CPRightTextAlignment:
_49.style.textAlign="right";
break;
default:
_49.style.textAlign="left";
}
var _4b=objj_msgSend(_46,"contentRectForBounds:",objj_msgSend(_46,"bounds")),_4c=objj_msgSend(_46,"currentValueForThemeAttribute:","vertical-alignment");
switch(_4c){
case CPTopVerticalTextAlignment:
var _4d=((_4b.origin.y)+1)+"px";
break;
case CPCenterVerticalTextAlignment:
var _4d=((_4b.origin.y+(_4b.size.height)/2)-(_4a._lineHeight/2)+1)+"px";
break;
case CPBottomVerticalTextAlignment:
var _4d=((_4b.origin.y+_4b.size.height)-_4a._lineHeight)+"px";
break;
default:
var _4d=((_4b.origin.y)+1)+"px";
break;
}
_49.style.top=_4d;
_49.style.left=((_4b.origin.x)-1)+"px";
_49.style.width=(_4b.size.width)+"px";
_49.style.height=_4a._lineHeight+"px";
_DOMElement.appendChild(_49);
window.setTimeout(function(){
_49.focus();
if(!_willBecomeFirstResponderByClick){
objj_msgSend(_46,"selectText:",_46);
}
_willBecomeFirstResponderByClick=NO;
objj_msgSend(_46,"textDidFocus:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPTextFieldDidFocusNotification,_46,nil));
_4=_46;
},0);
_49.value=objj_msgSend(_46,"stringValue");
objj_msgSend(objj_msgSend(objj_msgSend(_46,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",YES);
_8=YES;
if(document.attachEvent){
_9=objj_msgSend(objj_msgSend(_46,"window"),"platformWindow")._DOMBodyElement.onselectstart;
_a=objj_msgSend(objj_msgSend(_46,"window"),"platformWindow")._DOMBodyElement.ondrag;
objj_msgSend(objj_msgSend(_46,"window"),"platformWindow")._DOMBodyElement.ondrag=function(){
};
objj_msgSend(objj_msgSend(_46,"window"),"platformWindow")._DOMBodyElement.onselectstart=function(){
};
}
return YES;
}
}),new objj_method(sel_getUid("resignFirstResponder"),function(_4e,_4f){
with(_4e){
objj_msgSend(_4e,"unsetThemeState:",CPThemeStateEditing);
objj_msgSend(_4e,"_updatePlaceholderState");
objj_msgSend(_4e,"setNeedsLayout");
var _50=objj_msgSend(_4e,"_inputElement");
if(objj_msgSend(_4e,"stringValue")!==_50.value){
objj_msgSend(_4e,"_setStringValue:",_50.value);
}
_6=YES;
if(_8){
_50.blur();
}
if(!_7){
_b();
}
_7=NO;
_6=NO;
if(_50.parentNode==_DOMElement){
_50.parentNode.removeChild(_50);
}
_8=NO;
if(document.attachEvent){
objj_msgSend(objj_msgSend(_4e,"window"),"platformWindow")._DOMBodyElement.ondrag=_a;
objj_msgSend(objj_msgSend(_4e,"window"),"platformWindow")._DOMBodyElement.onselectstart=_9;
_9=nil;
_a=nil;
}
if(_isEditing){
_isEditing=NO;
objj_msgSend(_4e,"textDidEndEditing:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidEndEditingNotification,_4e,nil));
if(objj_msgSend(_4e,"sendsActionOnEndEditing")){
objj_msgSend(_4e,"sendAction:to:",objj_msgSend(_4e,"action"),objj_msgSend(_4e,"target"));
}
}
objj_msgSend(_4e,"textDidBlur:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPTextFieldDidBlurNotification,_4e,nil));
return YES;
}
}),new objj_method(sel_getUid("needsPanelToBecomeKey"),function(_51,_52){
with(_51){
return YES;
}
}),new objj_method(sel_getUid("mouseDown:"),function(_53,_54,_55){
with(_53){
if(objj_msgSend(_53,"isEditable")&&objj_msgSend(_53,"isEnabled")){
_willBecomeFirstResponderByClick=YES;
objj_msgSend(objj_msgSend(_53,"window"),"makeFirstResponder:",_53);
}else{
if(objj_msgSend(_53,"isSelectable")){
if(document.attachEvent){
_9=objj_msgSend(objj_msgSend(_53,"window"),"platformWindow")._DOMBodyElement.onselectstart;
_a=objj_msgSend(objj_msgSend(_53,"window"),"platformWindow")._DOMBodyElement.ondrag;
objj_msgSend(objj_msgSend(_53,"window"),"platformWindow")._DOMBodyElement.ondrag=function(){
};
objj_msgSend(objj_msgSend(_53,"window"),"platformWindow")._DOMBodyElement.onselectstart=function(){
};
}
return objj_msgSend(objj_msgSend(objj_msgSend(_55,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",YES);
}else{
return objj_msgSend(objj_msgSend(_53,"nextResponder"),"mouseDown:",_55);
}
}
}
}),new objj_method(sel_getUid("mouseUp:"),function(_56,_57,_58){
with(_56){
if(!objj_msgSend(_56,"isSelectable")&&(!objj_msgSend(_56,"isEditable")||!objj_msgSend(_56,"isEnabled"))){
objj_msgSend(objj_msgSend(_56,"nextResponder"),"mouseUp:",_58);
}else{
if(objj_msgSend(_56,"isSelectable")){
if(document.attachEvent){
objj_msgSend(objj_msgSend(_56,"window"),"platformWindow")._DOMBodyElement.ondrag=_a;
objj_msgSend(objj_msgSend(_56,"window"),"platformWindow")._DOMBodyElement.onselectstart=_9;
_9=nil;
_a=nil;
}
return objj_msgSend(objj_msgSend(objj_msgSend(_58,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",YES);
}
}
}
}),new objj_method(sel_getUid("mouseDragged:"),function(_59,_5a,_5b){
with(_59){
if(!objj_msgSend(_59,"isSelectable")&&(!objj_msgSend(_59,"isEditable")||!objj_msgSend(_59,"isEnabled"))){
objj_msgSend(objj_msgSend(_59,"nextResponder"),"mouseDragged:",_5b);
}else{
if(objj_msgSend(_59,"isSelectable")){
return objj_msgSend(objj_msgSend(objj_msgSend(_5b,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",YES);
}
}
}
}),new objj_method(sel_getUid("keyUp:"),function(_5c,_5d,_5e){
with(_5c){
var _5f=objj_msgSend(_5c,"stringValue");
objj_msgSend(_5c,"_setStringValue:",objj_msgSend(_5c,"_inputElement").value);
if(_5f!==objj_msgSend(_5c,"stringValue")){
if(!_isEditing){
_isEditing=YES;
objj_msgSend(_5c,"textDidBeginEditing:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidBeginEditingNotification,_5c,nil));
}
objj_msgSend(_5c,"textDidChange:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidChangeNotification,_5c,nil));
}
objj_msgSend(objj_msgSend(objj_msgSend(_5c,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",YES);
}
}),new objj_method(sel_getUid("keyDown:"),function(_60,_61,_62){
with(_60){
if(objj_msgSend(_62,"_couldBeKeyEquivalent")&&objj_msgSend(_60,"performKeyEquivalent:",_62)){
return;
}
objj_msgSend(objj_msgSend(objj_msgSend(_60,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",YES);
objj_msgSend(_60,"interpretKeyEvents:",[_62]);
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
}),new objj_method(sel_getUid("doCommandBySelector:"),function(_63,_64,_65){
with(_63){
if(objj_msgSend(_63,"respondsToSelector:",_65)){
objj_msgSend(_63,"performSelector:",_65);
}
}
}),new objj_method(sel_getUid("insertNewline:"),function(_66,_67,_68){
with(_66){
if(_isEditing){
_isEditing=NO;
objj_msgSend(_66,"textDidEndEditing:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidEndEditingNotification,_66,nil));
}
objj_msgSend(_66,"sendAction:to:",objj_msgSend(_66,"action"),objj_msgSend(_66,"target"));
objj_msgSend(_66,"selectText:",nil);
objj_msgSend(objj_msgSend(objj_msgSend(_66,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",NO);
}
}),new objj_method(sel_getUid("insertNewlineIgnoringFieldEditor:"),function(_69,_6a,_6b){
with(_69){
var _6c=objj_msgSend(_69,"stringValue");
objj_msgSend(_69,"_inputElement").value+=CPNewlineCharacter;
objj_msgSend(_69,"_setStringValue:",objj_msgSend(_69,"_inputElement").value);
if(_6c!==objj_msgSend(_69,"stringValue")){
if(!_isEditing){
_isEditing=YES;
objj_msgSend(_69,"textDidBeginEditing:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidBeginEditingNotification,_69,nil));
}
objj_msgSend(_69,"textDidChange:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidChangeNotification,_69,nil));
}
}
}),new objj_method(sel_getUid("insertTabIgnoringFieldEditor:"),function(_6d,_6e,_6f){
with(_6d){
var _70=objj_msgSend(_6d,"stringValue");
objj_msgSend(_6d,"_inputElement").value+=CPTabCharacter;
objj_msgSend(_6d,"_setStringValue:",objj_msgSend(_6d,"_inputElement").value);
if(_70!==objj_msgSend(_6d,"stringValue")){
if(!_isEditing){
_isEditing=YES;
objj_msgSend(_6d,"textDidBeginEditing:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidBeginEditingNotification,_6d,nil));
}
objj_msgSend(_6d,"textDidChange:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidChangeNotification,_6d,nil));
}
}
}),new objj_method(sel_getUid("textDidBlur:"),function(_71,_72,_73){
with(_71){
if(objj_msgSend(_73,"object")!=_71){
return;
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotification:",_73);
}
}),new objj_method(sel_getUid("textDidFocus:"),function(_74,_75,_76){
with(_74){
if(objj_msgSend(_76,"object")!=_74){
return;
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotification:",_76);
}
}),new objj_method(sel_getUid("textDidChange:"),function(_77,_78,_79){
with(_77){
if(objj_msgSend(_79,"object")!==_77){
return;
}
objj_msgSend(_77,"_continuouslyReverseSetBinding");
objj_msgSendSuper({receiver:_77,super_class:objj_getClass("CPTextField").super_class},"textDidChange:",_79);
}
}),new objj_method(sel_getUid("sendAction:to:"),function(_7a,_7b,_7c,_7d){
with(_7a){
objj_msgSend(_7a,"_reverseSetBinding");
objj_msgSend(CPApp,"sendAction:to:from:",_7c,_7d,_7a);
}
}),new objj_method(sel_getUid("objectValue"),function(_7e,_7f){
with(_7e){
return objj_msgSendSuper({receiver:_7e,super_class:objj_getClass("CPTextField").super_class},"objectValue");
}
}),new objj_method(sel_getUid("_setStringValue:"),function(_80,_81,_82){
with(_80){
objj_msgSend(_80,"willChangeValueForKey:","objectValue");
objj_msgSendSuper({receiver:_80,super_class:objj_getClass("CPTextField").super_class},"setObjectValue:",String(_82));
objj_msgSend(_80,"_updatePlaceholderState");
objj_msgSend(_80,"didChangeValueForKey:","objectValue");
}
}),new objj_method(sel_getUid("setObjectValue:"),function(_83,_84,_85){
with(_83){
objj_msgSendSuper({receiver:_83,super_class:objj_getClass("CPTextField").super_class},"setObjectValue:",_85);
if(_4===_83||objj_msgSend(objj_msgSend(_83,"window"),"firstResponder")===_83){
objj_msgSend(_83,"_inputElement").value=_85;
}
objj_msgSend(_83,"_updatePlaceholderState");
}
}),new objj_method(sel_getUid("_updatePlaceholderState"),function(_86,_87){
with(_86){
var _88=objj_msgSend(_86,"stringValue");
if((!_88||_88.length===0)&&!objj_msgSend(_86,"hasThemeState:",CPThemeStateEditing)){
objj_msgSend(_86,"setThemeState:",CPTextFieldStatePlaceholder);
}else{
objj_msgSend(_86,"unsetThemeState:",CPTextFieldStatePlaceholder);
}
}
}),new objj_method(sel_getUid("setPlaceholderString:"),function(_89,_8a,_8b){
with(_89){
if(_placeholderString===_8b){
return;
}
_placeholderString=_8b;
if(objj_msgSend(_89,"hasThemeState:",CPTextFieldStatePlaceholder)){
objj_msgSend(_89,"setNeedsLayout");
objj_msgSend(_89,"setNeedsDisplay:",YES);
}
}
}),new objj_method(sel_getUid("placeholderString"),function(_8c,_8d){
with(_8c){
return _placeholderString;
}
}),new objj_method(sel_getUid("sizeToFit"),function(_8e,_8f){
with(_8e){
objj_msgSend(_8e,"setFrameSize:",objj_msgSend(_8e,"_minimumFrameSize"));
}
}),new objj_method(sel_getUid("_minimumFrameSize"),function(_90,_91){
with(_90){
var _92=objj_msgSend(_90,"frameSize"),_93=objj_msgSend(_90,"currentValueForThemeAttribute:","content-inset"),_94=objj_msgSend(_90,"currentValueForThemeAttribute:","min-size"),_95=objj_msgSend(_90,"currentValueForThemeAttribute:","max-size"),_96=objj_msgSend(_90,"lineBreakMode"),_97=(objj_msgSend(_90,"stringValue")||" "),_98={width:_92.width,height:_92.height},_99=objj_msgSend(_90,"currentValueForThemeAttribute:","font");
_98.width-=_93.left+_93.right;
_98.height-=_93.top+_93.bottom;
if(_92.width!==0&&!objj_msgSend(_90,"isBezeled")&&(_96===CPLineBreakByWordWrapping||_96===CPLineBreakByCharWrapping)){
_98=objj_msgSend(_97,"sizeWithFont:inWidth:",_99,_98.width);
}else{
_98=objj_msgSend(_97,"sizeWithFont:",_99);
}
_92.height=_98.height+_93.top+_93.bottom;
if(objj_msgSend(_90,"isBezeled")){
_92.height=MAX(_92.height,_94.height);
if(_95.width>0){
_92.width=MIN(_92.width,_95.width);
}
if(_95.height>0){
_92.height=MIN(_92.height,_95.height);
}
}else{
_92.width=_98.width+_93.left+_93.right;
}
_92.width=MAX(_92.width,_94.width);
return _92;
}
}),new objj_method(sel_getUid("selectText:"),function(_9a,_9b,_9c){
with(_9a){
if((objj_msgSend(_9a,"isEditable")||objj_msgSend(_9a,"isSelectable"))){
var _9d=objj_msgSend(_9a,"_inputElement");
if(objj_msgSend(objj_msgSend(_9a,"window"),"firstResponder")===_9a){
window.setTimeout(function(){
_9d.select();
},0);
}else{
if(objj_msgSend(_9a,"window")!==nil&&objj_msgSend(objj_msgSend(_9a,"window"),"makeFirstResponder:",_9a)){
window.setTimeout(function(){
objj_msgSend(_9a,"selectText:",_9c);
},0);
}
}
}
}
}),new objj_method(sel_getUid("copy:"),function(_9e,_9f,_a0){
with(_9e){
if(!objj_msgSend(CPPlatform,"isBrowser")){
var _a1=objj_msgSend(_9e,"selectedRange");
if(_a1.length<1){
return;
}
var _a2=objj_msgSend(CPPasteboard,"generalPasteboard"),_a3=objj_msgSend(_9e,"stringValue"),_a4=objj_msgSend(_a3,"substringWithRange:",_a1);
objj_msgSend(_a2,"declareTypes:owner:",[CPStringPboardType],nil);
objj_msgSend(_a2,"setString:forType:",_a4,CPStringPboardType);
}
}
}),new objj_method(sel_getUid("cut:"),function(_a5,_a6,_a7){
with(_a5){
if(!objj_msgSend(CPPlatform,"isBrowser")){
objj_msgSend(_a5,"copy:",_a7);
objj_msgSend(_a5,"deleteBackward:",_a7);
}else{
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",0,_a5,sel_getUid("keyUp:"),nil,NO);
}
}
}),new objj_method(sel_getUid("paste:"),function(_a8,_a9,_aa){
with(_a8){
if(!objj_msgSend(CPPlatform,"isBrowser")){
var _ab=objj_msgSend(CPPasteboard,"generalPasteboard");
if(!objj_msgSend(objj_msgSend(_ab,"types"),"containsObject:",CPStringPboardType)){
return;
}
objj_msgSend(_a8,"deleteBackward:",_aa);
var _ac=objj_msgSend(_a8,"selectedRange"),_ad=objj_msgSend(_a8,"stringValue"),_ae=objj_msgSend(_ab,"stringForType:",CPStringPboardType),_af=objj_msgSend(_ad,"stringByReplacingCharactersInRange:withString:",_ac,_ae);
objj_msgSend(_a8,"setStringValue:",_af);
objj_msgSend(_a8,"setSelectedRange:",CPMakeRange(_ac.location+_ae.length,0));
}else{
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",0,_a8,sel_getUid("keyUp:"),nil,NO);
}
}
}),new objj_method(sel_getUid("selectedRange"),function(_b0,_b1){
with(_b0){
if(objj_msgSend(objj_msgSend(_b0,"window"),"firstResponder")!==_b0){
return CPMakeRange(0,0);
}
try{
var _b2=objj_msgSend(_b0,"_inputElement"),_b3=_b2.selectionStart,_b4=_b2.selectionEnd;
if(objj_msgSend(_b3,"isKindOfClass:",CPNumber)){
return CPMakeRange(_b3,_b4-_b3);
}
var _b5=_b2.ownerDocument||_b2.document,_b6=_b5.selection.createRange(),_b7=_b2.createTextRange();
if(_b7.inRange(_b6)){
_b7.setEndPoint("EndToStart",_b6);
return CPMakeRange(_b7.text.length,_b6.text.length);
}
}
catch(e){
}
return CPMakeRange(0,0);
}
}),new objj_method(sel_getUid("setSelectedRange:"),function(_b8,_b9,_ba){
with(_b8){
if(!objj_msgSend(objj_msgSend(_b8,"window"),"firstResponder")===_b8){
return;
}
var _bb=objj_msgSend(_b8,"_inputElement");
try{
if(objj_msgSend(_bb.selectionStart,"isKindOfClass:",CPNumber)){
_bb.selectionStart=_ba.location;
_bb.selectionEnd=CPMaxRange(_ba);
}else{
var _bc=_bb.ownerDocument||_bb.document,_bd=_bc.selection.createRange(),_be=_bb.createTextRange();
if(_be.inRange(_bd)){
_be.collapse(true);
_be.move("character",_ba.location);
_be.moveEnd("character",_ba.length);
_be.select();
}
}
}
catch(e){
}
}
}),new objj_method(sel_getUid("selectAll:"),function(_bf,_c0,_c1){
with(_bf){
objj_msgSend(_bf,"selectText:",_c1);
}
}),new objj_method(sel_getUid("deleteBackward:"),function(_c2,_c3,_c4){
with(_c2){
var _c5=objj_msgSend(_c2,"selectedRange");
if(_c5.length<2){
return;
}
_c5.location+=1;
_c5.length-=1;
var _c6=objj_msgSend(_c2,"stringValue"),_c7=objj_msgSend(_c6,"stringByReplacingCharactersInRange:withString:",_c5,"");
objj_msgSend(_c2,"setStringValue:",_c7);
objj_msgSend(_c2,"setSelectedRange:",CPMakeRange(_c5.location,0));
}
}),new objj_method(sel_getUid("setDelegate:"),function(_c8,_c9,_ca){
with(_c8){
var _cb=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(_delegate){
objj_msgSend(_cb,"removeObserver:name:object:",_delegate,CPControlTextDidBeginEditingNotification,_c8);
objj_msgSend(_cb,"removeObserver:name:object:",_delegate,CPControlTextDidChangeNotification,_c8);
objj_msgSend(_cb,"removeObserver:name:object:",_delegate,CPControlTextDidEndEditingNotification,_c8);
objj_msgSend(_cb,"removeObserver:name:object:",_delegate,CPTextFieldDidFocusNotification,_c8);
objj_msgSend(_cb,"removeObserver:name:object:",_delegate,CPTextFieldDidBlurNotification,_c8);
}
_delegate=_ca;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("controlTextDidBeginEditing:"))){
objj_msgSend(_cb,"addObserver:selector:name:object:",_delegate,sel_getUid("controlTextDidBeginEditing:"),CPControlTextDidBeginEditingNotification,_c8);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("controlTextDidChange:"))){
objj_msgSend(_cb,"addObserver:selector:name:object:",_delegate,sel_getUid("controlTextDidChange:"),CPControlTextDidChangeNotification,_c8);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("controlTextDidEndEditing:"))){
objj_msgSend(_cb,"addObserver:selector:name:object:",_delegate,sel_getUid("controlTextDidEndEditing:"),CPControlTextDidEndEditingNotification,_c8);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("controlTextDidFocus:"))){
objj_msgSend(_cb,"addObserver:selector:name:object:",_delegate,sel_getUid("controlTextDidFocus:"),CPTextFieldDidFocusNotification,_c8);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("controlTextDidBlur:"))){
objj_msgSend(_cb,"addObserver:selector:name:object:",_delegate,sel_getUid("controlTextDidBlur:"),CPTextFieldDidBlurNotification,_c8);
}
}
}),new objj_method(sel_getUid("delegate"),function(_cc,_cd){
with(_cc){
return _delegate;
}
}),new objj_method(sel_getUid("contentRectForBounds:"),function(_ce,_cf,_d0){
with(_ce){
var _d1=objj_msgSend(_ce,"currentValueForThemeAttribute:","content-inset");
if(!_d1){
return _d0;
}
_d0.origin.x+=_d1.left;
_d0.origin.y+=_d1.top;
_d0.size.width-=_d1.left+_d1.right;
_d0.size.height-=_d1.top+_d1.bottom;
return _d0;
}
}),new objj_method(sel_getUid("bezelRectForBounds:"),function(_d2,_d3,_d4){
with(_d2){
var _d5=objj_msgSend(_d2,"currentValueForThemeAttribute:","bezel-inset");
if(((_d5).top===0&&(_d5).right===0&&(_d5).bottom===0&&(_d5).left===0)){
return _d4;
}
_d4.origin.x+=_d5.left;
_d4.origin.y+=_d5.top;
_d4.size.width-=_d5.left+_d5.right;
_d4.size.height-=_d5.top+_d5.bottom;
return _d4;
}
}),new objj_method(sel_getUid("rectForEphemeralSubviewNamed:"),function(_d6,_d7,_d8){
with(_d6){
if(_d8==="bezel-view"){
return objj_msgSend(_d6,"bezelRectForBounds:",objj_msgSend(_d6,"bounds"));
}else{
if(_d8==="content-view"){
return objj_msgSend(_d6,"contentRectForBounds:",objj_msgSend(_d6,"bounds"));
}
}
return objj_msgSendSuper({receiver:_d6,super_class:objj_getClass("CPTextField").super_class},"rectForEphemeralSubviewNamed:",_d8);
}
}),new objj_method(sel_getUid("createEphemeralSubviewNamed:"),function(_d9,_da,_db){
with(_d9){
if(_db==="bezel-view"){
var _dc=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
objj_msgSend(_dc,"setHitTests:",NO);
return _dc;
}else{
var _dc=objj_msgSend(objj_msgSend(_CPImageAndTextView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
objj_msgSend(_dc,"setHitTests:",NO);
return _dc;
}
return objj_msgSendSuper({receiver:_d9,super_class:objj_getClass("CPTextField").super_class},"createEphemeralSubviewNamed:",_db);
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_dd,_de){
with(_dd){
var _df=objj_msgSend(_dd,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","bezel-view",CPWindowBelow,"content-view");
if(_df){
objj_msgSend(_df,"setBackgroundColor:",objj_msgSend(_dd,"currentValueForThemeAttribute:","bezel-color"));
}
var _e0=objj_msgSend(_dd,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","content-view",CPWindowAbove,"bezel-view");
if(_e0){
objj_msgSend(_e0,"setHidden:",objj_msgSend(_dd,"hasThemeState:",CPThemeStateEditing));
var _e1="";
if(objj_msgSend(_dd,"hasThemeState:",CPTextFieldStatePlaceholder)){
_e1=objj_msgSend(_dd,"placeholderString");
}else{
_e1=objj_msgSend(_dd,"stringValue");
if(objj_msgSend(_dd,"isSecure")){
_e1=_e2(_e1);
}
}
objj_msgSend(_e0,"setText:",_e1);
objj_msgSend(_e0,"setTextColor:",objj_msgSend(_dd,"currentValueForThemeAttribute:","text-color"));
objj_msgSend(_e0,"setFont:",objj_msgSend(_dd,"currentValueForThemeAttribute:","font"));
objj_msgSend(_e0,"setAlignment:",objj_msgSend(_dd,"currentValueForThemeAttribute:","alignment"));
objj_msgSend(_e0,"setVerticalAlignment:",objj_msgSend(_dd,"currentValueForThemeAttribute:","vertical-alignment"));
objj_msgSend(_e0,"setLineBreakMode:",objj_msgSend(_dd,"currentValueForThemeAttribute:","line-break-mode"));
objj_msgSend(_e0,"setTextShadowColor:",objj_msgSend(_dd,"currentValueForThemeAttribute:","text-shadow-color"));
objj_msgSend(_e0,"setTextShadowOffset:",objj_msgSend(_dd,"currentValueForThemeAttribute:","text-shadow-offset"));
}
}
}),new objj_method(sel_getUid("takeValueFromKeyPath:ofObjects:"),function(_e3,_e4,_e5,_e6){
with(_e3){
var _e7=_e6.length,_e8=objj_msgSend(_e6[0],"valueForKeyPath:",_e5);
objj_msgSend(_e3,"setStringValue:",_e8);
objj_msgSend(_e3,"setPlaceholderString:","");
while(_e7-->1){
if(_e8!==objj_msgSend(_e6[_e7],"valueForKeyPath:",_e5)){
objj_msgSend(_e3,"setPlaceholderString:","Multiple Values");
objj_msgSend(_e3,"setStringValue:","");
}
}
}
})]);
class_addMethods(_e,[new objj_method(sel_getUid("textFieldWithStringValue:placeholder:width:"),function(_e9,_ea,_eb,_ec,_ed){
with(_e9){
return objj_msgSend(_e9,"textFieldWithStringValue:placeholder:width:theme:",_eb,_ec,_ed,objj_msgSend(CPTheme,"defaultTheme"));
}
}),new objj_method(sel_getUid("textFieldWithStringValue:placeholder:width:theme:"),function(_ee,_ef,_f0,_f1,_f2,_f3){
with(_ee){
var _f4=objj_msgSend(objj_msgSend(_ee,"alloc"),"initWithFrame:",CGRectMake(0,0,_f2,29));
objj_msgSend(_f4,"setTheme:",_f3);
objj_msgSend(_f4,"setStringValue:",_f0);
objj_msgSend(_f4,"setPlaceholderString:",_f1);
objj_msgSend(_f4,"setBordered:",YES);
objj_msgSend(_f4,"setBezeled:",YES);
objj_msgSend(_f4,"setEditable:",YES);
objj_msgSend(_f4,"sizeToFit");
return _f4;
}
}),new objj_method(sel_getUid("roundedTextFieldWithStringValue:placeholder:width:"),function(_f5,_f6,_f7,_f8,_f9){
with(_f5){
return objj_msgSend(_f5,"roundedTextFieldWithStringValue:placeholder:width:theme:",_f7,_f8,_f9,objj_msgSend(CPTheme,"defaultTheme"));
}
}),new objj_method(sel_getUid("roundedTextFieldWithStringValue:placeholder:width:theme:"),function(_fa,_fb,_fc,_fd,_fe,_ff){
with(_fa){
var _100=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(0,0,_fe,29));
objj_msgSend(_100,"setTheme:",_ff);
objj_msgSend(_100,"setStringValue:",_fc);
objj_msgSend(_100,"setPlaceholderString:",_fd);
objj_msgSend(_100,"setBezelStyle:",CPTextFieldRoundedBezel);
objj_msgSend(_100,"setBordered:",YES);
objj_msgSend(_100,"setBezeled:",YES);
objj_msgSend(_100,"setEditable:",YES);
objj_msgSend(_100,"sizeToFit");
return _100;
}
}),new objj_method(sel_getUid("labelWithTitle:"),function(self,_101,_102){
with(self){
return objj_msgSend(self,"labelWithTitle:theme:",_102,objj_msgSend(CPTheme,"defaultTheme"));
}
}),new objj_method(sel_getUid("labelWithTitle:theme:"),function(self,_103,_104,_105){
with(self){
var _106=objj_msgSend(objj_msgSend(self,"alloc"),"init");
objj_msgSend(_106,"setStringValue:",_104);
objj_msgSend(_106,"sizeToFit");
return _106;
}
}),new objj_method(sel_getUid("defaultThemeClass"),function(self,_107){
with(self){
return "textfield";
}
}),new objj_method(sel_getUid("_binderClassForBinding:"),function(self,_108,_109){
with(self){
if(_109===CPValueBinding){
return objj_msgSend(_CPTextFieldValueBinder,"class");
}
return objj_msgSendSuper({receiver:self,super_class:objj_getMetaClass("CPTextField").super_class},"_binderClassForBinding:",_109);
}
}),new objj_method(sel_getUid("themeAttributes"),function(self,_10a){
with(self){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[{top:(0),right:(0),bottom:(0),left:(0)},{top:(2),right:(2),bottom:(2),left:(2)},objj_msgSend(CPNull,"null")],["bezel-inset","content-inset","bezel-color"]);
}
})]);
var _e2=function(_10b){
if(!_10b){
return "";
}
return Array(_10b.length+1).join(_c);
};
var _10c="CPTextFieldIsEditableKey",_10d="CPTextFieldIsSelectableKey",_10e="CPTextFieldIsBorderedKey",_10f="CPTextFieldIsBezeledKey",_110="CPTextFieldBezelStyleKey",_111="CPTextFieldDrawsBackgroundKey",_112="CPTextFieldLineBreakModeKey",_113="CPTextFieldAlignmentKey",_114="CPTextFieldBackgroundColorKey",_115="CPTextFieldPlaceholderStringKey";
var _d=objj_getClass("CPTextField");
if(!_d){
throw new SyntaxError("*** Could not find definition for class \"CPTextField\"");
}
var _e=_d.isa;
class_addMethods(_d,[new objj_method(sel_getUid("initWithCoder:"),function(self,_116,_117){
with(self){
self=objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPTextField").super_class},"initWithCoder:",_117);
if(self){
objj_msgSend(self,"setEditable:",objj_msgSend(_117,"decodeBoolForKey:",_10c));
objj_msgSend(self,"setSelectable:",objj_msgSend(_117,"decodeBoolForKey:",_10d));
objj_msgSend(self,"setDrawsBackground:",objj_msgSend(_117,"decodeBoolForKey:",_111));
objj_msgSend(self,"setTextFieldBackgroundColor:",objj_msgSend(_117,"decodeObjectForKey:",_114));
objj_msgSend(self,"setLineBreakMode:",objj_msgSend(_117,"decodeIntForKey:",_112));
objj_msgSend(self,"setAlignment:",objj_msgSend(_117,"decodeIntForKey:",_113));
objj_msgSend(self,"setPlaceholderString:",objj_msgSend(_117,"decodeObjectForKey:",_115));
}
return self;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(self,_118,_119){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPTextField").super_class},"encodeWithCoder:",_119);
objj_msgSend(_119,"encodeBool:forKey:",_isEditable,_10c);
objj_msgSend(_119,"encodeBool:forKey:",_isSelectable,_10d);
objj_msgSend(_119,"encodeBool:forKey:",_drawsBackground,_111);
objj_msgSend(_119,"encodeObject:forKey:",_textFieldBackgroundColor,_114);
objj_msgSend(_119,"encodeInt:forKey:",objj_msgSend(self,"lineBreakMode"),_112);
objj_msgSend(_119,"encodeInt:forKey:",objj_msgSend(self,"alignment"),_113);
objj_msgSend(_119,"encodeObject:forKey:",_placeholderString,_115);
}
})]);
var _d=objj_allocateClassPair(CPBinder,"_CPTextFieldValueBinder"),_e=_d.isa;
objj_registerClassPair(_d);
class_addMethods(_d,[new objj_method(sel_getUid("setValueFor:"),function(self,_11a,_11b){
with(self){
var _11c=objj_msgSend(_info,"objectForKey:",CPObservedObjectKey),_11d=objj_msgSend(_info,"objectForKey:",CPObservedKeyPathKey),_11e=objj_msgSend(_info,"objectForKey:",CPOptionsKey),_11f=objj_msgSend(_11c,"valueForKeyPath:",_11d),_120=CPIsControllerMarker(_11f);
if(_120){
switch(_11f){
case CPMultipleValuesMarker:
_11f=objj_msgSend(_11e,"objectForKey:",CPMultipleValuesPlaceholderBindingOption)||"Multiple Values";
break;
case CPNoSelectionMarker:
_11f=objj_msgSend(_11e,"objectForKey:",CPNoSelectionPlaceholderBindingOption)||"No Selection";
break;
case CPNotApplicableMarker:
if(objj_msgSend(_11e,"objectForKey:",CPRaisesForNotApplicableKeysBindingOption)){
objj_msgSend(CPException,"raise:reason:",CPGenericException,"can't transform non applicable key on: "+_source+" value: "+_11f);
}
_11f=objj_msgSend(_11e,"objectForKey:",CPNotApplicablePlaceholderBindingOption)||"Not Applicable";
break;
case CPNullMarker:
_11f=objj_msgSend(_11e,"objectForKey:",CPNullPlaceholderBindingOption)||"";
break;
}
objj_msgSend(_source,"setPlaceholderString:",_11f);
objj_msgSend(_source,"setObjectValue:",nil);
}else{
_11f=objj_msgSend(self,"transformValue:withOptions:",_11f,_11e);
objj_msgSend(_source,"setObjectValue:",_11f);
}
}
})]);
