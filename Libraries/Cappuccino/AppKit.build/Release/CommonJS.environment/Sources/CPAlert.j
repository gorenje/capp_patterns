@STATIC;1.0;I;21;Foundation/CPObject.jI;21;Foundation/CPString.ji;15;CPApplication.ji;10;CPButton.ji;9;CPColor.ji;8;CPFont.ji;9;CPImage.ji;13;CPImageView.ji;9;CPPanel.ji;13;CPTextField.jt;19014;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("Foundation/CPString.j",NO);
objj_executeFile("CPApplication.j",YES);
objj_executeFile("CPButton.j",YES);
objj_executeFile("CPColor.j",YES);
objj_executeFile("CPFont.j",YES);
objj_executeFile("CPImage.j",YES);
objj_executeFile("CPImageView.j",YES);
objj_executeFile("CPPanel.j",YES);
objj_executeFile("CPTextField.j",YES);
CPWarningAlertStyle=0;
CPInformationalAlertStyle=1;
CPCriticalAlertStyle=2;
var _1=objj_allocateClassPair(CPView,"CPAlert"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_showHelp"),new objj_ivar("_showSuppressionButton"),new objj_ivar("_alertStyle"),new objj_ivar("_title"),new objj_ivar("_accessoryView"),new objj_ivar("_icon"),new objj_ivar("_buttons"),new objj_ivar("_suppressionButton"),new objj_ivar("_delegate"),new objj_ivar("_modalDelegate"),new objj_ivar("_didEndSelector"),new objj_ivar("_window"),new objj_ivar("_defaultWindowStyle"),new objj_ivar("_alertImageView"),new objj_ivar("_informativeLabel"),new objj_ivar("_messageLabel"),new objj_ivar("_alertHelpButton"),new objj_ivar("_needsLayout")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("showsHelp"),function(_3,_4){
with(_3){
return _showHelp;
}
}),new objj_method(sel_getUid("setShowsHelp:"),function(_5,_6,_7){
with(_5){
_showHelp=_7;
}
}),new objj_method(sel_getUid("showsSuppressionButton"),function(_8,_9){
with(_8){
return _showSuppressionButton;
}
}),new objj_method(sel_getUid("setShowsSuppressionButton:"),function(_a,_b,_c){
with(_a){
_showSuppressionButton=_c;
}
}),new objj_method(sel_getUid("alertStyle"),function(_d,_e){
with(_d){
return _alertStyle;
}
}),new objj_method(sel_getUid("setAlertStyle:"),function(_f,_10,_11){
with(_f){
_alertStyle=_11;
}
}),new objj_method(sel_getUid("title"),function(_12,_13){
with(_12){
return _title;
}
}),new objj_method(sel_getUid("setTitle:"),function(_14,_15,_16){
with(_14){
_title=_16;
}
}),new objj_method(sel_getUid("accessoryView"),function(_17,_18){
with(_17){
return _accessoryView;
}
}),new objj_method(sel_getUid("setAccessoryView:"),function(_19,_1a,_1b){
with(_19){
_accessoryView=_1b;
}
}),new objj_method(sel_getUid("icon"),function(_1c,_1d){
with(_1c){
return _icon;
}
}),new objj_method(sel_getUid("setIcon:"),function(_1e,_1f,_20){
with(_1e){
_icon=_20;
}
}),new objj_method(sel_getUid("buttons"),function(_21,_22){
with(_21){
return _buttons;
}
}),new objj_method(sel_getUid("suppressionButton"),function(_23,_24){
with(_23){
return _suppressionButton;
}
}),new objj_method(sel_getUid("delegate"),function(_25,_26){
with(_25){
return _delegate;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_27,_28,_29){
with(_27){
_delegate=_29;
}
}),new objj_method(sel_getUid("window"),function(_2a,_2b){
with(_2a){
return _window;
}
}),new objj_method(sel_getUid("init"),function(_2c,_2d){
with(_2c){
_2c=objj_msgSendSuper({receiver:_2c,super_class:objj_getClass("CPAlert").super_class},"init");
if(_2c){
_buttons=[];
_alertStyle=CPWarningAlertStyle;
_showHelp=NO;
_needsLayout=YES;
_defaultWindowStyle=CPTitledWindowMask;
_messageLabel=objj_msgSend(CPTextField,"labelWithTitle:","Alert");
_alertImageView=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"init");
_informativeLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"init");
_suppressionButton=objj_msgSend(CPCheckBox,"checkBoxWithTitle:","Do not show this message again");
_alertHelpButton=objj_msgSend(objj_msgSend(CPButton,"alloc"),"initWithFrame:",CGRectMake(0,0,16,16));
objj_msgSend(_alertHelpButton,"setTarget:",_2c);
objj_msgSend(_alertHelpButton,"setAction:",sel_getUid("_showHelp:"));
}
return _2c;
}
}),new objj_method(sel_getUid("setTheme:"),function(_2e,_2f,_30){
with(_2e){
if(_30===objj_msgSend(_2e,"theme")){
return;
}
if(_30===objj_msgSend(CPTheme,"defaultHudTheme")){
_defaultWindowStyle=CPTitledWindowMask|CPHUDBackgroundWindowMask;
}else{
_defaultWindowStyle=CPTitledWindowMask;
}
_window=nil;
_needsLayout=YES;
objj_msgSendSuper({receiver:_2e,super_class:objj_getClass("CPAlert").super_class},"setTheme:",_30);
}
}),new objj_method(sel_getUid("setWindowStyle:"),function(_31,_32,_33){
with(_31){
CPLog.warn("DEPRECATED: setWindowStyle: is deprecated. use setTheme: instead");
objj_msgSend(_31,"setTheme:",(_33===CPHUDBackgroundWindowMask)?objj_msgSend(CPTheme,"defaultHudTheme"):objj_msgSend(CPTheme,"defaultTheme"));
}
}),new objj_method(sel_getUid("windowStyle"),function(_34,_35){
with(_34){
CPLog.warn("DEPRECATED: windowStyle: is deprecated. use theme instead");
return _defaultWindowStyle;
}
}),new objj_method(sel_getUid("setMessageText:"),function(_36,_37,_38){
with(_36){
objj_msgSend(_messageLabel,"setStringValue:",_38);
_needsLayout=YES;
}
}),new objj_method(sel_getUid("messageText"),function(_39,_3a){
with(_39){
return objj_msgSend(_messageLabel,"stringValue");
}
}),new objj_method(sel_getUid("setInformativeText:"),function(_3b,_3c,_3d){
with(_3b){
objj_msgSend(_informativeLabel,"setStringValue:",_3d);
_needsLayout=YES;
}
}),new objj_method(sel_getUid("informativeText"),function(_3e,_3f){
with(_3e){
return objj_msgSend(_informativeLabel,"stringValue");
}
}),new objj_method(sel_getUid("setTitle:"),function(_40,_41,_42){
with(_40){
_title=_42;
objj_msgSend(_window,"setTitle:",_42);
}
}),new objj_method(sel_getUid("setAccessoryView:"),function(_43,_44,_45){
with(_43){
_accessoryView=_45;
_needsLayout=YES;
}
}),new objj_method(sel_getUid("setShowsSuppressionButton:"),function(_46,_47,_48){
with(_46){
_showSuppressionButton=_48;
_needsLayout=YES;
}
}),new objj_method(sel_getUid("addButtonWithTitle:"),function(_49,_4a,_4b){
with(_49){
var _4c=objj_msgSend(objj_msgSend(_window,"contentView"),"bounds"),_4d=objj_msgSend(_buttons,"count"),_4e=objj_msgSend(objj_msgSend(CPButton,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_4e,"setTitle:",_4b);
objj_msgSend(_4e,"setTag:",_4d);
objj_msgSend(_4e,"setTarget:",_49);
objj_msgSend(_4e,"setAction:",sel_getUid("_takeReturnCodeFrom:"));
objj_msgSend(objj_msgSend(_window,"contentView"),"addSubview:",_4e);
if(_4d==0){
objj_msgSend(_4e,"setKeyEquivalent:",CPCarriageReturnCharacter);
}else{
if(objj_msgSend(_4b,"lowercaseString")==="cancel"){
objj_msgSend(_4e,"setKeyEquivalent:",CPEscapeFunctionKey);
}
}
objj_msgSend(_buttons,"insertObject:atIndex:",_4e,0);
}
}),new objj_method(sel_getUid("_layoutMessageView"),function(_4f,_50){
with(_4f){
var _51=objj_msgSend(_4f,"currentValueForThemeAttribute:","content-inset"),_52=6,_53,_54;
objj_msgSend(_messageLabel,"setTextColor:",objj_msgSend(_4f,"currentValueForThemeAttribute:","message-text-color"));
objj_msgSend(_messageLabel,"setFont:",objj_msgSend(_4f,"currentValueForThemeAttribute:","message-text-font"));
objj_msgSend(_messageLabel,"setTextShadowColor:",objj_msgSend(_4f,"currentValueForThemeAttribute:","message-text-shadow-color"));
objj_msgSend(_messageLabel,"setTextShadowOffset:",objj_msgSend(_4f,"currentValueForThemeAttribute:","message-text-shadow-offset"));
objj_msgSend(_messageLabel,"setAlignment:",objj_msgSend(_4f,"currentValueForThemeAttribute:","message-text-alignment"));
objj_msgSend(_messageLabel,"setLineBreakMode:",CPLineBreakByWordWrapping);
_53=CGRectGetWidth(objj_msgSend(objj_msgSend(_window,"contentView"),"frame"))-_51.left-_51.right;
_54=objj_msgSend(objj_msgSend(_messageLabel,"stringValue"),"sizeWithFont:inWidth:",objj_msgSend(_messageLabel,"font"),_53);
objj_msgSend(_messageLabel,"setFrame:",CGRectMake(_51.left,_51.top,_54.width,_54.height+_52));
}
}),new objj_method(sel_getUid("_layoutInformativeView"),function(_55,_56){
with(_55){
var _57=objj_msgSend(_55,"currentValueForThemeAttribute:","content-inset"),_58=objj_msgSend(_55,"currentValueForThemeAttribute:","default-elements-margin"),_59=6,_5a,_5b,_5c;
objj_msgSend(_informativeLabel,"setTextColor:",objj_msgSend(_55,"currentValueForThemeAttribute:","informative-text-color"));
objj_msgSend(_informativeLabel,"setFont:",objj_msgSend(_55,"currentValueForThemeAttribute:","informative-text-font"));
objj_msgSend(_informativeLabel,"setTextShadowColor:",objj_msgSend(_55,"currentValueForThemeAttribute:","informative-text-shadow-color"));
objj_msgSend(_informativeLabel,"setTextShadowOffset:",objj_msgSend(_55,"currentValueForThemeAttribute:","informative-text-shadow-offset"));
objj_msgSend(_informativeLabel,"setAlignment:",objj_msgSend(_55,"currentValueForThemeAttribute:","informative-text-alignment"));
objj_msgSend(_informativeLabel,"setLineBreakMode:",CPLineBreakByWordWrapping);
_5a=CGRectGetWidth(objj_msgSend(objj_msgSend(_window,"contentView"),"frame"))-_57.left-_57.right,_5b=objj_msgSend(_messageLabel,"frameOrigin").y+objj_msgSend(_messageLabel,"frameSize").height+_58,_5c=objj_msgSend(objj_msgSend(_informativeLabel,"stringValue"),"sizeWithFont:inWidth:",objj_msgSend(_informativeLabel,"font"),_5a);
objj_msgSend(_informativeLabel,"setFrame:",CGRectMake(_57.left,_5b,_5c.width,_5c.height+_59));
}
}),new objj_method(sel_getUid("_layoutAccessoryView"),function(_5d,_5e){
with(_5d){
if(!_accessoryView){
return;
}
var _5f=objj_msgSend(_5d,"currentValueForThemeAttribute:","content-inset"),_60=objj_msgSend(_5d,"currentValueForThemeAttribute:","default-elements-margin"),_61=CGRectGetWidth(objj_msgSend(objj_msgSend(_window,"contentView"),"frame"))-_5f.left-_5f.right,_62=CGRectGetMaxY(objj_msgSend(_informativeLabel,"frame"))+_60;
objj_msgSend(_accessoryView,"setFrameOrigin:",CGPointMake(_5f.left,_62));
objj_msgSend(objj_msgSend(_window,"contentView"),"addSubview:",_accessoryView);
}
}),new objj_method(sel_getUid("_layoutSuppressionButton"),function(_63,_64){
with(_63){
if(!_showSuppressionButton){
return;
}
var _65=objj_msgSend(_63,"currentValueForThemeAttribute:","content-inset"),_66=objj_msgSend(_63,"currentValueForThemeAttribute:","suppression-button-x-offset"),_67=objj_msgSend(_63,"currentValueForThemeAttribute:","suppression-button-y-offset"),_68=objj_msgSend(_63,"currentValueForThemeAttribute:","default-elements-margin"),_69=CGRectGetMaxY(objj_msgSend((_accessoryView||_informativeLabel),"frame"))+_68+_67;
objj_msgSend(_suppressionButton,"setTextColor:",objj_msgSend(_63,"currentValueForThemeAttribute:","suppression-button-text-color"));
objj_msgSend(_suppressionButton,"setFont:",objj_msgSend(_63,"currentValueForThemeAttribute:","suppression-button-text-font"));
objj_msgSend(_suppressionButton,"setTextShadowColor:",objj_msgSend(_63,"currentValueForThemeAttribute:","suppression-button-text-shadow-color"));
objj_msgSend(_suppressionButton,"setTextShadowOffset:",objj_msgSend(_63,"currentValueForThemeAttribute:","suppression-button-text-shadow-offset"));
objj_msgSend(_suppressionButton,"sizeToFit");
objj_msgSend(_suppressionButton,"setFrameOrigin:",CGPointMake(_65.left+_66,_69));
objj_msgSend(objj_msgSend(_window,"contentView"),"addSubview:",_suppressionButton);
}
}),new objj_method(sel_getUid("_layoutButtonsFromView:"),function(_6a,_6b,_6c){
with(_6a){
var _6d=objj_msgSend(_6a,"currentValueForThemeAttribute:","content-inset"),_6e=objj_msgSend(_6a,"currentValueForThemeAttribute:","size"),_6f=objj_msgSend(_6a,"currentValueForThemeAttribute:","button-offset"),_70=objj_msgSend(_6a,"currentValueForThemeAttribute:","help-image-left-offset"),_71=objj_msgSend(_buttons,"objectAtIndex:",0),_72=objj_msgSend(_6a,"currentValueForThemeAttribute:","default-elements-margin"),_73=objj_msgSend(objj_msgSend(_window,"contentView"),"frame").size,_74,_75;
objj_msgSend(_71,"setTheme:",objj_msgSend(_6a,"theme"));
objj_msgSend(_71,"sizeToFit");
_73.height=CGRectGetMaxY(objj_msgSend(_6c,"frame"))+_72+objj_msgSend(_71,"frameSize").height;
if(_73.height<_6e.height){
_73.height=_6e.height;
}
_74=_73.height-objj_msgSend(_71,"frameSize").height+_6f;
_75=_73.width-_6d.right;
for(var i=objj_msgSend(_buttons,"count")-1;i>=0;i--){
var _76=_buttons[i];
objj_msgSend(_76,"setTheme:",objj_msgSend(_6a,"theme"));
objj_msgSend(_76,"sizeToFit");
var _77=objj_msgSend(_76,"frame"),_78=MAX(80,CGRectGetWidth(_77)),_79=CGRectGetHeight(_77);
_75-=_78;
objj_msgSend(_76,"setFrame:",CGRectMake(_75,_74,_78,_79));
_75-=10;
}
if(_showHelp){
var _7a=objj_msgSend(_6a,"currentValueForThemeAttribute:","help-image"),_7b=objj_msgSend(_6a,"currentValueForThemeAttribute:","help-image-pressed"),_7c=_7a?objj_msgSend(_7a,"size"):CGSizeMakeZero(),_7d=CGRectMake(_70,_74,_7c.width,_7c.height);
objj_msgSend(_alertHelpButton,"setImage:",_7a);
objj_msgSend(_alertHelpButton,"setAlternateImage:",_7b);
objj_msgSend(_alertHelpButton,"setBordered:",NO);
objj_msgSend(_alertHelpButton,"setFrame:",_7d);
}
_73.height+=objj_msgSend(_71,"frameSize").height+_6d.bottom+_6f;
return _73;
}
}),new objj_method(sel_getUid("layout"),function(_7e,_7f){
with(_7e){
if(!_needsLayout){
return;
}
if(!_window){
objj_msgSend(_7e,"_createWindowWithStyle:",nil);
}
var _80=objj_msgSend(_7e,"currentValueForThemeAttribute:","image-offset"),_81=_icon,_82;
if(!_81){
switch(_alertStyle){
case CPWarningAlertStyle:
_81=objj_msgSend(_7e,"currentValueForThemeAttribute:","warning-image");
break;
case CPInformationalAlertStyle:
_81=objj_msgSend(_7e,"currentValueForThemeAttribute:","information-image");
break;
case CPCriticalAlertStyle:
_81=objj_msgSend(_7e,"currentValueForThemeAttribute:","error-image");
break;
}
}
objj_msgSend(_alertImageView,"setImage:",_81);
var _83=_81?objj_msgSend(_81,"size"):CGSizeMakeZero();
objj_msgSend(_alertImageView,"setFrame:",CGRectMake(_80.x,_80.y,_83.width,_83.height));
objj_msgSend(_7e,"_layoutMessageView");
objj_msgSend(_7e,"_layoutInformativeView");
objj_msgSend(_7e,"_layoutAccessoryView");
objj_msgSend(_7e,"_layoutSuppressionButton");
var _84=_informativeLabel;
if(_showSuppressionButton){
_84=_suppressionButton;
}else{
if(_accessoryView){
_84=_accessoryView;
}
}
_82=objj_msgSend(_7e,"_layoutButtonsFromView:",_84);
if(objj_msgSend(_window,"styleMask")&CPDocModalWindowMask){
_82.height-=26;
}
objj_msgSend(_window,"setFrameSize:",_82);
objj_msgSend(_window,"center");
_needsLayout=NO;
}
}),new objj_method(sel_getUid("runModal"),function(_85,_86){
with(_85){
if(!(objj_msgSend(_window,"styleMask")&_defaultWindowStyle)){
_needsLayout=YES;
objj_msgSend(_85,"_createWindowWithStyle:",_defaultWindowStyle);
}
objj_msgSend(_85,"layout");
objj_msgSend(CPApp,"runModalForWindow:",_window);
}
}),new objj_method(sel_getUid("beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:"),function(_87,_88,_89,_8a,_8b,_8c){
with(_87){
if(!(objj_msgSend(_window,"styleMask")&CPDocModalWindowMask)){
_needsLayout=YES;
objj_msgSend(_87,"_createWindowWithStyle:",CPDocModalWindowMask);
}
objj_msgSend(_87,"layout");
_modalDelegate=_8a;
_didEndSelector=_8b;
objj_msgSend(CPApp,"beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:",_window,_89,_87,sel_getUid("_alertDidEnd:returnCode:contextInfo:"),_8c);
}
}),new objj_method(sel_getUid("beginSheetModalForWindow:"),function(_8d,_8e,_8f){
with(_8d){
objj_msgSend(_8d,"beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:",_8f,nil,nil,nil);
}
}),new objj_method(sel_getUid("_createWindowWithStyle:"),function(_90,_91,_92){
with(_90){
var _93=CGRectMakeZero();
_93.size=objj_msgSend(_90,"currentValueForThemeAttribute:","size");
_window=objj_msgSend(objj_msgSend(CPWindow,"alloc"),"initWithContentRect:styleMask:",_93,_92||_defaultWindowStyle);
if(_title){
objj_msgSend(_window,"setTitle:",_title);
}
var _94=objj_msgSend(_window,"contentView"),_95=objj_msgSend(_buttons,"count");
if(_95){
while(_95--){
objj_msgSend(_94,"addSubview:",_buttons[_95]);
}
}else{
objj_msgSend(_90,"addButtonWithTitle:","OK");
}
objj_msgSend(_94,"addSubview:",_messageLabel);
objj_msgSend(_94,"addSubview:",_alertImageView);
objj_msgSend(_94,"addSubview:",_informativeLabel);
if(_showHelp){
objj_msgSend(_94,"addSubview:",_alertHelpButton);
}
}
}),new objj_method(sel_getUid("_showHelp:"),function(_96,_97,_98){
with(_96){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("alertShowHelp:"))){
objj_msgSend(_delegate,"alertShowHelp:",_96);
}
}
}),new objj_method(sel_getUid("_takeReturnCodeFrom:"),function(_99,_9a,_9b){
with(_99){
if(objj_msgSend(_window,"isSheet")){
objj_msgSend(CPApp,"endSheet:returnCode:",_window,objj_msgSend(_9b,"tag"));
}else{
objj_msgSend(CPApp,"abortModal");
objj_msgSend(_window,"close");
objj_msgSend(_99,"_alertDidEnd:returnCode:contextInfo:",_window,objj_msgSend(_9b,"tag"),nil);
}
}
}),new objj_method(sel_getUid("_alertDidEnd:returnCode:contextInfo:"),function(_9c,_9d,_9e,_9f,_a0){
with(_9c){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("alertDidEnd:returnCode:"))){
objj_msgSend(_delegate,"alertDidEnd:returnCode:",_9c,_9f);
}
if(_didEndSelector){
objj_msgSend(_modalDelegate,_didEndSelector,_9c,_9f,_a0);
}
_modalDelegate=nil;
_didEndSelector=nil;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("alertWithMessageText:defaultButton:alternateButton:otherButton:informativeTextWithFormat:"),function(_a1,_a2,_a3,_a4,_a5,_a6,_a7){
with(_a1){
var _a8=objj_msgSend(objj_msgSend(CPAlert,"alloc"),"init");
objj_msgSend(_a8,"setMessageText:",_a3);
objj_msgSend(_a8,"addButtonWithTitle:",_a4);
if(_a5){
objj_msgSend(_a8,"addButtonWithTitle:",_a5);
}
if(_a6){
objj_msgSend(_a8,"addButtonWithTitle:",_a6);
}
if(_a7){
objj_msgSend(_a8,"setInformativeText:",_a7);
}
return _a8;
}
}),new objj_method(sel_getUid("alertWithError:"),function(_a9,_aa,_ab){
with(_a9){
var _ac=objj_msgSend(objj_msgSend(CPAlert,"alloc"),"init");
objj_msgSend(_ac,"setMessageText:",_ab);
objj_msgSend(_ac,"setAlertStyle:",CPCriticalAlertStyle);
return _ac;
}
}),new objj_method(sel_getUid("defaultThemeClass"),function(_ad,_ae){
with(_ad){
return "alert";
}
}),new objj_method(sel_getUid("themeAttributes"),function(_af,_b0){
with(_af){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[CGSizeMake(400,110),CGInsetMake(15,15,15,50),6,10,CPJustifiedTextAlignment,objj_msgSend(CPColor,"blackColor"),objj_msgSend(CPFont,"boldSystemFontOfSize:",13),objj_msgSend(CPNull,"null"),CGSizeMakeZero(),CPJustifiedTextAlignment,objj_msgSend(CPColor,"blackColor"),objj_msgSend(CPFont,"systemFontOfSize:",12),objj_msgSend(CPNull,"null"),CGSizeMakeZero(),CGPointMake(15,12),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),0,0,3,objj_msgSend(CPColor,"blackColor"),objj_msgSend(CPFont,"systemFontOfSize:",12),objj_msgSend(CPNull,"null"),0],["size","content-inset","informative-offset","button-offset","message-text-alignment","message-text-color","message-text-font","message-text-shadow-color","message-text-shadow-offset","informative-text-alignment","informative-text-color","informative-text-font","informative-text-shadow-color","informative-text-shadow-offset","image-offset","information-image","warning-image","error-image","help-image","help-image-left-offset","help-image-pressed","suppression-button-y-offset","suppression-button-x-offset","default-elements-margin","suppression-button-text-color","suppression-button-text-font","suppression-button-text-shadow-color","suppression-button-text-shadow-offset"]);
}
})]);
