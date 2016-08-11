@STATIC;1.0;i;11;CPControl.ji;17;CPStringDrawing.ji;17;CPCompatibility.ji;21;_CPImageAndTextView.jt;30477;
objj_executeFile("CPControl.j",YES);
objj_executeFile("CPStringDrawing.j",YES);
objj_executeFile("CPCompatibility.j",YES);
objj_executeFile("_CPImageAndTextView.j",YES);
CPTextFieldSquareBezel=0;
CPTextFieldRoundedBezel=1;
CPTextFieldDidFocusNotification="CPTextFieldDidFocusNotification";
CPTextFieldDidBlurNotification="CPTextFieldDidBlurNotification";
var _1="•";
var _2=objj_getClass("CPString");
if(!_2){
throw new SyntaxError("*** Could not find definition for class \"CPString\"");
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("string"),function(_4,_5){
with(_4){
return _4;
}
})]);
CPTextFieldStateRounded=CPThemeState("rounded");
CPTextFieldStatePlaceholder=CPThemeState("placeholder");
var _2=objj_allocateClassPair(CPControl,"CPTextField"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_isEditing"),new objj_ivar("_isEditable"),new objj_ivar("_isSelectable"),new objj_ivar("_isSecure"),new objj_ivar("_willBecomeFirstResponderByClick"),new objj_ivar("_drawsBackground"),new objj_ivar("_textFieldBackgroundColor"),new objj_ivar("_placeholderString"),new objj_ivar("_delegate"),new objj_ivar("_textDidChangeValue"),new objj_ivar("_bezelStyle"),new objj_ivar("_isBordered"),new objj_ivar("_controlSize")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("initWithFrame:"),function(_6,_7,_8){
with(_6){
_6=objj_msgSendSuper({receiver:_6,super_class:objj_getClass("CPTextField").super_class},"initWithFrame:",_8);
if(_6){
objj_msgSend(_6,"setStringValue:","");
objj_msgSend(_6,"setPlaceholderString:","");
_sendActionOn=CPKeyUpMask|CPKeyDownMask;
objj_msgSend(_6,"setValue:forThemeAttribute:",CPLeftTextAlignment,"alignment");
}
return _6;
}
}),new objj_method(sel_getUid("setEditable:"),function(_9,_a,_b){
with(_9){
if(_isEditable===_b){
return;
}
_isEditable=_b;
if(_b){
_isSelectable=YES;
}
if(!_b&&objj_msgSend(objj_msgSend(_9,"window"),"firstResponder")===_9){
objj_msgSend(objj_msgSend(_9,"window"),"makeFirstResponder:",nil);
}
}
}),new objj_method(sel_getUid("isEditable"),function(_c,_d){
with(_c){
return _isEditable;
}
}),new objj_method(sel_getUid("setEnabled:"),function(_e,_f,_10){
with(_e){
objj_msgSendSuper({receiver:_e,super_class:objj_getClass("CPTextField").super_class},"setEnabled:",_10);
if(!_10&&objj_msgSend(objj_msgSend(_e,"window"),"firstResponder")===_e){
objj_msgSend(objj_msgSend(_e,"window"),"makeFirstResponder:",nil);
}
}
}),new objj_method(sel_getUid("setSelectable:"),function(_11,_12,_13){
with(_11){
_isSelectable=_13;
}
}),new objj_method(sel_getUid("isSelectable"),function(_14,_15){
with(_14){
return _isSelectable;
}
}),new objj_method(sel_getUid("setSecure:"),function(_16,_17,_18){
with(_16){
_isSecure=_18;
}
}),new objj_method(sel_getUid("isSecure"),function(_19,_1a){
with(_19){
return _isSecure;
}
}),new objj_method(sel_getUid("setBezeled:"),function(_1b,_1c,_1d){
with(_1b){
if(_1d){
objj_msgSend(_1b,"setThemeState:",CPThemeStateBezeled);
}else{
objj_msgSend(_1b,"unsetThemeState:",CPThemeStateBezeled);
}
}
}),new objj_method(sel_getUid("isBezeled"),function(_1e,_1f){
with(_1e){
return objj_msgSend(_1e,"hasThemeState:",CPThemeStateBezeled);
}
}),new objj_method(sel_getUid("setBezelStyle:"),function(_20,_21,_22){
with(_20){
var _23=_22===CPTextFieldRoundedBezel;
if(_23){
objj_msgSend(_20,"setThemeState:",CPTextFieldStateRounded);
}else{
objj_msgSend(_20,"unsetThemeState:",CPTextFieldStateRounded);
}
}
}),new objj_method(sel_getUid("bezelStyle"),function(_24,_25){
with(_24){
if(objj_msgSend(_24,"hasThemeState:",CPTextFieldStateRounded)){
return CPTextFieldRoundedBezel;
}
return CPTextFieldSquareBezel;
}
}),new objj_method(sel_getUid("setBordered:"),function(_26,_27,_28){
with(_26){
if(_28){
objj_msgSend(_26,"setThemeState:",CPThemeStateBordered);
}else{
objj_msgSend(_26,"unsetThemeState:",CPThemeStateBordered);
}
}
}),new objj_method(sel_getUid("isBordered"),function(_29,_2a){
with(_29){
return objj_msgSend(_29,"hasThemeState:",CPThemeStateBordered);
}
}),new objj_method(sel_getUid("setDrawsBackground:"),function(_2b,_2c,_2d){
with(_2b){
if(_drawsBackground==_2d){
return;
}
_drawsBackground=_2d;
objj_msgSend(_2b,"setNeedsLayout");
objj_msgSend(_2b,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("drawsBackground"),function(_2e,_2f){
with(_2e){
return _drawsBackground;
}
}),new objj_method(sel_getUid("setTextFieldBackgroundColor:"),function(_30,_31,_32){
with(_30){
if(_textFieldBackgroundColor==_32){
return;
}
_textFieldBackgroundColor=_32;
objj_msgSend(_30,"setNeedsLayout");
objj_msgSend(_30,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("textFieldBackgroundColor"),function(_33,_34){
with(_33){
return _textFieldBackgroundColor;
}
}),new objj_method(sel_getUid("acceptsFirstResponder"),function(_35,_36){
with(_35){
return objj_msgSend(_35,"isEditable")&&objj_msgSend(_35,"isEnabled");
}
}),new objj_method(sel_getUid("becomeFirstResponder"),function(_37,_38){
with(_37){
objj_msgSend(_37,"setThemeState:",CPThemeStateEditing);
objj_msgSend(_37,"_updatePlaceholderState");
objj_msgSend(_37,"setNeedsLayout");
_isEditing=NO;
return YES;
}
}),new objj_method(sel_getUid("resignFirstResponder"),function(_39,_3a){
with(_39){
objj_msgSend(_39,"unsetThemeState:",CPThemeStateEditing);
objj_msgSend(_39,"_updatePlaceholderState");
objj_msgSend(_39,"setNeedsLayout");
if(_isEditing){
_isEditing=NO;
objj_msgSend(_39,"textDidEndEditing:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidEndEditingNotification,_39,nil));
if(objj_msgSend(_39,"sendsActionOnEndEditing")){
objj_msgSend(_39,"sendAction:to:",objj_msgSend(_39,"action"),objj_msgSend(_39,"target"));
}
}
objj_msgSend(_39,"textDidBlur:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPTextFieldDidBlurNotification,_39,nil));
return YES;
}
}),new objj_method(sel_getUid("needsPanelToBecomeKey"),function(_3b,_3c){
with(_3b){
return YES;
}
}),new objj_method(sel_getUid("mouseDown:"),function(_3d,_3e,_3f){
with(_3d){
if(objj_msgSend(_3d,"isEditable")&&objj_msgSend(_3d,"isEnabled")){
_willBecomeFirstResponderByClick=YES;
objj_msgSend(objj_msgSend(_3d,"window"),"makeFirstResponder:",_3d);
}else{
if(objj_msgSend(_3d,"isSelectable")){
if(document.attachEvent){
CPTextFieldCachedSelectStartFunction=objj_msgSend(objj_msgSend(_3d,"window"),"platformWindow")._DOMBodyElement.onselectstart;
CPTextFieldCachedDragFunction=objj_msgSend(objj_msgSend(_3d,"window"),"platformWindow")._DOMBodyElement.ondrag;
objj_msgSend(objj_msgSend(_3d,"window"),"platformWindow")._DOMBodyElement.ondrag=function(){
};
objj_msgSend(objj_msgSend(_3d,"window"),"platformWindow")._DOMBodyElement.onselectstart=function(){
};
}
return objj_msgSend(objj_msgSend(objj_msgSend(_3f,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",YES);
}else{
return objj_msgSend(objj_msgSend(_3d,"nextResponder"),"mouseDown:",_3f);
}
}
}
}),new objj_method(sel_getUid("mouseUp:"),function(_40,_41,_42){
with(_40){
if(!objj_msgSend(_40,"isSelectable")&&(!objj_msgSend(_40,"isEditable")||!objj_msgSend(_40,"isEnabled"))){
objj_msgSend(objj_msgSend(_40,"nextResponder"),"mouseUp:",_42);
}else{
if(objj_msgSend(_40,"isSelectable")){
if(document.attachEvent){
objj_msgSend(objj_msgSend(_40,"window"),"platformWindow")._DOMBodyElement.ondrag=CPTextFieldCachedDragFunction;
objj_msgSend(objj_msgSend(_40,"window"),"platformWindow")._DOMBodyElement.onselectstart=CPTextFieldCachedSelectStartFunction;
CPTextFieldCachedSelectStartFunction=nil;
CPTextFieldCachedDragFunction=nil;
}
return objj_msgSend(objj_msgSend(objj_msgSend(_42,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",YES);
}
}
}
}),new objj_method(sel_getUid("mouseDragged:"),function(_43,_44,_45){
with(_43){
if(!objj_msgSend(_43,"isSelectable")&&(!objj_msgSend(_43,"isEditable")||!objj_msgSend(_43,"isEnabled"))){
objj_msgSend(objj_msgSend(_43,"nextResponder"),"mouseDragged:",_45);
}else{
if(objj_msgSend(_43,"isSelectable")){
return objj_msgSend(objj_msgSend(objj_msgSend(_45,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",YES);
}
}
}
}),new objj_method(sel_getUid("keyUp:"),function(_46,_47,_48){
with(_46){
var _49=objj_msgSend(_46,"stringValue");
objj_msgSend(_46,"_setStringValue:",objj_msgSend(_46,"_inputElement").value);
if(_49!==objj_msgSend(_46,"stringValue")){
if(!_isEditing){
_isEditing=YES;
objj_msgSend(_46,"textDidBeginEditing:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidBeginEditingNotification,_46,nil));
}
objj_msgSend(_46,"textDidChange:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidChangeNotification,_46,nil));
}
objj_msgSend(objj_msgSend(objj_msgSend(_46,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",YES);
}
}),new objj_method(sel_getUid("keyDown:"),function(_4a,_4b,_4c){
with(_4a){
if(objj_msgSend(_4c,"_couldBeKeyEquivalent")&&objj_msgSend(_4a,"performKeyEquivalent:",_4c)){
return;
}
objj_msgSend(objj_msgSend(objj_msgSend(_4a,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",YES);
objj_msgSend(_4a,"interpretKeyEvents:",[_4c]);
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
}),new objj_method(sel_getUid("doCommandBySelector:"),function(_4d,_4e,_4f){
with(_4d){
if(objj_msgSend(_4d,"respondsToSelector:",_4f)){
objj_msgSend(_4d,"performSelector:",_4f);
}
}
}),new objj_method(sel_getUid("insertNewline:"),function(_50,_51,_52){
with(_50){
if(_isEditing){
_isEditing=NO;
objj_msgSend(_50,"textDidEndEditing:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidEndEditingNotification,_50,nil));
}
objj_msgSend(_50,"sendAction:to:",objj_msgSend(_50,"action"),objj_msgSend(_50,"target"));
objj_msgSend(_50,"selectText:",nil);
objj_msgSend(objj_msgSend(objj_msgSend(_50,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",NO);
}
}),new objj_method(sel_getUid("insertNewlineIgnoringFieldEditor:"),function(_53,_54,_55){
with(_53){
var _56=objj_msgSend(_53,"stringValue");
objj_msgSend(_53,"_inputElement").value+=CPNewlineCharacter;
objj_msgSend(_53,"_setStringValue:",objj_msgSend(_53,"_inputElement").value);
if(_56!==objj_msgSend(_53,"stringValue")){
if(!_isEditing){
_isEditing=YES;
objj_msgSend(_53,"textDidBeginEditing:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidBeginEditingNotification,_53,nil));
}
objj_msgSend(_53,"textDidChange:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidChangeNotification,_53,nil));
}
}
}),new objj_method(sel_getUid("insertTabIgnoringFieldEditor:"),function(_57,_58,_59){
with(_57){
var _5a=objj_msgSend(_57,"stringValue");
objj_msgSend(_57,"_inputElement").value+=CPTabCharacter;
objj_msgSend(_57,"_setStringValue:",objj_msgSend(_57,"_inputElement").value);
if(_5a!==objj_msgSend(_57,"stringValue")){
if(!_isEditing){
_isEditing=YES;
objj_msgSend(_57,"textDidBeginEditing:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidBeginEditingNotification,_57,nil));
}
objj_msgSend(_57,"textDidChange:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidChangeNotification,_57,nil));
}
}
}),new objj_method(sel_getUid("textDidBlur:"),function(_5b,_5c,_5d){
with(_5b){
if(objj_msgSend(_5d,"object")!=_5b){
return;
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotification:",_5d);
}
}),new objj_method(sel_getUid("textDidFocus:"),function(_5e,_5f,_60){
with(_5e){
if(objj_msgSend(_60,"object")!=_5e){
return;
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotification:",_60);
}
}),new objj_method(sel_getUid("textDidChange:"),function(_61,_62,_63){
with(_61){
if(objj_msgSend(_63,"object")!==_61){
return;
}
objj_msgSend(_61,"_continuouslyReverseSetBinding");
objj_msgSendSuper({receiver:_61,super_class:objj_getClass("CPTextField").super_class},"textDidChange:",_63);
}
}),new objj_method(sel_getUid("sendAction:to:"),function(_64,_65,_66,_67){
with(_64){
objj_msgSend(_64,"_reverseSetBinding");
objj_msgSend(CPApp,"sendAction:to:from:",_66,_67,_64);
}
}),new objj_method(sel_getUid("objectValue"),function(_68,_69){
with(_68){
return objj_msgSendSuper({receiver:_68,super_class:objj_getClass("CPTextField").super_class},"objectValue");
}
}),new objj_method(sel_getUid("_setStringValue:"),function(_6a,_6b,_6c){
with(_6a){
objj_msgSend(_6a,"willChangeValueForKey:","objectValue");
objj_msgSendSuper({receiver:_6a,super_class:objj_getClass("CPTextField").super_class},"setObjectValue:",String(_6c));
objj_msgSend(_6a,"_updatePlaceholderState");
objj_msgSend(_6a,"didChangeValueForKey:","objectValue");
}
}),new objj_method(sel_getUid("setObjectValue:"),function(_6d,_6e,_6f){
with(_6d){
objj_msgSendSuper({receiver:_6d,super_class:objj_getClass("CPTextField").super_class},"setObjectValue:",_6f);
objj_msgSend(_6d,"_updatePlaceholderState");
}
}),new objj_method(sel_getUid("_updatePlaceholderState"),function(_70,_71){
with(_70){
var _72=objj_msgSend(_70,"stringValue");
if((!_72||_72.length===0)&&!objj_msgSend(_70,"hasThemeState:",CPThemeStateEditing)){
objj_msgSend(_70,"setThemeState:",CPTextFieldStatePlaceholder);
}else{
objj_msgSend(_70,"unsetThemeState:",CPTextFieldStatePlaceholder);
}
}
}),new objj_method(sel_getUid("setPlaceholderString:"),function(_73,_74,_75){
with(_73){
if(_placeholderString===_75){
return;
}
_placeholderString=_75;
if(objj_msgSend(_73,"hasThemeState:",CPTextFieldStatePlaceholder)){
objj_msgSend(_73,"setNeedsLayout");
objj_msgSend(_73,"setNeedsDisplay:",YES);
}
}
}),new objj_method(sel_getUid("placeholderString"),function(_76,_77){
with(_76){
return _placeholderString;
}
}),new objj_method(sel_getUid("sizeToFit"),function(_78,_79){
with(_78){
objj_msgSend(_78,"setFrameSize:",objj_msgSend(_78,"_minimumFrameSize"));
}
}),new objj_method(sel_getUid("_minimumFrameSize"),function(_7a,_7b){
with(_7a){
var _7c=objj_msgSend(_7a,"frameSize"),_7d=objj_msgSend(_7a,"currentValueForThemeAttribute:","content-inset"),_7e=objj_msgSend(_7a,"currentValueForThemeAttribute:","min-size"),_7f=objj_msgSend(_7a,"currentValueForThemeAttribute:","max-size"),_80=objj_msgSend(_7a,"lineBreakMode"),_81=(objj_msgSend(_7a,"stringValue")||" "),_82={width:_7c.width,height:_7c.height},_83=objj_msgSend(_7a,"currentValueForThemeAttribute:","font");
_82.width-=_7d.left+_7d.right;
_82.height-=_7d.top+_7d.bottom;
if(_7c.width!==0&&!objj_msgSend(_7a,"isBezeled")&&(_80===CPLineBreakByWordWrapping||_80===CPLineBreakByCharWrapping)){
_82=objj_msgSend(_81,"sizeWithFont:inWidth:",_83,_82.width);
}else{
_82=objj_msgSend(_81,"sizeWithFont:",_83);
}
_7c.height=_82.height+_7d.top+_7d.bottom;
if(objj_msgSend(_7a,"isBezeled")){
_7c.height=MAX(_7c.height,_7e.height);
if(_7f.width>0){
_7c.width=MIN(_7c.width,_7f.width);
}
if(_7f.height>0){
_7c.height=MIN(_7c.height,_7f.height);
}
}else{
_7c.width=_82.width+_7d.left+_7d.right;
}
_7c.width=MAX(_7c.width,_7e.width);
return _7c;
}
}),new objj_method(sel_getUid("selectText:"),function(_84,_85,_86){
with(_84){
if((objj_msgSend(_84,"isEditable")||objj_msgSend(_84,"isSelectable"))){
if(objj_msgSend(_84,"window")!==nil&&objj_msgSend(objj_msgSend(_84,"window"),"firstResponder")!==_84){
objj_msgSend(objj_msgSend(_84,"window"),"makeFirstResponder:",_84);
}
}
}
}),new objj_method(sel_getUid("copy:"),function(_87,_88,_89){
with(_87){
if(!objj_msgSend(CPPlatform,"isBrowser")){
var _8a=objj_msgSend(_87,"selectedRange");
if(_8a.length<1){
return;
}
var _8b=objj_msgSend(CPPasteboard,"generalPasteboard"),_8c=objj_msgSend(_87,"stringValue"),_8d=objj_msgSend(_8c,"substringWithRange:",_8a);
objj_msgSend(_8b,"declareTypes:owner:",[CPStringPboardType],nil);
objj_msgSend(_8b,"setString:forType:",_8d,CPStringPboardType);
}
}
}),new objj_method(sel_getUid("cut:"),function(_8e,_8f,_90){
with(_8e){
if(!objj_msgSend(CPPlatform,"isBrowser")){
objj_msgSend(_8e,"copy:",_90);
objj_msgSend(_8e,"deleteBackward:",_90);
}else{
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",0,_8e,sel_getUid("keyUp:"),nil,NO);
}
}
}),new objj_method(sel_getUid("paste:"),function(_91,_92,_93){
with(_91){
if(!objj_msgSend(CPPlatform,"isBrowser")){
var _94=objj_msgSend(CPPasteboard,"generalPasteboard");
if(!objj_msgSend(objj_msgSend(_94,"types"),"containsObject:",CPStringPboardType)){
return;
}
objj_msgSend(_91,"deleteBackward:",_93);
var _95=objj_msgSend(_91,"selectedRange"),_96=objj_msgSend(_91,"stringValue"),_97=objj_msgSend(_94,"stringForType:",CPStringPboardType),_98=objj_msgSend(_96,"stringByReplacingCharactersInRange:withString:",_95,_97);
objj_msgSend(_91,"setStringValue:",_98);
objj_msgSend(_91,"setSelectedRange:",CPMakeRange(_95.location+_97.length,0));
}else{
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",0,_91,sel_getUid("keyUp:"),nil,NO);
}
}
}),new objj_method(sel_getUid("selectedRange"),function(_99,_9a){
with(_99){
if(objj_msgSend(objj_msgSend(_99,"window"),"firstResponder")!==_99){
return CPMakeRange(0,0);
}
try{
var _9b=objj_msgSend(_99,"_inputElement"),_9c=_9b.selectionStart,_9d=_9b.selectionEnd;
if(objj_msgSend(_9c,"isKindOfClass:",CPNumber)){
return CPMakeRange(_9c,_9d-_9c);
}
var _9e=_9b.ownerDocument||_9b.document,_9f=_9e.selection.createRange(),_a0=_9b.createTextRange();
if(_a0.inRange(_9f)){
_a0.setEndPoint("EndToStart",_9f);
return CPMakeRange(_a0.text.length,_9f.text.length);
}
}
catch(e){
}
return CPMakeRange(0,0);
}
}),new objj_method(sel_getUid("setSelectedRange:"),function(_a1,_a2,_a3){
with(_a1){
if(!objj_msgSend(objj_msgSend(_a1,"window"),"firstResponder")===_a1){
return;
}
var _a4=objj_msgSend(_a1,"_inputElement");
try{
if(objj_msgSend(_a4.selectionStart,"isKindOfClass:",CPNumber)){
_a4.selectionStart=_a3.location;
_a4.selectionEnd=CPMaxRange(_a3);
}else{
var _a5=_a4.ownerDocument||_a4.document,_a6=_a5.selection.createRange(),_a7=_a4.createTextRange();
if(_a7.inRange(_a6)){
_a7.collapse(true);
_a7.move("character",_a3.location);
_a7.moveEnd("character",_a3.length);
_a7.select();
}
}
}
catch(e){
}
}
}),new objj_method(sel_getUid("selectAll:"),function(_a8,_a9,_aa){
with(_a8){
objj_msgSend(_a8,"selectText:",_aa);
}
}),new objj_method(sel_getUid("deleteBackward:"),function(_ab,_ac,_ad){
with(_ab){
var _ae=objj_msgSend(_ab,"selectedRange");
if(_ae.length<2){
return;
}
_ae.location+=1;
_ae.length-=1;
var _af=objj_msgSend(_ab,"stringValue"),_b0=objj_msgSend(_af,"stringByReplacingCharactersInRange:withString:",_ae,"");
objj_msgSend(_ab,"setStringValue:",_b0);
objj_msgSend(_ab,"setSelectedRange:",CPMakeRange(_ae.location,0));
}
}),new objj_method(sel_getUid("setDelegate:"),function(_b1,_b2,_b3){
with(_b1){
var _b4=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(_delegate){
objj_msgSend(_b4,"removeObserver:name:object:",_delegate,CPControlTextDidBeginEditingNotification,_b1);
objj_msgSend(_b4,"removeObserver:name:object:",_delegate,CPControlTextDidChangeNotification,_b1);
objj_msgSend(_b4,"removeObserver:name:object:",_delegate,CPControlTextDidEndEditingNotification,_b1);
objj_msgSend(_b4,"removeObserver:name:object:",_delegate,CPTextFieldDidFocusNotification,_b1);
objj_msgSend(_b4,"removeObserver:name:object:",_delegate,CPTextFieldDidBlurNotification,_b1);
}
_delegate=_b3;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("controlTextDidBeginEditing:"))){
objj_msgSend(_b4,"addObserver:selector:name:object:",_delegate,sel_getUid("controlTextDidBeginEditing:"),CPControlTextDidBeginEditingNotification,_b1);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("controlTextDidChange:"))){
objj_msgSend(_b4,"addObserver:selector:name:object:",_delegate,sel_getUid("controlTextDidChange:"),CPControlTextDidChangeNotification,_b1);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("controlTextDidEndEditing:"))){
objj_msgSend(_b4,"addObserver:selector:name:object:",_delegate,sel_getUid("controlTextDidEndEditing:"),CPControlTextDidEndEditingNotification,_b1);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("controlTextDidFocus:"))){
objj_msgSend(_b4,"addObserver:selector:name:object:",_delegate,sel_getUid("controlTextDidFocus:"),CPTextFieldDidFocusNotification,_b1);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("controlTextDidBlur:"))){
objj_msgSend(_b4,"addObserver:selector:name:object:",_delegate,sel_getUid("controlTextDidBlur:"),CPTextFieldDidBlurNotification,_b1);
}
}
}),new objj_method(sel_getUid("delegate"),function(_b5,_b6){
with(_b5){
return _delegate;
}
}),new objj_method(sel_getUid("contentRectForBounds:"),function(_b7,_b8,_b9){
with(_b7){
var _ba=objj_msgSend(_b7,"currentValueForThemeAttribute:","content-inset");
if(!_ba){
return _b9;
}
_b9.origin.x+=_ba.left;
_b9.origin.y+=_ba.top;
_b9.size.width-=_ba.left+_ba.right;
_b9.size.height-=_ba.top+_ba.bottom;
return _b9;
}
}),new objj_method(sel_getUid("bezelRectForBounds:"),function(_bb,_bc,_bd){
with(_bb){
var _be=objj_msgSend(_bb,"currentValueForThemeAttribute:","bezel-inset");
if(((_be).top===0&&(_be).right===0&&(_be).bottom===0&&(_be).left===0)){
return _bd;
}
_bd.origin.x+=_be.left;
_bd.origin.y+=_be.top;
_bd.size.width-=_be.left+_be.right;
_bd.size.height-=_be.top+_be.bottom;
return _bd;
}
}),new objj_method(sel_getUid("rectForEphemeralSubviewNamed:"),function(_bf,_c0,_c1){
with(_bf){
if(_c1==="bezel-view"){
return objj_msgSend(_bf,"bezelRectForBounds:",objj_msgSend(_bf,"bounds"));
}else{
if(_c1==="content-view"){
return objj_msgSend(_bf,"contentRectForBounds:",objj_msgSend(_bf,"bounds"));
}
}
return objj_msgSendSuper({receiver:_bf,super_class:objj_getClass("CPTextField").super_class},"rectForEphemeralSubviewNamed:",_c1);
}
}),new objj_method(sel_getUid("createEphemeralSubviewNamed:"),function(_c2,_c3,_c4){
with(_c2){
if(_c4==="bezel-view"){
var _c5=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
objj_msgSend(_c5,"setHitTests:",NO);
return _c5;
}else{
var _c5=objj_msgSend(objj_msgSend(_CPImageAndTextView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
objj_msgSend(_c5,"setHitTests:",NO);
return _c5;
}
return objj_msgSendSuper({receiver:_c2,super_class:objj_getClass("CPTextField").super_class},"createEphemeralSubviewNamed:",_c4);
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_c6,_c7){
with(_c6){
var _c8=objj_msgSend(_c6,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","bezel-view",CPWindowBelow,"content-view");
if(_c8){
objj_msgSend(_c8,"setBackgroundColor:",objj_msgSend(_c6,"currentValueForThemeAttribute:","bezel-color"));
}
var _c9=objj_msgSend(_c6,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","content-view",CPWindowAbove,"bezel-view");
if(_c9){
objj_msgSend(_c9,"setHidden:",objj_msgSend(_c6,"hasThemeState:",CPThemeStateEditing));
var _ca="";
if(objj_msgSend(_c6,"hasThemeState:",CPTextFieldStatePlaceholder)){
_ca=objj_msgSend(_c6,"placeholderString");
}else{
_ca=objj_msgSend(_c6,"stringValue");
if(objj_msgSend(_c6,"isSecure")){
_ca=_cb(_ca);
}
}
objj_msgSend(_c9,"setText:",_ca);
objj_msgSend(_c9,"setTextColor:",objj_msgSend(_c6,"currentValueForThemeAttribute:","text-color"));
objj_msgSend(_c9,"setFont:",objj_msgSend(_c6,"currentValueForThemeAttribute:","font"));
objj_msgSend(_c9,"setAlignment:",objj_msgSend(_c6,"currentValueForThemeAttribute:","alignment"));
objj_msgSend(_c9,"setVerticalAlignment:",objj_msgSend(_c6,"currentValueForThemeAttribute:","vertical-alignment"));
objj_msgSend(_c9,"setLineBreakMode:",objj_msgSend(_c6,"currentValueForThemeAttribute:","line-break-mode"));
objj_msgSend(_c9,"setTextShadowColor:",objj_msgSend(_c6,"currentValueForThemeAttribute:","text-shadow-color"));
objj_msgSend(_c9,"setTextShadowOffset:",objj_msgSend(_c6,"currentValueForThemeAttribute:","text-shadow-offset"));
}
}
}),new objj_method(sel_getUid("takeValueFromKeyPath:ofObjects:"),function(_cc,_cd,_ce,_cf){
with(_cc){
var _d0=_cf.length,_d1=objj_msgSend(_cf[0],"valueForKeyPath:",_ce);
objj_msgSend(_cc,"setStringValue:",_d1);
objj_msgSend(_cc,"setPlaceholderString:","");
while(_d0-->1){
if(_d1!==objj_msgSend(_cf[_d0],"valueForKeyPath:",_ce)){
objj_msgSend(_cc,"setPlaceholderString:","Multiple Values");
objj_msgSend(_cc,"setStringValue:","");
}
}
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("textFieldWithStringValue:placeholder:width:"),function(_d2,_d3,_d4,_d5,_d6){
with(_d2){
return objj_msgSend(_d2,"textFieldWithStringValue:placeholder:width:theme:",_d4,_d5,_d6,objj_msgSend(CPTheme,"defaultTheme"));
}
}),new objj_method(sel_getUid("textFieldWithStringValue:placeholder:width:theme:"),function(_d7,_d8,_d9,_da,_db,_dc){
with(_d7){
var _dd=objj_msgSend(objj_msgSend(_d7,"alloc"),"initWithFrame:",CGRectMake(0,0,_db,29));
objj_msgSend(_dd,"setTheme:",_dc);
objj_msgSend(_dd,"setStringValue:",_d9);
objj_msgSend(_dd,"setPlaceholderString:",_da);
objj_msgSend(_dd,"setBordered:",YES);
objj_msgSend(_dd,"setBezeled:",YES);
objj_msgSend(_dd,"setEditable:",YES);
objj_msgSend(_dd,"sizeToFit");
return _dd;
}
}),new objj_method(sel_getUid("roundedTextFieldWithStringValue:placeholder:width:"),function(_de,_df,_e0,_e1,_e2){
with(_de){
return objj_msgSend(_de,"roundedTextFieldWithStringValue:placeholder:width:theme:",_e0,_e1,_e2,objj_msgSend(CPTheme,"defaultTheme"));
}
}),new objj_method(sel_getUid("roundedTextFieldWithStringValue:placeholder:width:theme:"),function(_e3,_e4,_e5,_e6,_e7,_e8){
with(_e3){
var _e9=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(0,0,_e7,29));
objj_msgSend(_e9,"setTheme:",_e8);
objj_msgSend(_e9,"setStringValue:",_e5);
objj_msgSend(_e9,"setPlaceholderString:",_e6);
objj_msgSend(_e9,"setBezelStyle:",CPTextFieldRoundedBezel);
objj_msgSend(_e9,"setBordered:",YES);
objj_msgSend(_e9,"setBezeled:",YES);
objj_msgSend(_e9,"setEditable:",YES);
objj_msgSend(_e9,"sizeToFit");
return _e9;
}
}),new objj_method(sel_getUid("labelWithTitle:"),function(_ea,_eb,_ec){
with(_ea){
return objj_msgSend(_ea,"labelWithTitle:theme:",_ec,objj_msgSend(CPTheme,"defaultTheme"));
}
}),new objj_method(sel_getUid("labelWithTitle:theme:"),function(_ed,_ee,_ef,_f0){
with(_ed){
var _f1=objj_msgSend(objj_msgSend(_ed,"alloc"),"init");
objj_msgSend(_f1,"setStringValue:",_ef);
objj_msgSend(_f1,"sizeToFit");
return _f1;
}
}),new objj_method(sel_getUid("defaultThemeClass"),function(_f2,_f3){
with(_f2){
return "textfield";
}
}),new objj_method(sel_getUid("_binderClassForBinding:"),function(_f4,_f5,_f6){
with(_f4){
if(_f6===CPValueBinding){
return objj_msgSend(_CPTextFieldValueBinder,"class");
}
return objj_msgSendSuper({receiver:_f4,super_class:objj_getMetaClass("CPTextField").super_class},"_binderClassForBinding:",_f6);
}
}),new objj_method(sel_getUid("themeAttributes"),function(_f7,_f8){
with(_f7){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[{top:(0),right:(0),bottom:(0),left:(0)},{top:(2),right:(2),bottom:(2),left:(2)},objj_msgSend(CPNull,"null")],["bezel-inset","content-inset","bezel-color"]);
}
})]);
var _cb=function(_f9){
if(!_f9){
return "";
}
return Array(_f9.length+1).join(_1);
};
var _fa="CPTextFieldIsEditableKey",_fb="CPTextFieldIsSelectableKey",_fc="CPTextFieldIsBorderedKey",_fd="CPTextFieldIsBezeledKey",_fe="CPTextFieldBezelStyleKey",_ff="CPTextFieldDrawsBackgroundKey",_100="CPTextFieldLineBreakModeKey",_101="CPTextFieldAlignmentKey",_102="CPTextFieldBackgroundColorKey",_103="CPTextFieldPlaceholderStringKey";
var _2=objj_getClass("CPTextField");
if(!_2){
throw new SyntaxError("*** Could not find definition for class \"CPTextField\"");
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("initWithCoder:"),function(self,_104,_105){
with(self){
self=objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPTextField").super_class},"initWithCoder:",_105);
if(self){
objj_msgSend(self,"setEditable:",objj_msgSend(_105,"decodeBoolForKey:",_fa));
objj_msgSend(self,"setSelectable:",objj_msgSend(_105,"decodeBoolForKey:",_fb));
objj_msgSend(self,"setDrawsBackground:",objj_msgSend(_105,"decodeBoolForKey:",_ff));
objj_msgSend(self,"setTextFieldBackgroundColor:",objj_msgSend(_105,"decodeObjectForKey:",_102));
objj_msgSend(self,"setLineBreakMode:",objj_msgSend(_105,"decodeIntForKey:",_100));
objj_msgSend(self,"setAlignment:",objj_msgSend(_105,"decodeIntForKey:",_101));
objj_msgSend(self,"setPlaceholderString:",objj_msgSend(_105,"decodeObjectForKey:",_103));
}
return self;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(self,_106,_107){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPTextField").super_class},"encodeWithCoder:",_107);
objj_msgSend(_107,"encodeBool:forKey:",_isEditable,_fa);
objj_msgSend(_107,"encodeBool:forKey:",_isSelectable,_fb);
objj_msgSend(_107,"encodeBool:forKey:",_drawsBackground,_ff);
objj_msgSend(_107,"encodeObject:forKey:",_textFieldBackgroundColor,_102);
objj_msgSend(_107,"encodeInt:forKey:",objj_msgSend(self,"lineBreakMode"),_100);
objj_msgSend(_107,"encodeInt:forKey:",objj_msgSend(self,"alignment"),_101);
objj_msgSend(_107,"encodeObject:forKey:",_placeholderString,_103);
}
})]);
var _2=objj_allocateClassPair(CPBinder,"_CPTextFieldValueBinder"),_3=_2.isa;
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("setValueFor:"),function(self,_108,_109){
with(self){
var _10a=objj_msgSend(_info,"objectForKey:",CPObservedObjectKey),_10b=objj_msgSend(_info,"objectForKey:",CPObservedKeyPathKey),_10c=objj_msgSend(_info,"objectForKey:",CPOptionsKey),_10d=objj_msgSend(_10a,"valueForKeyPath:",_10b),_10e=CPIsControllerMarker(_10d);
if(_10e){
switch(_10d){
case CPMultipleValuesMarker:
_10d=objj_msgSend(_10c,"objectForKey:",CPMultipleValuesPlaceholderBindingOption)||"Multiple Values";
break;
case CPNoSelectionMarker:
_10d=objj_msgSend(_10c,"objectForKey:",CPNoSelectionPlaceholderBindingOption)||"No Selection";
break;
case CPNotApplicableMarker:
if(objj_msgSend(_10c,"objectForKey:",CPRaisesForNotApplicableKeysBindingOption)){
objj_msgSend(CPException,"raise:reason:",CPGenericException,"can't transform non applicable key on: "+_source+" value: "+_10d);
}
_10d=objj_msgSend(_10c,"objectForKey:",CPNotApplicablePlaceholderBindingOption)||"Not Applicable";
break;
case CPNullMarker:
_10d=objj_msgSend(_10c,"objectForKey:",CPNullPlaceholderBindingOption)||"";
break;
}
objj_msgSend(_source,"setPlaceholderString:",_10d);
objj_msgSend(_source,"setObjectValue:",nil);
}else{
_10d=objj_msgSend(self,"transformValue:withOptions:",_10d,_10c);
objj_msgSend(_source,"setObjectValue:",_10d);
}
}
})]);
