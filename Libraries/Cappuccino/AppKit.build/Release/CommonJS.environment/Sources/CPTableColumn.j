@STATIC;1.0;I;25;Foundation/CPDictionary.jI;21;Foundation/CPObject.jI;23;Foundation/CPIndexSet.jI;29;Foundation/CPSortDescriptor.jI;21;Foundation/CPString.ji;19;CPTableHeaderView.jt;14858;
objj_executeFile("Foundation/CPDictionary.j",NO);
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("Foundation/CPIndexSet.j",NO);
objj_executeFile("Foundation/CPSortDescriptor.j",NO);
objj_executeFile("Foundation/CPString.j",NO);
objj_executeFile("CPTableHeaderView.j",YES);
CPTableColumnNoResizing=0;
CPTableColumnAutoresizingMask=1<<0;
CPTableColumnUserResizingMask=1<<1;
var _1=objj_allocateClassPair(CPObject,"CPTableColumn"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_tableView"),new objj_ivar("_headerView"),new objj_ivar("_dataView"),new objj_ivar("_dataViewData"),new objj_ivar("_width"),new objj_ivar("_minWidth"),new objj_ivar("_maxWidth"),new objj_ivar("_resizingMask"),new objj_ivar("_identifier"),new objj_ivar("_isEditable"),new objj_ivar("_sortDescriptorPrototype"),new objj_ivar("_isHidden"),new objj_ivar("_headerToolTip"),new objj_ivar("_disableResizingPosting")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("disableResizingPosting"),function(_3,_4){
with(_3){
return _disableResizingPosting;
}
}),new objj_method(sel_getUid("setDisableResizingPosting:"),function(_5,_6,_7){
with(_5){
_disableResizingPosting=_7;
}
}),new objj_method(sel_getUid("init"),function(_8,_9){
with(_8){
return objj_msgSend(_8,"initWithIdentifier:","");
}
}),new objj_method(sel_getUid("initWithIdentifier:"),function(_a,_b,_c){
with(_a){
_a=objj_msgSendSuper({receiver:_a,super_class:objj_getClass("CPTableColumn").super_class},"init");
if(_a){
_dataViewData={};
_width=100;
_minWidth=10;
_maxWidth=1000000;
_resizingMask=CPTableColumnAutoresizingMask|CPTableColumnUserResizingMask;
_disableResizingPosting=NO;
objj_msgSend(_a,"setIdentifier:",_c);
var _d=objj_msgSend(objj_msgSend(_CPTableColumnHeaderView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_a,"setHeaderView:",_d);
objj_msgSend(_a,"setDataView:",objj_msgSend(CPTextField,"new"));
}
return _a;
}
}),new objj_method(sel_getUid("setTableView:"),function(_e,_f,_10){
with(_e){
_tableView=_10;
}
}),new objj_method(sel_getUid("tableView"),function(_11,_12){
with(_11){
return _tableView;
}
}),new objj_method(sel_getUid("_tryToResizeToWidth:"),function(_13,_14,_15){
with(_13){
var min=objj_msgSend(_13,"minWidth"),max=objj_msgSend(_13,"maxWidth"),_16=MIN(MAX(_15,min),max);
objj_msgSend(_13,"setWidth:",_16);
return _16-_15;
}
}),new objj_method(sel_getUid("setWidth:"),function(_17,_18,_19){
with(_17){
_19=+_19;
if(_width===_19){
return;
}
var _1a=MIN(MAX(_19,objj_msgSend(_17,"minWidth")),objj_msgSend(_17,"maxWidth"));
if(_width===_1a){
return;
}
var _1b=_width;
_width=_1a;
var _1c=objj_msgSend(_17,"tableView");
if(_1c){
var _1d=objj_msgSend(objj_msgSend(_1c,"tableColumns"),"indexOfObjectIdenticalTo:",_17),_1e=_1c._dirtyTableColumnRangeIndex;
if(_1e<0){
_1c._dirtyTableColumnRangeIndex=_1d;
}else{
_1c._dirtyTableColumnRangeIndex=MIN(_1d,_1c._dirtyTableColumnRangeIndex);
}
var _1f=_1c._exposedRows,_20=objj_msgSend(CPIndexSet,"indexSetWithIndexesInRange:",CPMakeRange(_1d,objj_msgSend(_1c._exposedColumns,"lastIndex")-_1d+1));
objj_msgSend(_1c,"_layoutDataViewsInRows:columns:",_1f,_20);
objj_msgSend(_1c,"tile");
if(!_disableResizingPosting){
objj_msgSend(_17,"_postDidResizeNotificationWithOldWidth:",_1b);
}
}
}
}),new objj_method(sel_getUid("width"),function(_21,_22){
with(_21){
return _width;
}
}),new objj_method(sel_getUid("setMinWidth:"),function(_23,_24,_25){
with(_23){
_25=+_25;
if(_minWidth===_25){
return;
}
_minWidth=_25;
var _26=objj_msgSend(_23,"width"),_27=MAX(_26,objj_msgSend(_23,"minWidth"));
if(_26!==_27){
objj_msgSend(_23,"setWidth:",_27);
}
}
}),new objj_method(sel_getUid("minWidth"),function(_28,_29){
with(_28){
return _minWidth;
}
}),new objj_method(sel_getUid("setMaxWidth:"),function(_2a,_2b,_2c){
with(_2a){
_2c=+_2c;
if(_maxWidth===_2c){
return;
}
_maxWidth=_2c;
var _2d=objj_msgSend(_2a,"width"),_2e=MIN(_2d,objj_msgSend(_2a,"maxWidth"));
if(_2d!==_2e){
objj_msgSend(_2a,"setWidth:",_2e);
}
}
}),new objj_method(sel_getUid("maxWidth"),function(_2f,_30){
with(_2f){
return _maxWidth;
}
}),new objj_method(sel_getUid("setResizingMask:"),function(_31,_32,_33){
with(_31){
_resizingMask=_33;
}
}),new objj_method(sel_getUid("resizingMask"),function(_34,_35){
with(_34){
return _resizingMask;
}
}),new objj_method(sel_getUid("sizeToFit"),function(_36,_37){
with(_36){
var _38=(objj_msgSend(_headerView,"frame").size.width);
if(_38<objj_msgSend(_36,"minWidth")){
objj_msgSend(_36,"setMinWidth:",_38);
}else{
if(_38>objj_msgSend(_36,"maxWidth")){
objj_msgSend(_36,"setMaxWidth:",_38);
}
}
if(_width!==_38){
objj_msgSend(_36,"setWidth:",_38);
}
}
}),new objj_method(sel_getUid("setHeaderView:"),function(_39,_3a,_3b){
with(_39){
if(!_3b){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"Attempt to set nil header view on "+objj_msgSend(_39,"description"));
}
_headerView=_3b;
var _3c=objj_msgSend(_tableView,"headerView");
objj_msgSend(_3c,"setNeedsLayout");
objj_msgSend(_3c,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("headerView"),function(_3d,_3e){
with(_3d){
return _headerView;
}
}),new objj_method(sel_getUid("setDataView:"),function(_3f,_40,_41){
with(_3f){
if(_dataView){
_dataViewData[objj_msgSend(_dataView,"UID")]=nil;
}
objj_msgSend(_41,"setThemeState:",CPThemeStateTableDataView);
_dataView=_41;
_dataViewData[objj_msgSend(_41,"UID")]=objj_msgSend(CPKeyedArchiver,"archivedDataWithRootObject:",_41);
}
}),new objj_method(sel_getUid("dataView"),function(_42,_43){
with(_42){
return _dataView;
}
}),new objj_method(sel_getUid("dataViewForRow:"),function(_44,_45,_46){
with(_44){
return objj_msgSend(_44,"dataView");
}
}),new objj_method(sel_getUid("_newDataViewForRow:"),function(_47,_48,_49){
with(_47){
var _4a=objj_msgSend(_47,"dataViewForRow:",_49),_4b=objj_msgSend(_4a,"UID");
var x=objj_msgSend(_47,"tableView")._cachedDataViews[_4b];
if(x&&x.length){
return x.pop();
}
if(!_dataViewData[_4b]){
_dataViewData[_4b]=objj_msgSend(CPKeyedArchiver,"archivedDataWithRootObject:",_4a);
}
var _4c=objj_msgSend(CPKeyedUnarchiver,"unarchiveObjectWithData:",_dataViewData[_4b]);
_4c.identifier=_4b;
objj_msgSend(_4c,"setAutoresizingMask:",CPViewNotSizable);
return _4c;
}
}),new objj_method(sel_getUid("setIdentifier:"),function(_4d,_4e,_4f){
with(_4d){
_identifier=_4f;
}
}),new objj_method(sel_getUid("identifier"),function(_50,_51){
with(_50){
return _identifier;
}
}),new objj_method(sel_getUid("setEditable:"),function(_52,_53,_54){
with(_52){
_isEditable=_54;
}
}),new objj_method(sel_getUid("isEditable"),function(_55,_56){
with(_55){
return _isEditable;
}
}),new objj_method(sel_getUid("setSortDescriptorPrototype:"),function(_57,_58,_59){
with(_57){
_sortDescriptorPrototype=_59;
}
}),new objj_method(sel_getUid("sortDescriptorPrototype"),function(_5a,_5b){
with(_5a){
return _sortDescriptorPrototype;
}
}),new objj_method(sel_getUid("setHidden:"),function(_5c,_5d,_5e){
with(_5c){
_5e=!!_5e;
if(_isHidden===_5e){
return;
}
_isHidden=_5e;
objj_msgSend(objj_msgSend(_5c,"headerView"),"setHidden:",_5e);
objj_msgSend(objj_msgSend(_5c,"tableView"),"_tableColumnVisibilityDidChange:",_5c);
}
}),new objj_method(sel_getUid("isHidden"),function(_5f,_60){
with(_5f){
return _isHidden;
}
}),new objj_method(sel_getUid("setHeaderToolTip:"),function(_61,_62,_63){
with(_61){
_headerToolTip=_63;
}
}),new objj_method(sel_getUid("headerToolTip"),function(_64,_65){
with(_64){
return _headerToolTip;
}
}),new objj_method(sel_getUid("_postDidResizeNotificationWithOldWidth:"),function(_66,_67,_68){
with(_66){
objj_msgSend(objj_msgSend(_66,"tableView"),"_didResizeTableColumn:",_66);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPTableViewColumnDidResizeNotification,objj_msgSend(_66,"tableView"),objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_66,_68],["CPTableColumn","CPOldWidth"]));
}
})]);
var _1=objj_allocateClassPair(CPBinder,"CPTableColumnValueBinder"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("setValueFor:"),function(_69,_6a,_6b){
with(_69){
var _6c=objj_msgSend(_source,"tableView"),_6d=objj_msgSend(objj_msgSend(_6c,"tableColumns"),"indexOfObjectIdenticalTo:",_source),_6e=objj_msgSend(CPIndexSet,"indexSetWithIndexesInRange:",CPMakeRange(0,objj_msgSend(_6c,"numberOfRows"))),_6f=objj_msgSend(CPIndexSet,"indexSetWithIndex:",_6d);
objj_msgSend(_6c,"reloadDataForRowIndexes:columnIndexes:",_6e,_6f);
}
})]);
var _1=objj_getClass("CPTableColumn");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPTableColumn\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("bind:toObject:withKeyPath:options:"),function(_70,_71,_72,_73,_74,_75){
with(_70){
objj_msgSendSuper({receiver:_70,super_class:objj_getClass("CPTableColumn").super_class},"bind:toObject:withKeyPath:options:",_72,_73,_74,_75);
if(!objj_msgSend(_72,"isEqual:","someListOfExceptedBindings(notAcceptedBindings)")){
objj_msgSend(objj_msgSend(_70,"tableView"),"_establishBindingsIfUnbound:",_73);
}
}
}),new objj_method(sel_getUid("_prepareDataView:forRow:"),function(_76,_77,_78,_79){
with(_76){
var _7a=objj_msgSend(CPBinder,"allBindingsForObject:",_76),_7b=objj_msgSend(_7a,"allKeys");
for(var i=0,_7c=objj_msgSend(_7b,"count");i<_7c;i++){
var _7d=_7b[i],_7e=objj_msgSend(_78,"_replacementKeyPathForBinding:",_7d),_7f=objj_msgSend(_7a,"objectForKey:",_7d),_80=_7f._info,_81=objj_msgSend(_80,"objectForKey:",CPObservedObjectKey),_82=objj_msgSend(_80,"objectForKey:",CPObservedKeyPathKey),_83=_82.lastIndexOf("."),_84;
if(_83===CPNotFound){
_84=objj_msgSend(objj_msgSend(_81,"valueForKeyPath:",_82),"objectAtIndex:",_79);
}else{
var _85=_82.substring(0,_83),_86=_82.substring(_83+1),_87=objj_msgSend(_81,"valueForKeyPath:",_85);
if(objj_msgSend(_87,"isKindOfClass:",CPArray)){
_84=objj_msgSend(objj_msgSend(_87,"objectAtIndex:",_79),"valueForKeyPath:",_86);
}else{
_84=objj_msgSend(objj_msgSend(_87,"valueForKeyPath:",_86),"objectAtIndex:",_79);
}
}
_84=objj_msgSend(_7f,"transformValue:withOptions:",_84,objj_msgSend(_80,"objectForKey:",CPOptionsKey));
objj_msgSend(_78,"setValue:forKey:",_84,"objectValue");
}
}
}),new objj_method(sel_getUid("_reverseSetDataView:forRow:"),function(_88,_89,_8a,_8b){
with(_88){
var _8c=objj_msgSend(CPBinder,"allBindingsForObject:",_88),_8d=objj_msgSend(_8c,"allKeys"),_8e=objj_msgSend(_8a,"valueForKey:","objectValue");
for(var i=0,_8f=objj_msgSend(_8d,"count");i<_8f;i++){
var _90=_8d[i],_91=objj_msgSend(_8a,"_replacementKeyPathForBinding:",_90),_92=objj_msgSend(_8c,"objectForKey:",_90),_93=_92._info,_94=objj_msgSend(_93,"objectForKey:",CPObservedObjectKey),_95=objj_msgSend(_93,"objectForKey:",CPObservedKeyPathKey),_96=_95.lastIndexOf(".");
if(_96===CPNotFound){
objj_msgSend(objj_msgSend(_94,"valueForKeyPath:",_95),"replaceObjectAtIndex:withObject:",_8b,_8e);
}else{
var _97=_95.substring(0,_96),_98=_95.substring(_96+1),_99=objj_msgSend(_94,"valueForKeyPath:",_97);
if(objj_msgSend(_99,"isKindOfClass:",CPArray)){
objj_msgSend(objj_msgSend(_99,"objectAtIndex:",_8b),"setValue:forKeyPath:",_8e,_98);
}else{
objj_msgSend(objj_msgSend(_99,"valueForKeyPath:",_98),"replaceObjectAtIndex:withObject:",_8b,_8e);
}
}
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("_binderClassForBinding:"),function(_9a,_9b,_9c){
with(_9a){
if(_9c==CPValueBinding){
return objj_msgSend(CPTableColumnValueBinder,"class");
}
return objj_msgSendSuper({receiver:_9a,super_class:objj_getMetaClass("CPTableColumn").super_class},"_binderClassForBinding:",_9c);
}
})]);
var _9d="CPTableColumnIdentifierKey",_9e="CPTableColumnHeaderViewKey",_9f="CPTableColumnDataViewKey",_a0="CPTableColumnWidthKey",_a1="CPTableColumnMinWidthKey",_a2="CPTableColumnMaxWidthKey",_a3="CPTableColumnResizingMaskKey",_a4="CPTableColumnIsHiddenKey",_a5="CPSortDescriptorPrototypeKey",_a6="CPTableColumnIsEditableKey";
var _1=objj_getClass("CPTableColumn");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPTableColumn\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_a7,_a8,_a9){
with(_a7){
_a7=objj_msgSendSuper({receiver:_a7,super_class:objj_getClass("CPTableColumn").super_class},"init");
if(_a7){
_dataViewData={};
_width=objj_msgSend(_a9,"decodeFloatForKey:",_a0);
_minWidth=objj_msgSend(_a9,"decodeFloatForKey:",_a1);
_maxWidth=objj_msgSend(_a9,"decodeFloatForKey:",_a2);
objj_msgSend(_a7,"setIdentifier:",objj_msgSend(_a9,"decodeObjectForKey:",_9d));
objj_msgSend(_a7,"setHeaderView:",objj_msgSend(_a9,"decodeObjectForKey:",_9e));
objj_msgSend(_a7,"setDataView:",objj_msgSend(_a9,"decodeObjectForKey:",_9f));
objj_msgSend(_a7,"setHeaderView:",objj_msgSend(_a9,"decodeObjectForKey:",_9e));
_resizingMask=objj_msgSend(_a9,"decodeIntForKey:",_a3);
_isHidden=objj_msgSend(_a9,"decodeBoolForKey:",_a4);
_isEditable=objj_msgSend(_a9,"decodeBoolForKey:",_a6);
_sortDescriptorPrototype=objj_msgSend(_a9,"decodeObjectForKey:",_a5);
}
return _a7;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_aa,_ab,_ac){
with(_aa){
objj_msgSend(_ac,"encodeObject:forKey:",_identifier,_9d);
objj_msgSend(_ac,"encodeObject:forKey:",_width,_a0);
objj_msgSend(_ac,"encodeObject:forKey:",_minWidth,_a1);
objj_msgSend(_ac,"encodeObject:forKey:",_maxWidth,_a2);
objj_msgSend(_ac,"encodeObject:forKey:",_headerView,_9e);
objj_msgSend(_ac,"encodeObject:forKey:",_dataView,_9f);
objj_msgSend(_ac,"encodeObject:forKey:",_resizingMask,_a3);
objj_msgSend(_ac,"encodeBool:forKey:",_isHidden,_a4);
objj_msgSend(_ac,"encodeBool:forKey:",_isEditable,_a6);
objj_msgSend(_ac,"encodeObject:forKey:",_sortDescriptorPrototype,_a5);
}
})]);
var _1=objj_getClass("CPTableColumn");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPTableColumn\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("setHeaderCell:"),function(_ad,_ae,_af){
with(_ad){
objj_msgSend(CPException,"raise:reason:",CPUnsupportedMethodException,"setHeaderCell: is not supported. Use -setHeaderView:aView instead.");
}
}),new objj_method(sel_getUid("headerCell"),function(_b0,_b1){
with(_b0){
objj_msgSend(CPException,"raise:reason:",CPUnsupportedMethodException,"headCell is not supported. Use -headerView instead.");
}
}),new objj_method(sel_getUid("setDataCell:"),function(_b2,_b3,_b4){
with(_b2){
objj_msgSend(CPException,"raise:reason:",CPUnsupportedMethodException,"setDataCell: is not supported. Use -setDataView:aView instead.");
}
}),new objj_method(sel_getUid("dataCell"),function(_b5,_b6){
with(_b5){
objj_msgSend(CPException,"raise:reason:",CPUnsupportedMethodException,"dataCell is not supported. Use -dataView instead.");
}
}),new objj_method(sel_getUid("dataCellForRow:"),function(_b7,_b8,row){
with(_b7){
objj_msgSend(CPException,"raise:reason:",CPUnsupportedMethodException,"dataCellForRow: is not supported. Use -dataViewForRow:row instead.");
}
})]);
