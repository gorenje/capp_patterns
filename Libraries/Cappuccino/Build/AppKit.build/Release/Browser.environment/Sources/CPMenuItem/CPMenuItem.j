@STATIC;1.0;I;20;Foundation/CPCoder.jI;21;Foundation/CPObject.jI;21;Foundation/CPString.ji;9;CPImage.ji;8;CPMenu.ji;8;CPView.ji;17;_CPMenuItemView.jt;16809;
objj_executeFile("Foundation/CPCoder.j",NO);
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("Foundation/CPString.j",NO);
objj_executeFile("CPImage.j",YES);
objj_executeFile("CPMenu.j",YES);
objj_executeFile("CPView.j",YES);
objj_executeFile("_CPMenuItemView.j",YES);
var _1=objj_allocateClassPair(CPObject,"CPMenuItem"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_isSeparator"),new objj_ivar("_title"),new objj_ivar("_font"),new objj_ivar("_target"),new objj_ivar("_action"),new objj_ivar("_isEnabled"),new objj_ivar("_isHidden"),new objj_ivar("_tag"),new objj_ivar("_state"),new objj_ivar("_image"),new objj_ivar("_alternateImage"),new objj_ivar("_onStateImage"),new objj_ivar("_offStateImage"),new objj_ivar("_mixedStateImage"),new objj_ivar("_submenu"),new objj_ivar("_menu"),new objj_ivar("_keyEquivalent"),new objj_ivar("_keyEquivalentModifierMask"),new objj_ivar("_mnemonicLocation"),new objj_ivar("_isAlternate"),new objj_ivar("_indentationLevel"),new objj_ivar("_toolTip"),new objj_ivar("_representedObject"),new objj_ivar("_view"),new objj_ivar("_changeCount"),new objj_ivar("_menuItemView")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("init"),function(_3,_4){
with(_3){
return objj_msgSend(_3,"initWithTitle:action:keyEquivalent:","",nil,nil);
}
}),new objj_method(sel_getUid("initWithTitle:action:keyEquivalent:"),function(_5,_6,_7,_8,_9){
with(_5){
_5=objj_msgSendSuper({receiver:_5,super_class:objj_getClass("CPMenuItem").super_class},"init");
if(_5){
_changeCount=0;
_isSeparator=NO;
_title=_7;
_action=_8;
_isEnabled=YES;
_isHidden=NO;
_tag=0;
_state=CPOffState;
_keyEquivalent=_9||"";
_keyEquivalentModifierMask=CPPlatformActionKeyMask;
_indentationLevel=0;
_mnemonicLocation=CPNotFound;
}
return _5;
}
}),new objj_method(sel_getUid("setEnabled:"),function(_a,_b,_c){
with(_a){
if(objj_msgSend(_menu,"autoenablesItems")){
return;
}
objj_msgSend(_a,"_setEnabled:",_c);
}
}),new objj_method(sel_getUid("_setEnabled:"),function(_d,_e,_f){
with(_d){
if(_isEnabled===_f){
return;
}
_isEnabled=!!_f;
objj_msgSend(_menuItemView,"setDirty");
objj_msgSend(_menu,"itemChanged:",_d);
}
}),new objj_method(sel_getUid("isEnabled"),function(_10,_11){
with(_10){
return _isEnabled;
}
}),new objj_method(sel_getUid("setHidden:"),function(_12,_13,_14){
with(_12){
if(_isHidden==_14){
return;
}
_isHidden=_14;
objj_msgSend(_menu,"itemChanged:",_12);
}
}),new objj_method(sel_getUid("isHidden"),function(_15,_16){
with(_15){
return _isHidden;
}
}),new objj_method(sel_getUid("isHiddenOrHasHiddenAncestor"),function(_17,_18){
with(_17){
if(_isHidden){
return YES;
}
var _19=objj_msgSend(_menu,"supermenu");
if(objj_msgSend(objj_msgSend(_19,"itemAtIndex:",objj_msgSend(_19,"indexOfItemWithSubmenu:",_menu)),"isHiddenOrHasHiddenAncestor")){
return YES;
}
return NO;
}
}),new objj_method(sel_getUid("setTarget:"),function(_1a,_1b,_1c){
with(_1a){
_target=_1c;
}
}),new objj_method(sel_getUid("target"),function(_1d,_1e){
with(_1d){
return _target;
}
}),new objj_method(sel_getUid("setAction:"),function(_1f,_20,_21){
with(_1f){
_action=_21;
}
}),new objj_method(sel_getUid("action"),function(_22,_23){
with(_22){
return _action;
}
}),new objj_method(sel_getUid("setTitle:"),function(_24,_25,_26){
with(_24){
_mnemonicLocation=CPNotFound;
if(_title==_26){
return;
}
_title=_26;
objj_msgSend(_menuItemView,"setDirty");
objj_msgSend(_menu,"itemChanged:",_24);
}
}),new objj_method(sel_getUid("title"),function(_27,_28){
with(_27){
return _title;
}
}),new objj_method(sel_getUid("setTextColor:"),function(_29,_2a,_2b){
with(_29){
}
}),new objj_method(sel_getUid("setFont:"),function(_2c,_2d,_2e){
with(_2c){
if(_font==_2e){
return;
}
_font=_2e;
objj_msgSend(_menu,"itemChanged:",_2c);
objj_msgSend(_menuItemView,"setDirty");
}
}),new objj_method(sel_getUid("font"),function(_2f,_30){
with(_2f){
return _font;
}
}),new objj_method(sel_getUid("setTag:"),function(_31,_32,_33){
with(_31){
_tag=_33;
}
}),new objj_method(sel_getUid("tag"),function(_34,_35){
with(_34){
return _tag;
}
}),new objj_method(sel_getUid("setState:"),function(_36,_37,_38){
with(_36){
if(_state==_38){
return;
}
_state=_38;
objj_msgSend(_menu,"itemChanged:",_36);
objj_msgSend(_menuItemView,"setDirty");
}
}),new objj_method(sel_getUid("state"),function(_39,_3a){
with(_39){
return _state;
}
}),new objj_method(sel_getUid("setImage:"),function(_3b,_3c,_3d){
with(_3b){
if(_image==_3d){
return;
}
_image=_3d;
objj_msgSend(_menuItemView,"setDirty");
objj_msgSend(_menu,"itemChanged:",_3b);
}
}),new objj_method(sel_getUid("image"),function(_3e,_3f){
with(_3e){
return _image;
}
}),new objj_method(sel_getUid("setAlternateImage:"),function(_40,_41,_42){
with(_40){
_alternateImage=_42;
}
}),new objj_method(sel_getUid("alternateImage"),function(_43,_44){
with(_43){
return _alternateImage;
}
}),new objj_method(sel_getUid("setOnStateImage:"),function(_45,_46,_47){
with(_45){
if(_onStateImage==_47){
return;
}
_onStateImage=_47;
objj_msgSend(_menu,"itemChanged:",_45);
}
}),new objj_method(sel_getUid("onStateImage"),function(_48,_49){
with(_48){
return _onStateImage;
}
}),new objj_method(sel_getUid("setOffStateImage:"),function(_4a,_4b,_4c){
with(_4a){
if(_offStateImage==_4c){
return;
}
_offStateImage=_4c;
objj_msgSend(_menu,"itemChanged:",_4a);
}
}),new objj_method(sel_getUid("offStateImage"),function(_4d,_4e){
with(_4d){
return _offStateImage;
}
}),new objj_method(sel_getUid("setMixedStateImage:"),function(_4f,_50,_51){
with(_4f){
if(_mixedStateImage==_51){
return;
}
_mixedStateImage=_51;
objj_msgSend(_menu,"itemChanged:",_4f);
}
}),new objj_method(sel_getUid("mixedStateImage"),function(_52,_53){
with(_52){
return _mixedStateImage;
}
}),new objj_method(sel_getUid("setSubmenu:"),function(_54,_55,_56){
with(_54){
if(_submenu===_56){
return;
}
var _57=objj_msgSend(_submenu,"supermenu");
if(_57){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"Can't add submenu \""+objj_msgSend(_56,"title")+"\" to item \""+objj_msgSend(_54,"title")+"\", because it is already submenu of \""+objj_msgSend(objj_msgSend(_56,"supermenu"),"title")+"\"");
}
_submenu=_56;
if(_submenu){
objj_msgSend(_submenu,"setSupermenu:",_menu);
objj_msgSend(_54,"setTarget:",_menu);
objj_msgSend(_54,"setAction:",sel_getUid("submenuAction:"));
}else{
objj_msgSend(_54,"setTarget:",nil);
objj_msgSend(_54,"setAction:",NULL);
}
objj_msgSend(_menuItemView,"setDirty");
objj_msgSend(_menu,"itemChanged:",_54);
}
}),new objj_method(sel_getUid("submenu"),function(_58,_59){
with(_58){
return _submenu;
}
}),new objj_method(sel_getUid("hasSubmenu"),function(_5a,_5b){
with(_5a){
return _submenu?YES:NO;
}
}),new objj_method(sel_getUid("isSeparatorItem"),function(_5c,_5d){
with(_5c){
return _isSeparator;
}
}),new objj_method(sel_getUid("setMenu:"),function(_5e,_5f,_60){
with(_5e){
_menu=_60;
}
}),new objj_method(sel_getUid("menu"),function(_61,_62){
with(_61){
return _menu;
}
}),new objj_method(sel_getUid("setKeyEquivalent:"),function(_63,_64,_65){
with(_63){
_keyEquivalent=_65||"";
}
}),new objj_method(sel_getUid("keyEquivalent"),function(_66,_67){
with(_66){
return _keyEquivalent;
}
}),new objj_method(sel_getUid("setKeyEquivalentModifierMask:"),function(_68,_69,_6a){
with(_68){
_keyEquivalentModifierMask=_6a;
}
}),new objj_method(sel_getUid("keyEquivalentModifierMask"),function(_6b,_6c){
with(_6b){
return _keyEquivalentModifierMask;
}
}),new objj_method(sel_getUid("keyEquivalentStringRepresentation"),function(_6d,_6e){
with(_6d){
if(!objj_msgSend(_keyEquivalent,"length")){
return "";
}
var _6f=_keyEquivalent.toUpperCase(),_70=_keyEquivalentModifierMask&CPShiftKeyMask||(_6f===_keyEquivalent&&_keyEquivalent.toLowerCase()!==_keyEquivalent.toUpperCase());
if(CPBrowserIsOperatingSystem(CPMacOperatingSystem)){
if(_keyEquivalentModifierMask&CPCommandKeyMask){
_6f="⌘"+_6f;
}
if(_70){
_6f="⇧"+_6f;
}
if(_keyEquivalentModifierMask&CPAlternateKeyMask){
_6f="⌥"+_6f;
}
if(_keyEquivalentModifierMask&CPControlKeyMask){
_6f="^"+_6f;
}
}else{
if(_70){
_6f="Shift-"+_6f;
}
if(_keyEquivalentModifierMask&CPAlternateKeyMask){
_6f="Alt-"+_6f;
}
if(_keyEquivalentModifierMask&CPControlKeyMask||_keyEquivalentModifierMask&CPCommandKeyMask){
_6f="Ctrl-"+_6f;
}
}
return _6f;
}
}),new objj_method(sel_getUid("setMnemonicLocation:"),function(_71,_72,_73){
with(_71){
_mnemonicLocation=_73;
}
}),new objj_method(sel_getUid("mnemonicLocation"),function(_74,_75){
with(_74){
return _mnemonicLocation;
}
}),new objj_method(sel_getUid("setTitleWithMnemonicLocation:"),function(_76,_77,_78){
with(_76){
var _79=objj_msgSend(_78,"rangeOfString:","&").location;
if(_79==CPNotFound){
objj_msgSend(_76,"setTitle:",_78);
}else{
objj_msgSend(_76,"setTitle:",objj_msgSend(_78,"substringToIndex:",_79)+objj_msgSend(_78,"substringFromIndex:",_79+1));
objj_msgSend(_76,"setMnemonicLocation:",_79);
}
}
}),new objj_method(sel_getUid("mnemonic"),function(_7a,_7b){
with(_7a){
return _mnemonicLocation==CPNotFound?"":objj_msgSend(_title,"characterAtIndex:",_mnemonicLocation);
}
}),new objj_method(sel_getUid("setAlternate:"),function(_7c,_7d,_7e){
with(_7c){
_isAlternate=_7e;
}
}),new objj_method(sel_getUid("isAlternate"),function(_7f,_80){
with(_7f){
return _isAlternate;
}
}),new objj_method(sel_getUid("setIndentationLevel:"),function(_81,_82,_83){
with(_81){
if(_83<0){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"setIndentationLevel: argument must be greater than or equal to 0.");
}
_indentationLevel=MIN(15,_83);
}
}),new objj_method(sel_getUid("indentationLevel"),function(_84,_85){
with(_84){
return _indentationLevel;
}
}),new objj_method(sel_getUid("setToolTip:"),function(_86,_87,_88){
with(_86){
_toolTip=_88;
}
}),new objj_method(sel_getUid("toolTip"),function(_89,_8a){
with(_89){
return _toolTip;
}
}),new objj_method(sel_getUid("setRepresentedObject:"),function(_8b,_8c,_8d){
with(_8b){
_representedObject=_8d;
}
}),new objj_method(sel_getUid("representedObject"),function(_8e,_8f){
with(_8e){
return _representedObject;
}
}),new objj_method(sel_getUid("setView:"),function(_90,_91,_92){
with(_90){
if(_view===_92){
return;
}
_view=_92;
objj_msgSend(_menuItemView,"setDirty");
objj_msgSend(_menu,"itemChanged:",_90);
}
}),new objj_method(sel_getUid("view"),function(_93,_94){
with(_93){
return _view;
}
}),new objj_method(sel_getUid("isHighlighted"),function(_95,_96){
with(_95){
return objj_msgSend(objj_msgSend(_95,"menu"),"highlightedItem")==_95;
}
}),new objj_method(sel_getUid("copy"),function(_97,_98){
with(_97){
var _99=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"init");
_99._isSeparator=_isSeparator;
objj_msgSend(_99,"setTitle:",_title);
objj_msgSend(_99,"setFont:",_font);
objj_msgSend(_99,"setTarget:",_target);
objj_msgSend(_99,"setAction:",_action);
objj_msgSend(_99,"setEnabled:",_isEnabled);
objj_msgSend(_99,"setHidden:",_isHidden);
objj_msgSend(_99,"setTag:",_tag);
objj_msgSend(_99,"setState:",_state);
objj_msgSend(_99,"setImage:",_image);
objj_msgSend(_99,"setAlternateImage:",_alternateImage);
objj_msgSend(_99,"setOnStateImage:",_onStateImage);
objj_msgSend(_99,"setOffStateImage:",_offStateImage);
objj_msgSend(_99,"setMixedStateImage:",_mixedStateImage);
objj_msgSend(_99,"setKeyEquivalent:",_keyEquivalent);
objj_msgSend(_99,"setKeyEquivalentModifierMask:",_keyEquivalentModifierMask);
objj_msgSend(_99,"setMnemonicLocation:",_mnemonicLocation);
objj_msgSend(_99,"setAlternate:",_isAlternate);
objj_msgSend(_99,"setIndentationLevel:",_indentationLevel);
objj_msgSend(_99,"setToolTip:",_toolTip);
objj_msgSend(_99,"setRepresentedObject:",_representedObject);
return _99;
}
}),new objj_method(sel_getUid("mutableCopy"),function(_9a,_9b){
with(_9a){
return objj_msgSend(_9a,"copy");
}
}),new objj_method(sel_getUid("_menuItemView"),function(_9c,_9d){
with(_9c){
if(!_menuItemView){
_menuItemView=objj_msgSend(objj_msgSend(_CPMenuItemView,"alloc"),"initWithFrame:forMenuItem:",CGRectMakeZero(),_9c);
}
return _menuItemView;
}
}),new objj_method(sel_getUid("_isSelectable"),function(_9e,_9f){
with(_9e){
return !objj_msgSend(_9e,"submenu")||objj_msgSend(_9e,"action")!==sel_getUid("submenuAction:")||objj_msgSend(_9e,"target")!==objj_msgSend(_9e,"menu");
}
}),new objj_method(sel_getUid("_isMenuBarButton"),function(_a0,_a1){
with(_a0){
return !objj_msgSend(_a0,"submenu")&&objj_msgSend(_a0,"menu")===objj_msgSend(CPApp,"mainMenu");
}
}),new objj_method(sel_getUid("description"),function(_a2,_a3){
with(_a2){
return objj_msgSendSuper({receiver:_a2,super_class:objj_getClass("CPMenuItem").super_class},"description")+" target: "+objj_msgSend(_a2,"target")+" action: "+CPStringFromSelector(objj_msgSend(_a2,"action"));
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("separatorItem"),function(_a4,_a5){
with(_a4){
var _a6=objj_msgSend(objj_msgSend(_a4,"alloc"),"initWithTitle:action:keyEquivalent:","",nil,nil);
_a6._isSeparator=YES;
return _a6;
}
})]);
var _a7="CPMenuItemIsSeparatorKey",_a8="CPMenuItemTitleKey",_a9="CPMenuItemTargetKey",_aa="CPMenuItemActionKey",_ab="CPMenuItemIsEnabledKey",_ac="CPMenuItemIsHiddenKey",_ad="CPMenuItemTagKey",_ae="CPMenuItemStateKey",_af="CPMenuItemImageKey",_b0="CPMenuItemAlternateImageKey",_b1="CPMenuItemSubmenuKey",_b2="CPMenuItemMenuKey",_b3="CPMenuItemKeyEquivalentKey",_b4="CPMenuItemKeyEquivalentModifierMaskKey",_b5="CPMenuItemIndentationLevelKey",_b6="CPMenuItemRepresentedObjectKey",_b7="CPMenuItemViewKey";
var _1=objj_getClass("CPMenuItem");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPMenuItem\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_b8,_b9,_ba){
with(_b8){
_b8=objj_msgSendSuper({receiver:_b8,super_class:objj_getClass("CPMenuItem").super_class},"init");
if(_b8){
_changeCount=0;
_isSeparator=objj_msgSend(_ba,"containsValueForKey:",_a7)&&objj_msgSend(_ba,"decodeBoolForKey:",_a7);
_title=objj_msgSend(_ba,"decodeObjectForKey:",_a8);
_target=objj_msgSend(_ba,"decodeObjectForKey:",_a9);
_action=objj_msgSend(_ba,"decodeObjectForKey:",_aa);
_isEnabled=objj_msgSend(_ba,"containsValueForKey:",(_ab))?objj_msgSend(_ba,"decodeObjectForKey:",(_ab)):(YES);
_isHidden=objj_msgSend(_ba,"containsValueForKey:",(_ac))?objj_msgSend(_ba,"decodeObjectForKey:",(_ac)):(NO);
_tag=objj_msgSend(_ba,"containsValueForKey:",(_ad))?objj_msgSend(_ba,"decodeObjectForKey:",(_ad)):(0);
_state=objj_msgSend(_ba,"containsValueForKey:",(_ae))?objj_msgSend(_ba,"decodeObjectForKey:",(_ae)):(CPOffState);
_image=objj_msgSend(_ba,"containsValueForKey:",(_af))?objj_msgSend(_ba,"decodeObjectForKey:",(_af)):(nil);
_alternateImage=objj_msgSend(_ba,"containsValueForKey:",(_b0))?objj_msgSend(_ba,"decodeObjectForKey:",(_b0)):(nil);
_menu=objj_msgSend(_ba,"containsValueForKey:",(_b2))?objj_msgSend(_ba,"decodeObjectForKey:",(_b2)):(nil);
objj_msgSend(_b8,"setSubmenu:",objj_msgSend(_ba,"containsValueForKey:",(_b1))?objj_msgSend(_ba,"decodeObjectForKey:",(_b1)):(nil));
_keyEquivalent=objj_msgSend(_ba,"decodeObjectForKey:",_b3)||"";
_keyEquivalentModifierMask=objj_msgSend(_ba,"decodeObjectForKey:",_b4)||0;
objj_msgSend(_b8,"setIndentationLevel:",objj_msgSend(_ba,"decodeIntForKey:",_b5)||0);
_representedObject=objj_msgSend(_ba,"containsValueForKey:",(_b6))?objj_msgSend(_ba,"decodeObjectForKey:",(_b6)):(nil);
_view=objj_msgSend(_ba,"containsValueForKey:",(_b7))?objj_msgSend(_ba,"decodeObjectForKey:",(_b7)):(nil);
}
return _b8;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_bb,_bc,_bd){
with(_bb){
if(_isSeparator){
objj_msgSend(_bd,"encodeBool:forKey:",_isSeparator,_a7);
}
objj_msgSend(_bd,"encodeObject:forKey:",_title,_a8);
objj_msgSend(_bd,"encodeObject:forKey:",_target,_a9);
objj_msgSend(_bd,"encodeObject:forKey:",_action,_aa);
if((_isEnabled)!==(YES)){
objj_msgSend(_bd,"encodeObject:forKey:",(_isEnabled),(_ab));
}
if((_isHidden)!==(NO)){
objj_msgSend(_bd,"encodeObject:forKey:",(_isHidden),(_ac));
}
if((_tag)!==(0)){
objj_msgSend(_bd,"encodeObject:forKey:",(_tag),(_ad));
}
if((_state)!==(CPOffState)){
objj_msgSend(_bd,"encodeObject:forKey:",(_state),(_ae));
}
if((_image)!==(nil)){
objj_msgSend(_bd,"encodeObject:forKey:",(_image),(_af));
}
if((_alternateImage)!==(nil)){
objj_msgSend(_bd,"encodeObject:forKey:",(_alternateImage),(_b0));
}
if((_submenu)!==(nil)){
objj_msgSend(_bd,"encodeObject:forKey:",(_submenu),(_b1));
}
if((_menu)!==(nil)){
objj_msgSend(_bd,"encodeObject:forKey:",(_menu),(_b2));
}
if(_keyEquivalent&&_keyEquivalent.length){
objj_msgSend(_bd,"encodeObject:forKey:",_keyEquivalent,_b3);
}
if(_keyEquivalentModifierMask){
objj_msgSend(_bd,"encodeObject:forKey:",_keyEquivalentModifierMask,_b4);
}
if(_indentationLevel>0){
objj_msgSend(_bd,"encodeInt:forKey:",_indentationLevel,_b5);
}
if((_representedObject)!==(nil)){
objj_msgSend(_bd,"encodeObject:forKey:",(_representedObject),(_b6));
}
if((_view)!==(nil)){
objj_msgSend(_bd,"encodeObject:forKey:",(_view),(_b7));
}
}
})]);
