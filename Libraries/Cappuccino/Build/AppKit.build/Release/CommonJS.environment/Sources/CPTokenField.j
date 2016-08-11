@STATIC;1.0;I;27;Foundation/CPCharacterSet.jI;23;Foundation/CPIndexSet.jI;20;Foundation/CPTimer.ji;10;CPButton.ji;14;CPScrollView.ji;13;CPTextField.ji;13;CPTableView.ji;10;CPWindow.ji;15;_CPMenuWindow.jt;23745;
objj_executeFile("Foundation/CPCharacterSet.j",NO);
objj_executeFile("Foundation/CPIndexSet.j",NO);
objj_executeFile("Foundation/CPTimer.j",NO);
objj_executeFile("CPButton.j",YES);
objj_executeFile("CPScrollView.j",YES);
objj_executeFile("CPTextField.j",YES);
objj_executeFile("CPTableView.j",YES);
objj_executeFile("CPWindow.j",YES);
objj_executeFile("_CPMenuWindow.j",YES);
var _1="CPThemeStateAutoCompleting",_2="CPTokenFieldTableColumnIdentifier",_3=0,_4=1,_5=2;
var _6=objj_allocateClassPair(CPTextField,"CPTokenField"),_7=_6.isa;
class_addIvars(_6,[new objj_ivar("_tokenScrollView"),new objj_ivar("_shouldScrollTo"),new objj_ivar("_selectedRange"),new objj_ivar("_autocompleteContainer"),new objj_ivar("_autocompleteScrollView"),new objj_ivar("_autocompleteView"),new objj_ivar("_completionDelay"),new objj_ivar("_showCompletionsTimer"),new objj_ivar("_cachedCompletions"),new objj_ivar("_tokenizingCharacterSet"),new objj_ivar("_mouseDownEvent"),new objj_ivar("_preventResign"),new objj_ivar("_shouldNotifyTarget")]);
objj_registerClassPair(_6);
class_addMethods(_6,[new objj_method(sel_getUid("tokenizingCharacterSet"),function(_8,_9){
with(_8){
return _tokenizingCharacterSet;
}
}),new objj_method(sel_getUid("setTokenizingCharacterSet:"),function(_a,_b,_c){
with(_a){
_tokenizingCharacterSet=_c;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_d,_e,_f){
with(_d){
if(_d=objj_msgSendSuper({receiver:_d,super_class:objj_getClass("CPTokenField").super_class},"initWithFrame:",_f)){
_selectedRange=CPMakeRange(0,0);
_tokenScrollView=objj_msgSend(objj_msgSend(CPScrollView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_tokenScrollView,"setHasHorizontalScroller:",NO);
objj_msgSend(_tokenScrollView,"setHasVerticalScroller:",NO);
objj_msgSend(_tokenScrollView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
var _10=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_10,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_tokenScrollView,"setDocumentView:",_10);
objj_msgSend(_d,"addSubview:",_tokenScrollView);
_tokenIndex=0;
_cachedCompletions=[];
_completionDelay=objj_msgSend(CPTokenField,"defaultCompletionDelay");
_tokenizingCharacterSet=objj_msgSend(objj_msgSend(_d,"class"),"defaultTokenizingCharacterSet");
_autocompleteContainer=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CPRectMake(0,0,_f.size.width,92));
objj_msgSend(_autocompleteContainer,"setBackgroundColor:",objj_msgSend(_CPMenuWindow,"backgroundColorForBackgroundStyle:",_CPMenuWindowPopUpBackgroundStyle));
_autocompleteScrollView=objj_msgSend(objj_msgSend(CPScrollView,"alloc"),"initWithFrame:",CPRectMake(1,1,_f.size.width-2,90));
objj_msgSend(_autocompleteScrollView,"setAutohidesScrollers:",YES);
objj_msgSend(_autocompleteScrollView,"setHasHorizontalScroller:",NO);
objj_msgSend(_autocompleteContainer,"addSubview:",_autocompleteScrollView);
_autocompleteView=objj_msgSend(objj_msgSend(CPTableView,"alloc"),"initWithFrame:",CPRectMakeZero());
var _11=objj_msgSend(objj_msgSend(CPTableColumn,"alloc"),"initWithIdentifier:",_2);
objj_msgSend(_11,"setResizingMask:",CPTableColumnAutoresizingMask);
objj_msgSend(_autocompleteView,"addTableColumn:",_11);
objj_msgSend(_autocompleteView,"setDataSource:",_d);
objj_msgSend(_autocompleteView,"setDelegate:",_d);
objj_msgSend(_autocompleteView,"setAllowsMultipleSelection:",NO);
objj_msgSend(_autocompleteView,"setHeaderView:",nil);
objj_msgSend(_autocompleteView,"setCornerView:",nil);
objj_msgSend(_autocompleteView,"setRowHeight:",30);
objj_msgSend(_autocompleteView,"setGridStyleMask:",CPTableViewSolidHorizontalGridLineMask);
objj_msgSend(_autocompleteView,"setBackgroundColor:",objj_msgSend(CPColor,"clearColor"));
objj_msgSend(_autocompleteView,"setGridColor:",objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",242/255,243/255,245/255,1));
objj_msgSend(_autocompleteScrollView,"setDocumentView:",_autocompleteView);
objj_msgSend(_d,"setBezeled:",YES);
objj_msgSend(_d,"setObjectValue:",[]);
objj_msgSend(_d,"setNeedsLayout");
}
return _d;
}
}),new objj_method(sel_getUid("_retrieveCompletions"),function(_12,_13){
with(_12){
var _14=0;
_cachedCompletions=objj_msgSend(_12,"tokenField:completionsForSubstring:indexOfToken:indexOfSelectedItem:",_12,objj_msgSend(_12,"_inputElement").value,_tokenIndex,_14);
objj_msgSend(_autocompleteView,"selectRowIndexes:byExtendingSelection:",objj_msgSend(CPIndexSet,"indexSetWithIndex:",_14),NO);
objj_msgSend(_autocompleteView,"reloadData");
}
}),new objj_method(sel_getUid("_autocompleteWithDOMEvent:"),function(_15,_16,_17){
with(_15){
if(!_cachedCompletions||!objj_msgSend(_15,"hasThemeState:",_1)){
return;
}
objj_msgSend(_15,"_hideCompletions");
var _18=_cachedCompletions[objj_msgSend(_autocompleteView,"selectedRow")],_19=_18!==""&&objj_msgSend(_15,"_inputElement").value!=="";
if(!_18){
_18=objj_msgSend(_15,"_inputElement").value;
}
if(!_18||_18===""){
if(_17&&_17.keyCode===CPTabKeyCode){
if(!_17.shiftKey){
objj_msgSend(objj_msgSend(_15,"window"),"selectNextKeyView:",_15);
}else{
objj_msgSend(objj_msgSend(_15,"window"),"selectPreviousKeyView:",_15);
}
}else{
objj_msgSend(objj_msgSend(_15,"window"),"makeFirstResponder:",nil);
}
return;
}
var _1a=objj_msgSend(_15,"objectValue");
if(_19){
objj_msgSend(_1a,"removeObjectAtIndex:",_selectedRange.location);
}
objj_msgSend(_1a,"insertObject:atIndex:",_18,_selectedRange.location);
var _1b=_selectedRange.location;
objj_msgSend(_15,"setObjectValue:",_1a);
_selectedRange=CPMakeRange(_1b+1,0);
objj_msgSend(_15,"_inputElement").value="";
objj_msgSend(_15,"setNeedsLayout");
objj_msgSend(_15,"_controlTextDidChange");
}
}),new objj_method(sel_getUid("_autocomplete"),function(_1c,_1d){
with(_1c){
objj_msgSend(_1c,"_autocompleteWithDOMEvent:",nil);
}
}),new objj_method(sel_getUid("_selectToken:byExtendingSelection:"),function(_1e,_1f,_20,_21){
with(_1e){
var _22=objj_msgSend(objj_msgSend(_1e,"_tokens"),"indexOfObject:",_20);
if(_22==CPNotFound){
if(!_21){
_selectedRange=CPMakeRange(objj_msgSend(objj_msgSend(_1e,"_tokens"),"count"),0);
}
}else{
if(_21){
_selectedRange=CPUnionRange(_selectedRange,CPMakeRange(_22,1));
}else{
_selectedRange=CPMakeRange(_22,1);
}
}
objj_msgSend(_1e,"setNeedsLayout");
}
}),new objj_method(sel_getUid("_deselectToken:"),function(_23,_24,_25){
with(_23){
var _26=objj_msgSend(objj_msgSend(_23,"_tokens"),"indexOfObject:",_25);
if(CPLocationInRange(_26,_selectedRange)){
_selectedRange=CPMakeRange(MAX(_26,_selectedRange.location),MIN(_selectedRange.length,_26-_selectedRange.location));
}
objj_msgSend(_23,"setNeedsLayout");
}
}),new objj_method(sel_getUid("_deleteToken:"),function(_27,_28,_29){
with(_27){
var _2a=objj_msgSend(objj_msgSend(_27,"_tokens"),"indexOfObject:",_29),_2b=objj_msgSend(_27,"objectValue");
objj_msgSend(_27,"_deselectToken:",_29);
var _2c=CPCopyRange(_selectedRange);
objj_msgSend(_2b,"removeObjectAtIndex:",_2a);
objj_msgSend(_27,"setObjectValue:",_2b);
_selectedRange=_2c;
objj_msgSend(_27,"setNeedsLayout");
objj_msgSend(_27,"_controlTextDidChange");
}
}),new objj_method(sel_getUid("_controlTextDidChange"),function(_2d,_2e){
with(_2d){
var _2f=objj_msgSend(objj_msgSend(_2d,"class"),"_binderClassForBinding:",CPValueBinding),_30=objj_msgSend(_2f,"getBinding:forObject:",CPValueBinding,_2d);
if(_30){
objj_msgSend(_30,"reverseSetValueFor:","objectValue");
}
objj_msgSend(_2d,"textDidChange:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidChangeNotification,_2d,nil));
_shouldNotifyTarget=YES;
}
}),new objj_method(sel_getUid("_removeSelectedTokens:"),function(_31,_32,_33){
with(_31){
var _34=objj_msgSend(_31,"objectValue");
for(var i=_selectedRange.length-1;i>=0;i--){
objj_msgSend(_34,"removeObjectAtIndex:",_selectedRange.location+i);
}
var _35=_selectedRange.location;
objj_msgSend(_31,"setObjectValue:",_34);
_selectedRange=CPMakeRange(_35,0);
objj_msgSend(_31,"_controlTextDidChange");
}
}),new objj_method(sel_getUid("becomeFirstResponder"),function(_36,_37){
with(_36){
if(CPTokenFieldInputOwner&&objj_msgSend(CPTokenFieldInputOwner,"window")!==objj_msgSend(_36,"window")){
objj_msgSend(objj_msgSend(CPTokenFieldInputOwner,"window"),"makeFirstResponder:",nil);
}
objj_msgSend(_36,"setThemeState:",CPThemeStateEditing);
objj_msgSend(_36,"_updatePlaceholderState");
objj_msgSend(_36,"setNeedsLayout");
return YES;
}
}),new objj_method(sel_getUid("resignFirstResponder"),function(_38,_39){
with(_38){
if(_preventResign){
return NO;
}
objj_msgSend(_38,"unsetThemeState:",CPThemeStateEditing);
objj_msgSend(_38,"_autocomplete");
objj_msgSend(_38,"_updatePlaceholderState");
objj_msgSend(_38,"setNeedsLayout");
if(_shouldNotifyTarget){
_shouldNotifyTarget=NO;
objj_msgSend(_38,"textDidEndEditing:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidEndEditingNotification,_38,nil));
if(objj_msgSend(_38,"sendsActionOnEndEditing")){
objj_msgSend(_38,"sendAction:to:",objj_msgSend(_38,"action"),objj_msgSend(_38,"target"));
}
}
return YES;
}
}),new objj_method(sel_getUid("mouseDown:"),function(_3a,_3b,_3c){
with(_3a){
_preventResign=YES;
_mouseDownEvent=_3c;
objj_msgSend(_3a,"_selectToken:byExtendingSelection:",nil,NO);
objj_msgSendSuper({receiver:_3a,super_class:objj_getClass("CPTokenField").super_class},"mouseDown:",_3c);
}
}),new objj_method(sel_getUid("mouseUp:"),function(_3d,_3e,_3f){
with(_3d){
_preventResign=NO;
_mouseDownEvent=nil;
}
}),new objj_method(sel_getUid("mouseDownOnToken:withEvent:"),function(_40,_41,_42,_43){
with(_40){
_preventResign=YES;
_mouseDownEvent=_43;
}
}),new objj_method(sel_getUid("mouseUpOnToken:withEvent:"),function(_44,_45,_46,_47){
with(_44){
if(_mouseDownEvent&&CGPointEqualToPoint(objj_msgSend(_mouseDownEvent,"locationInWindow"),objj_msgSend(_47,"locationInWindow"))){
objj_msgSend(_44,"_selectToken:byExtendingSelection:",_46,objj_msgSend(_47,"modifierFlags")&CPShiftKeyMask);
objj_msgSend(objj_msgSend(_44,"window"),"makeFirstResponder:",_44);
_shouldScrollTo=_46;
}
_preventResign=NO;
}
}),new objj_method(sel_getUid("_tokens"),function(_48,_49){
with(_48){
return objj_msgSendSuper({receiver:_48,super_class:objj_getClass("CPTokenField").super_class},"objectValue");
}
}),new objj_method(sel_getUid("stringValue"),function(_4a,_4b){
with(_4a){
return objj_msgSend(objj_msgSend(_4a,"objectValue"),"componentsJoinedByString:",",");
}
}),new objj_method(sel_getUid("objectValue"),function(_4c,_4d){
with(_4c){
var _4e=[];
for(var i=0,_4f=objj_msgSend(objj_msgSend(_4c,"_tokens"),"count");i<_4f;i++){
var _50=objj_msgSend(objj_msgSend(_4c,"_tokens"),"objectAtIndex:",i);
if(objj_msgSend(_50,"isKindOfClass:",objj_msgSend(CPString,"class"))){
continue;
}
objj_msgSend(_4e,"addObject:",objj_msgSend(_50,"representedObject"));
}
return _4e;
}
}),new objj_method(sel_getUid("setObjectValue:"),function(_51,_52,_53){
with(_51){
if(_53!==nil&&!objj_msgSend(_53,"isKindOfClass:",objj_msgSend(CPArray,"class"))){
objj_msgSendSuper({receiver:_51,super_class:objj_getClass("CPTokenField").super_class},"setObjectValue:",nil);
return;
}
var _54=objj_msgSendSuper({receiver:_51,super_class:objj_getClass("CPTokenField").super_class},"objectValue");
if(_53===_54||objj_msgSend(_53,"isEqualToArray:",_54)){
return;
}
var _55=objj_msgSend(_tokenScrollView,"documentView");
var _56=objj_msgSend(_51,"_tokens"),_57=[];
if(_53!==nil){
for(var i=0,_58=objj_msgSend(_53,"count");i<_58;i++){
var _59=_53[i],_5a=objj_msgSend(_51,"tokenField:displayStringForRepresentedObject:",_51,_59),_5b=nil;
for(var j=0,_5c=objj_msgSend(_56,"count");j<_5c;j++){
var _5d=_56[j];
if(objj_msgSend(_5d,"representedObject")==_59){
objj_msgSend(_56,"removeObjectAtIndex:",j);
_5b=_5d;
break;
}
}
if(_5b===nil){
_5b=objj_msgSend(objj_msgSend(_CPTokenFieldToken,"alloc"),"init");
objj_msgSend(_5b,"setTokenField:",_51);
objj_msgSend(_5b,"setRepresentedObject:",_59);
objj_msgSend(_5b,"setStringValue:",_5a);
objj_msgSend(_55,"addSubview:",_5b);
}
_57.push(_5b);
}
}
for(var j=0,_5c=objj_msgSend(_56,"count");j<_5c;j++){
objj_msgSend(_56[j],"removeFromSuperview");
}
_value=_57;
objj_msgSend(_51,"_selectToken:byExtendingSelection:",nil,NO);
objj_msgSend(_51,"_updatePlaceholderState");
_shouldScrollTo=_5;
objj_msgSend(_51,"setNeedsLayout");
objj_msgSend(_51,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("sendAction:to:"),function(_5e,_5f,_60,_61){
with(_5e){
_shouldNotifyTarget=NO;
objj_msgSendSuper({receiver:_5e,super_class:objj_getClass("CPTokenField").super_class},"sendAction:to:",_60,_61);
}
}),new objj_method(sel_getUid("_setStringValue:"),function(_62,_63,_64){
with(_62){
}
}),new objj_method(sel_getUid("viewDidMoveToWindow"),function(_65,_66){
with(_65){
objj_msgSend(objj_msgSend(objj_msgSend(_65,"window"),"contentView"),"addSubview:",_autocompleteContainer);
_autocompleteContainer._DOMElement.style.zIndex=1000;
}
}),new objj_method(sel_getUid("removeFromSuperview"),function(_67,_68){
with(_67){
objj_msgSend(_autocompleteContainer,"removeFromSuperview");
}
}),new objj_method(sel_getUid("setCompletionDelay:"),function(_69,_6a,_6b){
with(_69){
_completionDelay=_6b;
}
}),new objj_method(sel_getUid("completionDelay"),function(_6c,_6d){
with(_6c){
return _completionDelay;
}
}),new objj_method(sel_getUid("_showCompletions:"),function(_6e,_6f,_70){
with(_6e){
objj_msgSend(_6e,"_retrieveCompletions");
objj_msgSend(_6e,"setThemeState:",_1);
objj_msgSend(_6e,"setNeedsLayout");
}
}),new objj_method(sel_getUid("_delayedShowCompletions"),function(_71,_72){
with(_71){
_showCompletionsTimer=objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",objj_msgSend(_71,"completionDelay"),_71,sel_getUid("_showCompletions:"),nil,NO);
}
}),new objj_method(sel_getUid("_cancelShowCompletions"),function(_73,_74){
with(_73){
if(objj_msgSend(_showCompletionsTimer,"isValid")){
objj_msgSend(_showCompletionsTimer,"invalidate");
}
}
}),new objj_method(sel_getUid("_hideCompletions"),function(_75,_76){
with(_75){
objj_msgSend(_75,"_cancelShowCompletions");
objj_msgSend(_75,"unsetThemeState:",_1);
objj_msgSend(_75,"setNeedsLayout");
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_77,_78){
with(_77){
objj_msgSendSuper({receiver:_77,super_class:objj_getClass("CPTokenField").super_class},"layoutSubviews");
objj_msgSend(_tokenScrollView,"setFrame:",objj_msgSend(_77,"rectForEphemeralSubviewNamed:","content-view"));
var _79=objj_msgSend(_77,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","content-view",CPWindowAbove,"bezel-view");
if(_79){
objj_msgSend(_79,"setHidden:",objj_msgSend(_77,"stringValue")!=="");
}
var _7a=objj_msgSend(_77,"frame"),_7b=objj_msgSend(_tokenScrollView,"documentView"),_7c=objj_msgSend(_77,"_tokens");
objj_msgSend(objj_msgSend(_autocompleteView,"tableColumnWithIdentifier:",_2),"setWidth:",objj_msgSend(objj_msgSend(_autocompleteScrollView,"contentView"),"frame").size.width);
if(objj_msgSend(_77,"hasThemeState:",_1)&&objj_msgSend(_cachedCompletions,"count")){
objj_msgSend(_autocompleteContainer,"setHidden:",NO);
var _7d=objj_msgSend(_77,"convertPoint:toView:",objj_msgSend(_77,"bounds").origin,objj_msgSend(_autocompleteContainer,"superview"));
objj_msgSend(_autocompleteContainer,"setFrameOrigin:",CPPointMake(_7d.x,_7d.y+_7a.size.height));
objj_msgSend(_autocompleteContainer,"setFrameSize:",CPSizeMake(CPRectGetWidth(objj_msgSend(_77,"bounds")),92));
objj_msgSend(_autocompleteScrollView,"setFrameSize:",CPSizeMake(objj_msgSend(_autocompleteContainer,"frame").size.width-2,90));
}else{
objj_msgSend(_autocompleteContainer,"setHidden:",YES);
}
if(!objj_msgSend(_7c,"isKindOfClass:",objj_msgSend(CPArray,"class"))){
return;
}
var _7e=CGRectMakeCopy(objj_msgSend(_7b,"bounds")),_7f=_7e.origin,_80=_7e.size,_81=CPPointMake(_7f.x,_7f.y),_82=CPSizeMake(2,2),_83=objj_msgSend(objj_msgSend(_77,"window"),"firstResponder")==_77,_84=objj_msgSend(_CPTokenFieldToken,"new");
objj_msgSend(_84,"sizeToFit");
var _85=CGRectGetHeight(objj_msgSend(_84,"bounds"));
var _86=function(_87,_88){
var r=CGRectMake(0,0,_87,_88);
if(_81.x+_87>=_80.width&&_81.x>_7f.x){
_81.x=_7f.x;
_81.y+=_88+_82.height;
}
r.origin.x=_81.x;
r.origin.y=_81.y;
if(CGRectGetHeight(objj_msgSend(_7b,"bounds"))<_81.y+_88){
objj_msgSend(_7b,"setFrame:",CGRectMake(0,0,CGRectGetWidth(objj_msgSend(_tokenScrollView,"bounds")),_81.y+_88));
}
_81.x+=_87+_82.width;
return r;
};
var _89=function(_8a){
var _8b=objj_msgSend(_77,"_inputElement"),_8c=1;
if(_selectedRange.length===0){
_8c=objj_msgSend((_8b.value||"")+"X","sizeWithFont:",objj_msgSend(_77,"font")).width;
if(_8a){
_8c=MAX(_80.width-_81.x-1,_8c);
}
}
var _8d=_86(_8c,_85);
_8b.style.left=_8d.origin.x+"px";
_8b.style.top=_8d.origin.y+"px";
_8b.style.width=_8d.size.width+"px";
_8b.style.height=_8d.size.height+"px";
if(_selectedRange.length==0){
objj_msgSend(objj_msgSend(_tokenScrollView,"documentView"),"scrollRectToVisible:",_8d);
}
};
for(var i=0,_8e=objj_msgSend(_7c,"count");i<_8e;i++){
if(_83&&i==CPMaxRange(_selectedRange)){
_89(false);
}
var _8f=objj_msgSend(_7c,"objectAtIndex:",i);
if(objj_msgSend(_8f,"isKindOfClass:",objj_msgSend(CPString,"class"))){
continue;
}
objj_msgSend(_8f,"setHighlighted:",CPLocationInRange(i,_selectedRange));
objj_msgSend(_8f,"sizeToFit");
var _90=objj_msgSend(_7b,"bounds").size,_91=objj_msgSend(_8f,"bounds").size,_92=_86(_91.width,_91.height);
objj_msgSend(_8f,"setFrame:",_92);
}
if(_83&&CPMaxRange(_selectedRange)>=objj_msgSend(_7c,"count")){
_89(true);
}
if(_83&&_selectedRange.length){
objj_msgSend(_77,"_inputElement").style.left="-10000px";
objj_msgSend(_77,"_inputElement").focus();
}
if(CGRectGetHeight(objj_msgSend(_7b,"bounds"))>_81.y+_85){
objj_msgSend(_7b,"setFrame:",CGRectMake(0,0,CGRectGetWidth(objj_msgSend(_tokenScrollView,"bounds")),_81.y+_85));
}
if(_shouldScrollTo!==_3){
if(!(_83&&_selectedRange.length==0)){
var _93=_shouldScrollTo;
if(_93===_4){
_93=_7c[_selectedRange.location];
}else{
if(_93===_5){
_93=_7c[MAX(0,CPMaxRange(_selectedRange)-1)];
}
}
objj_msgSend(_77,"_scrollTokenViewToVisible:",_93);
}
_shouldScrollTo=_3;
}
}
}),new objj_method(sel_getUid("_scrollTokenViewToVisible:"),function(_94,_95,_96){
with(_94){
if(!_96){
return;
}
return objj_msgSend(objj_msgSend(_tokenScrollView,"documentView"),"scrollRectToVisible:",objj_msgSend(_96,"frame"));
}
}),new objj_method(sel_getUid("numberOfRowsInTableView:"),function(_97,_98,_99){
with(_97){
return objj_msgSend(_cachedCompletions,"count");
}
}),new objj_method(sel_getUid("tableView:objectValueForTableColumn:row:"),function(_9a,_9b,_9c,_9d,row){
with(_9a){
return objj_msgSend(_9a,"tokenField:displayStringForRepresentedObject:",_9a,objj_msgSend(_cachedCompletions,"objectAtIndex:",row));
}
}),new objj_method(sel_getUid("tableViewSelectionDidChange:"),function(_9e,_9f,_a0){
with(_9e){
window.setTimeout(function(){
objj_msgSend(objj_msgSend(_9e,"window"),"makeFirstResponder:",_9e);
},2);
}
}),new objj_method(sel_getUid("autocompleteView"),function(_a1,_a2){
with(_a1){
return _autocompleteView;
}
})]);
class_addMethods(_7,[new objj_method(sel_getUid("defaultTokenizingCharacterSet"),function(_a3,_a4){
with(_a3){
return objj_msgSend(CPCharacterSet,"characterSetWithCharactersInString:",",");
}
}),new objj_method(sel_getUid("defaultThemeClass"),function(_a5,_a6){
with(_a5){
return "tokenfield";
}
}),new objj_method(sel_getUid("defaultCompletionDelay"),function(_a7,_a8){
with(_a7){
return 0.5;
}
})]);
var _6=objj_getClass("CPTokenField");
if(!_6){
throw new SyntaxError("*** Could not find definition for class \"CPTokenField\"");
}
var _7=_6.isa;
class_addMethods(_6,[new objj_method(sel_getUid("tokenField:completionsForSubstring:indexOfToken:indexOfSelectedItem:"),function(_a9,_aa,_ab,_ac,_ad,_ae){
with(_a9){
if(objj_msgSend(objj_msgSend(_a9,"delegate"),"respondsToSelector:",sel_getUid("tokenField:completionsForSubstring:indexOfToken:indexOfSelectedItem:"))){
return objj_msgSend(objj_msgSend(_a9,"delegate"),"tokenField:completionsForSubstring:indexOfToken:indexOfSelectedItem:",_ab,_ac,_tokenIndex,_ae);
}
return [];
}
}),new objj_method(sel_getUid("tokenField:displayStringForRepresentedObject:"),function(_af,_b0,_b1,_b2){
with(_af){
if(objj_msgSend(objj_msgSend(_af,"delegate"),"respondsToSelector:",sel_getUid("tokenField:displayStringForRepresentedObject:"))){
var _b3=objj_msgSend(objj_msgSend(_af,"delegate"),"tokenField:displayStringForRepresentedObject:",_b1,_b2);
if(_b3!==nil){
return _b3;
}
}
return _b2;
}
})]);
var _6=objj_allocateClassPair(CPTextField,"_CPTokenFieldToken"),_7=_6.isa;
class_addIvars(_6,[new objj_ivar("_deleteButton"),new objj_ivar("_tokenField"),new objj_ivar("_representedObject")]);
objj_registerClassPair(_6);
class_addMethods(_6,[new objj_method(sel_getUid("initWithFrame:"),function(_b4,_b5,_b6){
with(_b4){
if(_b4=objj_msgSendSuper({receiver:_b4,super_class:objj_getClass("_CPTokenFieldToken").super_class},"initWithFrame:",_b6)){
_deleteButton=objj_msgSend(objj_msgSend(_CPTokenFieldTokenCloseButton,"alloc"),"initWithFrame:",CPRectMakeZero());
objj_msgSend(_b4,"addSubview:",_deleteButton);
objj_msgSend(_b4,"setEditable:",NO);
objj_msgSend(_b4,"setHighlighted:",NO);
objj_msgSend(_b4,"setBezeled:",YES);
}
return _b4;
}
}),new objj_method(sel_getUid("tokenField"),function(_b7,_b8){
with(_b7){
return _tokenField;
}
}),new objj_method(sel_getUid("setTokenField:"),function(_b9,_ba,_bb){
with(_b9){
_tokenField=_bb;
}
}),new objj_method(sel_getUid("representedObject"),function(_bc,_bd){
with(_bc){
return _representedObject;
}
}),new objj_method(sel_getUid("setRepresentedObject:"),function(_be,_bf,_c0){
with(_be){
_representedObject=_c0;
}
}),new objj_method(sel_getUid("_minimumFrameSize"),function(_c1,_c2){
with(_c1){
var _c3=CGSizeMakeZero(),_c4=objj_msgSend(_c1,"currentValueForThemeAttribute:","min-size"),_c5=objj_msgSend(_c1,"currentValueForThemeAttribute:","content-inset");
_c3.height=_c4.height;
_c3.width=MAX(_c4.width,objj_msgSend((objj_msgSend(_c1,"stringValue")||" "),"sizeWithFont:",objj_msgSend(_c1,"font")).width+_c5.left+_c5.right);
return _c3;
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_c6,_c7){
with(_c6){
objj_msgSendSuper({receiver:_c6,super_class:objj_getClass("_CPTokenFieldToken").super_class},"layoutSubviews");
var _c8=objj_msgSend(_c6,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","bezel-view",CPWindowBelow,"content-view");
if(_c8){
objj_msgSend(_deleteButton,"setTarget:",_c6);
objj_msgSend(_deleteButton,"setAction:",sel_getUid("_delete:"));
var _c9=objj_msgSend(_c8,"frame"),_ca=objj_msgSend(_deleteButton,"currentValueForThemeAttribute:","offset"),_cb=objj_msgSend(_deleteButton,"currentValueForThemeAttribute:","min-size");
objj_msgSend(_deleteButton,"setFrame:",CPRectMake(CPRectGetMaxX(_c9)-_ca.x,CPRectGetMinY(_c9)+_ca.y,_cb.width,_cb.height));
}
}
}),new objj_method(sel_getUid("mouseDown:"),function(_cc,_cd,_ce){
with(_cc){
objj_msgSend(_tokenField,"mouseDownOnToken:withEvent:",_cc,_ce);
}
}),new objj_method(sel_getUid("mouseUp:"),function(_cf,_d0,_d1){
with(_cf){
objj_msgSend(_tokenField,"mouseUpOnToken:withEvent:",_cf,_d1);
}
}),new objj_method(sel_getUid("_delete:"),function(_d2,_d3,_d4){
with(_d2){
objj_msgSend(_tokenField,"_deleteToken:",_d2);
}
})]);
class_addMethods(_7,[new objj_method(sel_getUid("defaultThemeClass"),function(_d5,_d6){
with(_d5){
return "tokenfield-token";
}
})]);
var _6=objj_allocateClassPair(CPButton,"_CPTokenFieldTokenCloseButton"),_7=_6.isa;
objj_registerClassPair(_6);
class_addMethods(_7,[new objj_method(sel_getUid("themeAttributes"),function(_d7,_d8){
with(_d7){
var _d9=objj_msgSend(CPButton,"themeAttributes");
objj_msgSend(_d9,"setObject:forKey:",CGPointMake(15,5),"offset");
return _d9;
}
}),new objj_method(sel_getUid("defaultThemeClass"),function(_da,_db){
with(_da){
return "tokenfield-token-close-button";
}
})]);
