@STATIC;1.0;I;27;Foundation/CPCharacterSet.jI;23;Foundation/CPIndexSet.jI;20;Foundation/CPTimer.ji;10;CPButton.ji;14;CPScrollView.ji;13;CPTextField.ji;13;CPTableView.ji;10;CPWindow.ji;15;_CPMenuWindow.jt;31492;
objj_executeFile("Foundation/CPCharacterSet.j",NO);
objj_executeFile("Foundation/CPIndexSet.j",NO);
objj_executeFile("Foundation/CPTimer.j",NO);
objj_executeFile("CPButton.j",YES);
objj_executeFile("CPScrollView.j",YES);
objj_executeFile("CPTextField.j",YES);
objj_executeFile("CPTableView.j",YES);
objj_executeFile("CPWindow.j",YES);
objj_executeFile("_CPMenuWindow.j",YES);
var _1=nil,_2=nil,_3=nil,_4=nil,_5=nil,_6=NO,_7=NO,_8=NO,_9=nil,_a=nil,_b=NO,_c=nil,_d=nil,_e=nil,_f=nil;
var _10="CPThemeStateAutoCompleting",_11="CPTokenFieldTableColumnIdentifier",_12=0,_13=1,_14=2;
var _15=objj_allocateClassPair(CPTextField,"CPTokenField"),_16=_15.isa;
class_addIvars(_15,[new objj_ivar("_tokenScrollView"),new objj_ivar("_shouldScrollTo"),new objj_ivar("_selectedRange"),new objj_ivar("_autocompleteContainer"),new objj_ivar("_autocompleteScrollView"),new objj_ivar("_autocompleteView"),new objj_ivar("_completionDelay"),new objj_ivar("_showCompletionsTimer"),new objj_ivar("_cachedCompletions"),new objj_ivar("_tokenizingCharacterSet"),new objj_ivar("_mouseDownEvent"),new objj_ivar("_preventResign"),new objj_ivar("_shouldNotifyTarget")]);
objj_registerClassPair(_15);
class_addMethods(_15,[new objj_method(sel_getUid("tokenizingCharacterSet"),function(_17,_18){
with(_17){
return _tokenizingCharacterSet;
}
}),new objj_method(sel_getUid("setTokenizingCharacterSet:"),function(_19,_1a,_1b){
with(_19){
_tokenizingCharacterSet=_1b;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_1c,_1d,_1e){
with(_1c){
if(_1c=objj_msgSendSuper({receiver:_1c,super_class:objj_getClass("CPTokenField").super_class},"initWithFrame:",_1e)){
_selectedRange=CPMakeRange(0,0);
_tokenScrollView=objj_msgSend(objj_msgSend(CPScrollView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_tokenScrollView,"setHasHorizontalScroller:",NO);
objj_msgSend(_tokenScrollView,"setHasVerticalScroller:",NO);
objj_msgSend(_tokenScrollView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
var _1f=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_1f,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_tokenScrollView,"setDocumentView:",_1f);
objj_msgSend(_1c,"addSubview:",_tokenScrollView);
_tokenIndex=0;
_cachedCompletions=[];
_completionDelay=objj_msgSend(CPTokenField,"defaultCompletionDelay");
_tokenizingCharacterSet=objj_msgSend(objj_msgSend(_1c,"class"),"defaultTokenizingCharacterSet");
_autocompleteContainer=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CPRectMake(0,0,_1e.size.width,92));
objj_msgSend(_autocompleteContainer,"setBackgroundColor:",objj_msgSend(_CPMenuWindow,"backgroundColorForBackgroundStyle:",_CPMenuWindowPopUpBackgroundStyle));
_autocompleteScrollView=objj_msgSend(objj_msgSend(CPScrollView,"alloc"),"initWithFrame:",CPRectMake(1,1,_1e.size.width-2,90));
objj_msgSend(_autocompleteScrollView,"setAutohidesScrollers:",YES);
objj_msgSend(_autocompleteScrollView,"setHasHorizontalScroller:",NO);
objj_msgSend(_autocompleteContainer,"addSubview:",_autocompleteScrollView);
_autocompleteView=objj_msgSend(objj_msgSend(CPTableView,"alloc"),"initWithFrame:",CPRectMakeZero());
var _20=objj_msgSend(objj_msgSend(CPTableColumn,"alloc"),"initWithIdentifier:",_11);
objj_msgSend(_20,"setResizingMask:",CPTableColumnAutoresizingMask);
objj_msgSend(_autocompleteView,"addTableColumn:",_20);
objj_msgSend(_autocompleteView,"setDataSource:",_1c);
objj_msgSend(_autocompleteView,"setDelegate:",_1c);
objj_msgSend(_autocompleteView,"setAllowsMultipleSelection:",NO);
objj_msgSend(_autocompleteView,"setHeaderView:",nil);
objj_msgSend(_autocompleteView,"setCornerView:",nil);
objj_msgSend(_autocompleteView,"setRowHeight:",30);
objj_msgSend(_autocompleteView,"setGridStyleMask:",CPTableViewSolidHorizontalGridLineMask);
objj_msgSend(_autocompleteView,"setBackgroundColor:",objj_msgSend(CPColor,"clearColor"));
objj_msgSend(_autocompleteView,"setGridColor:",objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",242/255,243/255,245/255,1));
objj_msgSend(_autocompleteScrollView,"setDocumentView:",_autocompleteView);
objj_msgSend(_1c,"setBezeled:",YES);
objj_msgSend(_1c,"setObjectValue:",[]);
objj_msgSend(_1c,"setNeedsLayout");
}
return _1c;
}
}),new objj_method(sel_getUid("_retrieveCompletions"),function(_21,_22){
with(_21){
var _23=0;
_cachedCompletions=objj_msgSend(_21,"tokenField:completionsForSubstring:indexOfToken:indexOfSelectedItem:",_21,objj_msgSend(_21,"_inputElement").value,_tokenIndex,_23);
objj_msgSend(_autocompleteView,"selectRowIndexes:byExtendingSelection:",objj_msgSend(CPIndexSet,"indexSetWithIndex:",_23),NO);
objj_msgSend(_autocompleteView,"reloadData");
}
}),new objj_method(sel_getUid("_autocompleteWithDOMEvent:"),function(_24,_25,_26){
with(_24){
if(!_cachedCompletions||!objj_msgSend(_24,"hasThemeState:",_10)){
return;
}
objj_msgSend(_24,"_hideCompletions");
var _27=_cachedCompletions[objj_msgSend(_autocompleteView,"selectedRow")],_28=_27!==""&&objj_msgSend(_24,"_inputElement").value!=="";
if(!_27){
_27=objj_msgSend(_24,"_inputElement").value;
}
if(!_27||_27===""){
if(_26&&_26.keyCode===CPTabKeyCode){
if(!_26.shiftKey){
objj_msgSend(objj_msgSend(_24,"window"),"selectNextKeyView:",_24);
}else{
objj_msgSend(objj_msgSend(_24,"window"),"selectPreviousKeyView:",_24);
}
}else{
objj_msgSend(objj_msgSend(_24,"window"),"makeFirstResponder:",nil);
}
return;
}
var _29=objj_msgSend(_24,"objectValue");
if(_28){
objj_msgSend(_29,"removeObjectAtIndex:",_selectedRange.location);
}
objj_msgSend(_29,"insertObject:atIndex:",_27,_selectedRange.location);
var _2a=_selectedRange.location;
objj_msgSend(_24,"setObjectValue:",_29);
_selectedRange=CPMakeRange(_2a+1,0);
objj_msgSend(_24,"_inputElement").value="";
objj_msgSend(_24,"setNeedsLayout");
objj_msgSend(_24,"_controlTextDidChange");
}
}),new objj_method(sel_getUid("_autocomplete"),function(_2b,_2c){
with(_2b){
objj_msgSend(_2b,"_autocompleteWithDOMEvent:",nil);
}
}),new objj_method(sel_getUid("_selectToken:byExtendingSelection:"),function(_2d,_2e,_2f,_30){
with(_2d){
var _31=objj_msgSend(objj_msgSend(_2d,"_tokens"),"indexOfObject:",_2f);
if(_31==CPNotFound){
if(!_30){
_selectedRange=CPMakeRange(objj_msgSend(objj_msgSend(_2d,"_tokens"),"count"),0);
}
}else{
if(_30){
_selectedRange=CPUnionRange(_selectedRange,CPMakeRange(_31,1));
}else{
_selectedRange=CPMakeRange(_31,1);
}
}
objj_msgSend(_2d,"setNeedsLayout");
}
}),new objj_method(sel_getUid("_deselectToken:"),function(_32,_33,_34){
with(_32){
var _35=objj_msgSend(objj_msgSend(_32,"_tokens"),"indexOfObject:",_34);
if(CPLocationInRange(_35,_selectedRange)){
_selectedRange=CPMakeRange(MAX(_35,_selectedRange.location),MIN(_selectedRange.length,_35-_selectedRange.location));
}
objj_msgSend(_32,"setNeedsLayout");
}
}),new objj_method(sel_getUid("_deleteToken:"),function(_36,_37,_38){
with(_36){
var _39=objj_msgSend(objj_msgSend(_36,"_tokens"),"indexOfObject:",_38),_3a=objj_msgSend(_36,"objectValue");
objj_msgSend(_36,"_deselectToken:",_38);
var _3b=CPCopyRange(_selectedRange);
objj_msgSend(_3a,"removeObjectAtIndex:",_39);
objj_msgSend(_36,"setObjectValue:",_3a);
_selectedRange=_3b;
objj_msgSend(_36,"setNeedsLayout");
objj_msgSend(_36,"_controlTextDidChange");
}
}),new objj_method(sel_getUid("_controlTextDidChange"),function(_3c,_3d){
with(_3c){
var _3e=objj_msgSend(objj_msgSend(_3c,"class"),"_binderClassForBinding:",CPValueBinding),_3f=objj_msgSend(_3e,"getBinding:forObject:",CPValueBinding,_3c);
if(_3f){
objj_msgSend(_3f,"reverseSetValueFor:","objectValue");
}
objj_msgSend(_3c,"textDidChange:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidChangeNotification,_3c,nil));
_shouldNotifyTarget=YES;
}
}),new objj_method(sel_getUid("_removeSelectedTokens:"),function(_40,_41,_42){
with(_40){
var _43=objj_msgSend(_40,"objectValue");
for(var i=_selectedRange.length-1;i>=0;i--){
objj_msgSend(_43,"removeObjectAtIndex:",_selectedRange.location+i);
}
var _44=_selectedRange.location;
objj_msgSend(_40,"setObjectValue:",_43);
_selectedRange=CPMakeRange(_44,0);
objj_msgSend(_40,"_controlTextDidChange");
}
}),new objj_method(sel_getUid("becomeFirstResponder"),function(_45,_46){
with(_45){
if(_4&&objj_msgSend(_4,"window")!==objj_msgSend(_45,"window")){
objj_msgSend(objj_msgSend(_4,"window"),"makeFirstResponder:",nil);
}
objj_msgSend(_45,"setThemeState:",CPThemeStateEditing);
objj_msgSend(_45,"_updatePlaceholderState");
objj_msgSend(_45,"setNeedsLayout");
var _47=objj_msgSend(_45,"stringValue"),_48=objj_msgSend(_45,"_inputElement");
_48.value=nil;
_48.style.color=objj_msgSend(objj_msgSend(_45,"currentValueForThemeAttribute:","text-color"),"cssString");
_48.style.font=objj_msgSend(objj_msgSend(_45,"currentValueForThemeAttribute:","font"),"cssString");
_48.style.zIndex=1000;
switch(objj_msgSend(_45,"alignment")){
case CPCenterTextAlignment:
_48.style.textAlign="center";
break;
case CPRightTextAlignment:
_48.style.textAlign="right";
break;
default:
_48.style.textAlign="left";
}
var _49=objj_msgSend(_45,"contentRectForBounds:",objj_msgSend(_45,"bounds"));
_48.style.top=CGRectGetMinY(_49)+"px";
_48.style.left=(CGRectGetMinX(_49)-1)+"px";
_48.style.width=CGRectGetWidth(_49)+"px";
_48.style.height=CGRectGetHeight(_49)+"px";
objj_msgSend(_tokenScrollView,"documentView")._DOMElement.appendChild(_48);
window.setTimeout(function(){
_48.focus();
_4=_45;
},0);
objj_msgSend(_45,"textDidBeginEditing:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidBeginEditingNotification,_45,nil));
objj_msgSend(objj_msgSend(objj_msgSend(_45,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",YES);
_8=YES;
if(document.attachEvent){
_9=document.body.onselectstart;
_a=document.body.ondrag;
document.body.ondrag=function(){
};
document.body.onselectstart=function(){
};
}
return YES;
}
}),new objj_method(sel_getUid("resignFirstResponder"),function(_4a,_4b){
with(_4a){
if(_preventResign){
return NO;
}
objj_msgSend(_4a,"unsetThemeState:",CPThemeStateEditing);
objj_msgSend(_4a,"_autocomplete");
var _4c=objj_msgSend(_4a,"_inputElement");
_6=YES;
_4c.blur();
if(!_7){
_c();
}
_7=NO;
_6=NO;
if(_4c.parentNode==objj_msgSend(_tokenScrollView,"documentView")._DOMElement){
_4c.parentNode.removeChild(_4c);
}
_8=NO;
if(document.attachEvent){
_9=nil;
_a=nil;
document.body.ondrag=_a;
document.body.onselectstart=_9;
}
objj_msgSend(_4a,"_updatePlaceholderState");
objj_msgSend(_4a,"setNeedsLayout");
if(_shouldNotifyTarget){
_shouldNotifyTarget=NO;
objj_msgSend(_4a,"textDidEndEditing:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidEndEditingNotification,_4a,nil));
if(objj_msgSend(_4a,"sendsActionOnEndEditing")){
objj_msgSend(_4a,"sendAction:to:",objj_msgSend(_4a,"action"),objj_msgSend(_4a,"target"));
}
}
return YES;
}
}),new objj_method(sel_getUid("mouseDown:"),function(_4d,_4e,_4f){
with(_4d){
_preventResign=YES;
_mouseDownEvent=_4f;
objj_msgSend(_4d,"_selectToken:byExtendingSelection:",nil,NO);
objj_msgSendSuper({receiver:_4d,super_class:objj_getClass("CPTokenField").super_class},"mouseDown:",_4f);
}
}),new objj_method(sel_getUid("mouseUp:"),function(_50,_51,_52){
with(_50){
_preventResign=NO;
_mouseDownEvent=nil;
}
}),new objj_method(sel_getUid("mouseDownOnToken:withEvent:"),function(_53,_54,_55,_56){
with(_53){
_preventResign=YES;
_mouseDownEvent=_56;
}
}),new objj_method(sel_getUid("mouseUpOnToken:withEvent:"),function(_57,_58,_59,_5a){
with(_57){
if(_mouseDownEvent&&CGPointEqualToPoint(objj_msgSend(_mouseDownEvent,"locationInWindow"),objj_msgSend(_5a,"locationInWindow"))){
objj_msgSend(_57,"_selectToken:byExtendingSelection:",_59,objj_msgSend(_5a,"modifierFlags")&CPShiftKeyMask);
objj_msgSend(objj_msgSend(_57,"window"),"makeFirstResponder:",_57);
_shouldScrollTo=_59;
}
_preventResign=NO;
}
}),new objj_method(sel_getUid("_tokens"),function(_5b,_5c){
with(_5b){
return objj_msgSendSuper({receiver:_5b,super_class:objj_getClass("CPTokenField").super_class},"objectValue");
}
}),new objj_method(sel_getUid("stringValue"),function(_5d,_5e){
with(_5d){
return objj_msgSend(objj_msgSend(_5d,"objectValue"),"componentsJoinedByString:",",");
}
}),new objj_method(sel_getUid("objectValue"),function(_5f,_60){
with(_5f){
var _61=[];
for(var i=0,_62=objj_msgSend(objj_msgSend(_5f,"_tokens"),"count");i<_62;i++){
var _63=objj_msgSend(objj_msgSend(_5f,"_tokens"),"objectAtIndex:",i);
if(objj_msgSend(_63,"isKindOfClass:",objj_msgSend(CPString,"class"))){
continue;
}
objj_msgSend(_61,"addObject:",objj_msgSend(_63,"representedObject"));
}
if(objj_msgSend(_5f,"_inputElement").value!=""){
objj_msgSend(_61,"insertObject:atIndex:",objj_msgSend(_5f,"_inputElement").value,_selectedRange.location);
}
return _61;
}
}),new objj_method(sel_getUid("setObjectValue:"),function(_64,_65,_66){
with(_64){
if(_66!==nil&&!objj_msgSend(_66,"isKindOfClass:",objj_msgSend(CPArray,"class"))){
objj_msgSendSuper({receiver:_64,super_class:objj_getClass("CPTokenField").super_class},"setObjectValue:",nil);
return;
}
var _67=objj_msgSendSuper({receiver:_64,super_class:objj_getClass("CPTokenField").super_class},"objectValue");
if(_66===_67||objj_msgSend(_66,"isEqualToArray:",_67)){
return;
}
var _68=objj_msgSend(_tokenScrollView,"documentView");
var _69=objj_msgSend(_64,"_tokens"),_6a=[];
if(_66!==nil){
for(var i=0,_6b=objj_msgSend(_66,"count");i<_6b;i++){
var _6c=_66[i],_6d=objj_msgSend(_64,"tokenField:displayStringForRepresentedObject:",_64,_6c),_6e=nil;
for(var j=0,_6f=objj_msgSend(_69,"count");j<_6f;j++){
var _70=_69[j];
if(objj_msgSend(_70,"representedObject")==_6c){
objj_msgSend(_69,"removeObjectAtIndex:",j);
_6e=_70;
break;
}
}
if(_6e===nil){
_6e=objj_msgSend(objj_msgSend(_CPTokenFieldToken,"alloc"),"init");
objj_msgSend(_6e,"setTokenField:",_64);
objj_msgSend(_6e,"setRepresentedObject:",_6c);
objj_msgSend(_6e,"setStringValue:",_6d);
objj_msgSend(_68,"addSubview:",_6e);
}
_6a.push(_6e);
}
}
for(var j=0,_6f=objj_msgSend(_69,"count");j<_6f;j++){
objj_msgSend(_69[j],"removeFromSuperview");
}
_value=_6a;
objj_msgSend(_64,"_selectToken:byExtendingSelection:",nil,NO);
objj_msgSend(_64,"_updatePlaceholderState");
_shouldScrollTo=_14;
objj_msgSend(_64,"setNeedsLayout");
objj_msgSend(_64,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("sendAction:to:"),function(_71,_72,_73,_74){
with(_71){
_shouldNotifyTarget=NO;
objj_msgSendSuper({receiver:_71,super_class:objj_getClass("CPTokenField").super_class},"sendAction:to:",_73,_74);
}
}),new objj_method(sel_getUid("_setStringValue:"),function(_75,_76,_77){
with(_75){
}
}),new objj_method(sel_getUid("viewDidMoveToWindow"),function(_78,_79){
with(_78){
objj_msgSend(objj_msgSend(objj_msgSend(_78,"window"),"contentView"),"addSubview:",_autocompleteContainer);
_autocompleteContainer._DOMElement.style.zIndex=1000;
}
}),new objj_method(sel_getUid("removeFromSuperview"),function(_7a,_7b){
with(_7a){
objj_msgSend(_autocompleteContainer,"removeFromSuperview");
}
}),new objj_method(sel_getUid("_inputElement"),function(_7c,_7d){
with(_7c){
if(!_1){
_1=document.createElement("input");
_1.style.position="absolute";
_1.style.border="0px";
_1.style.padding="0px";
_1.style.margin="0px";
_1.style.whiteSpace="pre";
_1.style.background="transparent";
_1.style.outline="none";
_c=function(_7e){
if(_4&&objj_msgSend(_4._tokenScrollView,"documentView")._DOMElement!=_1.parentNode){
return;
}
if(_4&&_4._preventResign){
return false;
}
if(!_6&&!_b){
objj_msgSend(objj_msgSend(_4,"window"),"makeFirstResponder:",nil);
return;
}
CPTokenFieldHandleBlur(_7e,_1);
_7=YES;
return true;
};
_f=function(_7f){
_7f=_7f||window.event;
_5=objj_msgSend(_4,"stringValue");
var _80=objj_msgSend(objj_msgSend(_4,"autocompleteView"),"selectedRow");
if(_7f.keyCode===CPUpArrowKeyCode){
_80-=1;
}else{
if(_7f.keyCode===CPDownArrowKeyCode){
_80+=1;
}
}
if(_80>objj_msgSend(objj_msgSend(_4,"autocompleteView"),"numberOfRows")-1){
_80=objj_msgSend(objj_msgSend(_4,"autocompleteView"),"numberOfRows")-1;
}
if(_80<0){
_80=0;
}
objj_msgSend(objj_msgSend(_4,"autocompleteView"),"selectRowIndexes:byExtendingSelection:",objj_msgSend(CPIndexSet,"indexSetWithIndex:",_80),NO);
var _81=objj_msgSend(_4,"autocompleteView"),_82=objj_msgSend(objj_msgSend(_81,"enclosingScrollView"),"contentView"),_83=objj_msgSend(_81,"rectOfRow:",_80),_84=_4;
if(_83&&!CPRectContainsRect(objj_msgSend(_82,"bounds"),_83)){
objj_msgSend(_82,"scrollToPoint:",objj_msgSend(_81,"rectOfRow:",_80).origin);
}
if(_7f.keyCode===CPReturnKeyCode||_7f.keyCode===CPTabKeyCode){
if(_7f.preventDefault){
_7f.preventDefault();
}
if(_7f.stopPropagation){
_7f.stopPropagation();
}
_7f.cancelBubble=true;
if(!objj_msgSend(_4,"hasThemeState:",_10)){
if(_7f&&_7f.keyCode===CPReturnKeyCode){
objj_msgSend(_84,"sendAction:to:",objj_msgSend(_84,"action"),objj_msgSend(_84,"target"));
objj_msgSend(objj_msgSend(_84,"window"),"makeFirstResponder:",nil);
}else{
if(_7f&&_7f.keyCode===CPTabKeyCode){
if(!_7f.shiftKey){
objj_msgSend(objj_msgSend(_84,"window"),"selectNextKeyView:",_84);
}else{
objj_msgSend(objj_msgSend(_84,"window"),"selectPreviousKeyView:",_84);
}
}
}
}
objj_msgSend(_84,"_autocompleteWithDOMEvent:",_7f);
objj_msgSend(_84,"setNeedsLayout");
}else{
if(_7f.keyCode===CPEscapeKeyCode){
objj_msgSend(_4,"_hideCompletions");
}else{
if(_7f.keyCode===CPUpArrowKeyCode||_7f.keyCode===CPDownArrowKeyCode){
if(_7f.preventDefault){
_7f.preventDefault();
}
if(_7f.stopPropagation){
_7f.stopPropagation();
}
_7f.cancelBubble=true;
}else{
if(_7f.keyCode==CPLeftArrowKeyCode&&_84._selectedRange.location>0&&_1.value==""){
if(!_7f.shiftKey){
if(_84._selectedRange.length){
_84._selectedRange.length=0;
}else{
_84._selectedRange.location--;
}
}else{
_84._selectedRange.location--;
_84._selectedRange.length++;
}
_84._shouldScrollTo=_13;
objj_msgSend(_84,"setNeedsLayout");
}else{
if(_7f.keyCode==CPRightArrowKeyCode&&_84._selectedRange.location<objj_msgSend(objj_msgSend(_84,"_tokens"),"count")&&_1.value==""){
if(!_7f.shiftKey){
if(_84._selectedRange.length){
_84._selectedRange.location=CPMaxRange(_84._selectedRange);
_84._selectedRange.length=0;
}else{
_84._selectedRange.location=MIN(objj_msgSend(objj_msgSend(_84,"_tokens"),"count"),_84._selectedRange.location+_84._selectedRange.length+1);
}
}else{
_84._selectedRange.length++;
}
_84._shouldScrollTo=_14;
objj_msgSend(_84,"setNeedsLayout");
}else{
if(_7f.keyCode===CPDeleteKeyCode){
if(_1.value==""){
objj_msgSend(_7c,"_hideCompletions");
if(CPEmptyRange(_4._selectedRange)){
if(_4._selectedRange.location>0){
var _85=objj_msgSend(_4,"_tokens"),_86=objj_msgSend(_85,"objectAtIndex:",(_4._selectedRange.location-1));
objj_msgSend(_4,"_selectToken:byExtendingSelection:",_86,NO);
}
}else{
objj_msgSend(_4,"_removeSelectedTokens:",nil);
}
}else{
objj_msgSend(_4,"_delayedShowCompletions");
}
}else{
if(_7f.keyCode===CPDeleteForwardKeyCode&&_1.value==""){
objj_msgSend(_7c,"_hideCompletions");
if(CPEmptyRange(_4._selectedRange)){
var _85=objj_msgSend(_4,"_tokens");
if(_4._selectedRange.location<objj_msgSend(_85,"count")){
objj_msgSend(_4,"_deleteToken:",_85[_4._selectedRange.location]);
}
}else{
objj_msgSend(_4,"_removeSelectedTokens:",nil);
}
}
}
}
}
}
}
}
return true;
};
_e=function(_87){
_87=_87||window.event;
var _88=String.fromCharCode(_87.keyCode||_87.which),_89=_4;
if(objj_msgSend(objj_msgSend(_89,"tokenizingCharacterSet"),"characterIsMember:",_88)){
if(_87.preventDefault){
_87.preventDefault();
}
if(_87.stopPropagation){
_87.stopPropagation();
}
_87.cancelBubble=true;
objj_msgSend(_89,"_autocompleteWithDOMEvent:",_87);
objj_msgSend(_89,"setNeedsLayout");
return true;
}
objj_msgSend(_4,"_delayedShowCompletions");
_89._selectedRange.length=0;
objj_msgSend(_89,"setNeedsLayout");
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
};
_d=function(){
if(objj_msgSend(_4,"stringValue")!==_5){
_5=objj_msgSend(_4,"stringValue");
objj_msgSend(_4,"textDidChange:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidChangeNotification,_4,nil));
}
objj_msgSend(_7c,"setNeedsLayout");
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
};
CPTokenFieldHandleBlur=function(_8a){
_4=nil;
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
};
if(document.attachEvent){
_1.attachEvent("on"+CPDOMEventKeyUp,_d);
_1.attachEvent("on"+CPDOMEventKeyDown,_f);
_1.attachEvent("on"+CPDOMEventKeyPress,_e);
}else{
_1.addEventListener(CPDOMEventKeyUp,_d,NO);
_1.addEventListener(CPDOMEventKeyDown,_f,NO);
_1.addEventListener(CPDOMEventKeyPress,_e,NO);
}
_1.onblur=_c;
_3=_1;
}
if(CPFeatureIsCompatible(CPInputTypeCanBeChangedFeature)){
if(objj_msgSend(_4,"isSecure")){
_1.type="password";
}else{
_1.type="text";
}
return _1;
}
return _1;
}
}),new objj_method(sel_getUid("setCompletionDelay:"),function(_8b,_8c,_8d){
with(_8b){
_completionDelay=_8d;
}
}),new objj_method(sel_getUid("completionDelay"),function(_8e,_8f){
with(_8e){
return _completionDelay;
}
}),new objj_method(sel_getUid("_showCompletions:"),function(_90,_91,_92){
with(_90){
objj_msgSend(_90,"_retrieveCompletions");
objj_msgSend(_90,"setThemeState:",_10);
objj_msgSend(_90,"setNeedsLayout");
}
}),new objj_method(sel_getUid("_delayedShowCompletions"),function(_93,_94){
with(_93){
_showCompletionsTimer=objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",objj_msgSend(_93,"completionDelay"),_93,sel_getUid("_showCompletions:"),nil,NO);
}
}),new objj_method(sel_getUid("_cancelShowCompletions"),function(_95,_96){
with(_95){
if(objj_msgSend(_showCompletionsTimer,"isValid")){
objj_msgSend(_showCompletionsTimer,"invalidate");
}
}
}),new objj_method(sel_getUid("_hideCompletions"),function(_97,_98){
with(_97){
objj_msgSend(_97,"_cancelShowCompletions");
objj_msgSend(_97,"unsetThemeState:",_10);
objj_msgSend(_97,"setNeedsLayout");
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_99,_9a){
with(_99){
objj_msgSendSuper({receiver:_99,super_class:objj_getClass("CPTokenField").super_class},"layoutSubviews");
objj_msgSend(_tokenScrollView,"setFrame:",objj_msgSend(_99,"rectForEphemeralSubviewNamed:","content-view"));
var _9b=objj_msgSend(_99,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","content-view",CPWindowAbove,"bezel-view");
if(_9b){
objj_msgSend(_9b,"setHidden:",objj_msgSend(_99,"stringValue")!=="");
}
var _9c=objj_msgSend(_99,"frame"),_9d=objj_msgSend(_tokenScrollView,"documentView"),_9e=objj_msgSend(_99,"_tokens");
objj_msgSend(objj_msgSend(_autocompleteView,"tableColumnWithIdentifier:",_11),"setWidth:",objj_msgSend(objj_msgSend(_autocompleteScrollView,"contentView"),"frame").size.width);
if(objj_msgSend(_99,"hasThemeState:",_10)&&objj_msgSend(_cachedCompletions,"count")){
objj_msgSend(_autocompleteContainer,"setHidden:",NO);
var _9f=objj_msgSend(_99,"convertPoint:toView:",objj_msgSend(_99,"bounds").origin,objj_msgSend(_autocompleteContainer,"superview"));
objj_msgSend(_autocompleteContainer,"setFrameOrigin:",CPPointMake(_9f.x,_9f.y+_9c.size.height));
objj_msgSend(_autocompleteContainer,"setFrameSize:",CPSizeMake(CPRectGetWidth(objj_msgSend(_99,"bounds")),92));
objj_msgSend(_autocompleteScrollView,"setFrameSize:",CPSizeMake(objj_msgSend(_autocompleteContainer,"frame").size.width-2,90));
}else{
objj_msgSend(_autocompleteContainer,"setHidden:",YES);
}
if(!objj_msgSend(_9e,"isKindOfClass:",objj_msgSend(CPArray,"class"))){
return;
}
var _a0=CGRectMakeCopy(objj_msgSend(_9d,"bounds")),_a1=_a0.origin,_a2=_a0.size,_a3=CPPointMake(_a1.x,_a1.y),_a4=CPSizeMake(2,2),_a5=objj_msgSend(objj_msgSend(_99,"window"),"firstResponder")==_99,_a6=objj_msgSend(_CPTokenFieldToken,"new");
objj_msgSend(_a6,"sizeToFit");
var _a7=CGRectGetHeight(objj_msgSend(_a6,"bounds"));
var _a8=function(_a9,_aa){
var r=CGRectMake(0,0,_a9,_aa);
if(_a3.x+_a9>=_a2.width&&_a3.x>_a1.x){
_a3.x=_a1.x;
_a3.y+=_aa+_a4.height;
}
r.origin.x=_a3.x;
r.origin.y=_a3.y;
if(CGRectGetHeight(objj_msgSend(_9d,"bounds"))<_a3.y+_aa){
objj_msgSend(_9d,"setFrame:",CGRectMake(0,0,CGRectGetWidth(objj_msgSend(_tokenScrollView,"bounds")),_a3.y+_aa));
}
_a3.x+=_a9+_a4.width;
return r;
};
var _ab=function(_ac){
var _ad=objj_msgSend(_99,"_inputElement"),_ae=1;
if(_selectedRange.length===0){
_ae=objj_msgSend((_ad.value||"")+"X","sizeWithFont:",objj_msgSend(_99,"font")).width;
if(_ac){
_ae=MAX(_a2.width-_a3.x-1,_ae);
}
}
var _af=_a8(_ae,_a7);
_ad.style.left=_af.origin.x+"px";
_ad.style.top=_af.origin.y+"px";
_ad.style.width=_af.size.width+"px";
_ad.style.height=_af.size.height+"px";
if(_selectedRange.length==0){
objj_msgSend(objj_msgSend(_tokenScrollView,"documentView"),"scrollRectToVisible:",_af);
}
};
for(var i=0,_b0=objj_msgSend(_9e,"count");i<_b0;i++){
if(_a5&&i==CPMaxRange(_selectedRange)){
_ab(false);
}
var _b1=objj_msgSend(_9e,"objectAtIndex:",i);
if(objj_msgSend(_b1,"isKindOfClass:",objj_msgSend(CPString,"class"))){
continue;
}
objj_msgSend(_b1,"setHighlighted:",CPLocationInRange(i,_selectedRange));
objj_msgSend(_b1,"sizeToFit");
var _b2=objj_msgSend(_9d,"bounds").size,_b3=objj_msgSend(_b1,"bounds").size,_b4=_a8(_b3.width,_b3.height);
objj_msgSend(_b1,"setFrame:",_b4);
}
if(_a5&&CPMaxRange(_selectedRange)>=objj_msgSend(_9e,"count")){
_ab(true);
}
if(_a5&&_selectedRange.length){
objj_msgSend(_99,"_inputElement").style.left="-10000px";
objj_msgSend(_99,"_inputElement").focus();
}
if(CGRectGetHeight(objj_msgSend(_9d,"bounds"))>_a3.y+_a7){
objj_msgSend(_9d,"setFrame:",CGRectMake(0,0,CGRectGetWidth(objj_msgSend(_tokenScrollView,"bounds")),_a3.y+_a7));
}
if(_shouldScrollTo!==_12){
if(!(_a5&&_selectedRange.length==0)){
var _b5=_shouldScrollTo;
if(_b5===_13){
_b5=_9e[_selectedRange.location];
}else{
if(_b5===_14){
_b5=_9e[MAX(0,CPMaxRange(_selectedRange)-1)];
}
}
objj_msgSend(_99,"_scrollTokenViewToVisible:",_b5);
}
_shouldScrollTo=_12;
}
}
}),new objj_method(sel_getUid("_scrollTokenViewToVisible:"),function(_b6,_b7,_b8){
with(_b6){
if(!_b8){
return;
}
return objj_msgSend(objj_msgSend(_tokenScrollView,"documentView"),"scrollRectToVisible:",objj_msgSend(_b8,"frame"));
}
}),new objj_method(sel_getUid("numberOfRowsInTableView:"),function(_b9,_ba,_bb){
with(_b9){
return objj_msgSend(_cachedCompletions,"count");
}
}),new objj_method(sel_getUid("tableView:objectValueForTableColumn:row:"),function(_bc,_bd,_be,_bf,row){
with(_bc){
return objj_msgSend(_bc,"tokenField:displayStringForRepresentedObject:",_bc,objj_msgSend(_cachedCompletions,"objectAtIndex:",row));
}
}),new objj_method(sel_getUid("tableViewSelectionDidChange:"),function(_c0,_c1,_c2){
with(_c0){
window.setTimeout(function(){
objj_msgSend(objj_msgSend(_c0,"window"),"makeFirstResponder:",_c0);
},2);
}
}),new objj_method(sel_getUid("autocompleteView"),function(_c3,_c4){
with(_c3){
return _autocompleteView;
}
})]);
class_addMethods(_16,[new objj_method(sel_getUid("defaultTokenizingCharacterSet"),function(_c5,_c6){
with(_c5){
return objj_msgSend(CPCharacterSet,"characterSetWithCharactersInString:",",");
}
}),new objj_method(sel_getUid("defaultThemeClass"),function(_c7,_c8){
with(_c7){
return "tokenfield";
}
}),new objj_method(sel_getUid("defaultCompletionDelay"),function(_c9,_ca){
with(_c9){
return 0.5;
}
})]);
var _15=objj_getClass("CPTokenField");
if(!_15){
throw new SyntaxError("*** Could not find definition for class \"CPTokenField\"");
}
var _16=_15.isa;
class_addMethods(_15,[new objj_method(sel_getUid("tokenField:completionsForSubstring:indexOfToken:indexOfSelectedItem:"),function(_cb,_cc,_cd,_ce,_cf,_d0){
with(_cb){
if(objj_msgSend(objj_msgSend(_cb,"delegate"),"respondsToSelector:",sel_getUid("tokenField:completionsForSubstring:indexOfToken:indexOfSelectedItem:"))){
return objj_msgSend(objj_msgSend(_cb,"delegate"),"tokenField:completionsForSubstring:indexOfToken:indexOfSelectedItem:",_cd,_ce,_tokenIndex,_d0);
}
return [];
}
}),new objj_method(sel_getUid("tokenField:displayStringForRepresentedObject:"),function(_d1,_d2,_d3,_d4){
with(_d1){
if(objj_msgSend(objj_msgSend(_d1,"delegate"),"respondsToSelector:",sel_getUid("tokenField:displayStringForRepresentedObject:"))){
var _d5=objj_msgSend(objj_msgSend(_d1,"delegate"),"tokenField:displayStringForRepresentedObject:",_d3,_d4);
if(_d5!==nil){
return _d5;
}
}
return _d4;
}
})]);
var _15=objj_allocateClassPair(CPTextField,"_CPTokenFieldToken"),_16=_15.isa;
class_addIvars(_15,[new objj_ivar("_deleteButton"),new objj_ivar("_tokenField"),new objj_ivar("_representedObject")]);
objj_registerClassPair(_15);
class_addMethods(_15,[new objj_method(sel_getUid("initWithFrame:"),function(_d6,_d7,_d8){
with(_d6){
if(_d6=objj_msgSendSuper({receiver:_d6,super_class:objj_getClass("_CPTokenFieldToken").super_class},"initWithFrame:",_d8)){
_deleteButton=objj_msgSend(objj_msgSend(_CPTokenFieldTokenCloseButton,"alloc"),"initWithFrame:",CPRectMakeZero());
objj_msgSend(_d6,"addSubview:",_deleteButton);
objj_msgSend(_d6,"setEditable:",NO);
objj_msgSend(_d6,"setHighlighted:",NO);
objj_msgSend(_d6,"setBezeled:",YES);
}
return _d6;
}
}),new objj_method(sel_getUid("tokenField"),function(_d9,_da){
with(_d9){
return _tokenField;
}
}),new objj_method(sel_getUid("setTokenField:"),function(_db,_dc,_dd){
with(_db){
_tokenField=_dd;
}
}),new objj_method(sel_getUid("representedObject"),function(_de,_df){
with(_de){
return _representedObject;
}
}),new objj_method(sel_getUid("setRepresentedObject:"),function(_e0,_e1,_e2){
with(_e0){
_representedObject=_e2;
}
}),new objj_method(sel_getUid("_minimumFrameSize"),function(_e3,_e4){
with(_e3){
var _e5=CGSizeMakeZero(),_e6=objj_msgSend(_e3,"currentValueForThemeAttribute:","min-size"),_e7=objj_msgSend(_e3,"currentValueForThemeAttribute:","content-inset");
_e5.height=_e6.height;
_e5.width=MAX(_e6.width,objj_msgSend((objj_msgSend(_e3,"stringValue")||" "),"sizeWithFont:",objj_msgSend(_e3,"font")).width+_e7.left+_e7.right);
return _e5;
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_e8,_e9){
with(_e8){
objj_msgSendSuper({receiver:_e8,super_class:objj_getClass("_CPTokenFieldToken").super_class},"layoutSubviews");
var _ea=objj_msgSend(_e8,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","bezel-view",CPWindowBelow,"content-view");
if(_ea){
objj_msgSend(_deleteButton,"setTarget:",_e8);
objj_msgSend(_deleteButton,"setAction:",sel_getUid("_delete:"));
var _eb=objj_msgSend(_ea,"frame"),_ec=objj_msgSend(_deleteButton,"currentValueForThemeAttribute:","offset"),_ed=objj_msgSend(_deleteButton,"currentValueForThemeAttribute:","min-size");
objj_msgSend(_deleteButton,"setFrame:",CPRectMake(CPRectGetMaxX(_eb)-_ec.x,CPRectGetMinY(_eb)+_ec.y,_ed.width,_ed.height));
}
}
}),new objj_method(sel_getUid("mouseDown:"),function(_ee,_ef,_f0){
with(_ee){
objj_msgSend(_tokenField,"mouseDownOnToken:withEvent:",_ee,_f0);
}
}),new objj_method(sel_getUid("mouseUp:"),function(_f1,_f2,_f3){
with(_f1){
objj_msgSend(_tokenField,"mouseUpOnToken:withEvent:",_f1,_f3);
}
}),new objj_method(sel_getUid("_delete:"),function(_f4,_f5,_f6){
with(_f4){
objj_msgSend(_tokenField,"_deleteToken:",_f4);
}
})]);
class_addMethods(_16,[new objj_method(sel_getUid("defaultThemeClass"),function(_f7,_f8){
with(_f7){
return "tokenfield-token";
}
})]);
var _15=objj_allocateClassPair(CPButton,"_CPTokenFieldTokenCloseButton"),_16=_15.isa;
objj_registerClassPair(_15);
class_addMethods(_16,[new objj_method(sel_getUid("themeAttributes"),function(_f9,_fa){
with(_f9){
var _fb=objj_msgSend(CPButton,"themeAttributes");
objj_msgSend(_fb,"setObject:forKey:",CGPointMake(15,5),"offset");
return _fb;
}
}),new objj_method(sel_getUid("defaultThemeClass"),function(_fc,_fd){
with(_fc){
return "tokenfield-token-close-button";
}
})]);
