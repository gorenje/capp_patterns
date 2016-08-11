@STATIC;1.0;i;9;CPArray.ji;10;CPObject.ji;9;CPRange.jt;12185;
objj_executeFile("CPArray.j",YES);
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPRange.j",YES);
var _1=objj_allocateClassPair(CPObject,"CPIndexSet"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_count"),new objj_ivar("_ranges")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("init"),function(_3,_4){
with(_3){
return objj_msgSend(_3,"initWithIndexesInRange:",{location:(0),length:0});
}
}),new objj_method(sel_getUid("initWithIndex:"),function(_5,_6,_7){
with(_5){
return objj_msgSend(_5,"initWithIndexesInRange:",{location:(_7),length:1});
}
}),new objj_method(sel_getUid("initWithIndexesInRange:"),function(_8,_9,_a){
with(_8){
_8=objj_msgSendSuper({receiver:_8,super_class:objj_getClass("CPIndexSet").super_class},"init");
if(_8){
_count=MAX(0,_a.length);
if(_count>0){
_ranges=[_a];
}else{
_ranges=[];
}
}
return _8;
}
}),new objj_method(sel_getUid("initWithIndexSet:"),function(_b,_c,_d){
with(_b){
_b=objj_msgSendSuper({receiver:_b,super_class:objj_getClass("CPIndexSet").super_class},"init");
if(_b){
_count=objj_msgSend(_d,"count");
_ranges=[];
var _e=_d._ranges,_f=_e.length;
while(_f--){
_ranges[_f]={location:(_e[_f]).location,length:(_e[_f]).length};
}
}
return _b;
}
}),new objj_method(sel_getUid("isEqual:"),function(_10,_11,_12){
with(_10){
if(_10===_12){
return YES;
}
if(!_12||!objj_msgSend(_12,"isKindOfClass:",objj_msgSend(CPIndexSet,"class"))){
return NO;
}
return objj_msgSend(_10,"isEqualToIndexSet:",_12);
}
}),new objj_method(sel_getUid("isEqualToIndexSet:"),function(_13,_14,_15){
with(_13){
if(!_15){
return NO;
}
if(_13===_15){
return YES;
}
var _16=_ranges.length,_17=_15._ranges;
if(_16!==_17.length||_count!==_15._count){
return NO;
}
while(_16--){
if(!CPEqualRanges(_ranges[_16],_17[_16])){
return NO;
}
}
return YES;
}
}),new objj_method(sel_getUid("isEqual:"),function(_18,_19,_1a){
with(_18){
return _18===_1a||objj_msgSend(_1a,"isKindOfClass:",objj_msgSend(_18,"class"))&&objj_msgSend(_18,"isEqualToIndexSet:",_1a);
}
}),new objj_method(sel_getUid("containsIndex:"),function(_1b,_1c,_1d){
with(_1b){
return _1e(_ranges,_1d)!==CPNotFound;
}
}),new objj_method(sel_getUid("containsIndexesInRange:"),function(_1f,_20,_21){
with(_1f){
if(_21.length<=0){
return NO;
}
if(_count<_21.length){
return NO;
}
var _22=_1e(_ranges,_21.location);
if(_22===CPNotFound){
return NO;
}
var _23=_ranges[_22];
return CPIntersectionRange(_23,_21).length===_21.length;
}
}),new objj_method(sel_getUid("containsIndexes:"),function(_24,_25,_26){
with(_24){
var _27=_26._count;
if(_27<=0){
return YES;
}
if(_count<_27){
return NO;
}
var _28=_26._ranges,_29=_28.length;
while(_29--){
if(!objj_msgSend(_24,"containsIndexesInRange:",_28[_29])){
return NO;
}
}
return YES;
}
}),new objj_method(sel_getUid("intersectsIndexesInRange:"),function(_2a,_2b,_2c){
with(_2a){
if(_count<=0){
return NO;
}
var _2d=_2e(_ranges,_2c.location);
if(FLOOR(_2d)===_2d){
return YES;
}
var _2f=_2e(_ranges,((_2c).location+(_2c).length)-1);
if(FLOOR(_2f)===_2f){
return YES;
}
return _2d!==_2f;
}
}),new objj_method(sel_getUid("count"),function(_30,_31){
with(_30){
return _count;
}
}),new objj_method(sel_getUid("firstIndex"),function(_32,_33){
with(_32){
if(_count>0){
return _ranges[0].location;
}
return CPNotFound;
}
}),new objj_method(sel_getUid("lastIndex"),function(_34,_35){
with(_34){
if(_count>0){
return ((_ranges[_ranges.length-1]).location+(_ranges[_ranges.length-1]).length)-1;
}
return CPNotFound;
}
}),new objj_method(sel_getUid("indexGreaterThanIndex:"),function(_36,_37,_38){
with(_36){
++_38;
var _39=_2e(_ranges,_38);
if(_39===CPNotFound){
return CPNotFound;
}
_39=CEIL(_39);
if(_39>=_ranges.length){
return CPNotFound;
}
var _3a=_ranges[_39];
if(CPLocationInRange(_38,_3a)){
return _38;
}
return _3a.location;
}
}),new objj_method(sel_getUid("indexLessThanIndex:"),function(_3b,_3c,_3d){
with(_3b){
--_3d;
var _3e=_2e(_ranges,_3d);
if(_3e===CPNotFound){
return CPNotFound;
}
_3e=FLOOR(_3e);
if(_3e<0){
return CPNotFound;
}
var _3f=_ranges[_3e];
if(CPLocationInRange(_3d,_3f)){
return _3d;
}
return ((_3f).location+(_3f).length)-1;
}
}),new objj_method(sel_getUid("indexGreaterThanOrEqualToIndex:"),function(_40,_41,_42){
with(_40){
return objj_msgSend(_40,"indexGreaterThanIndex:",_42-1);
}
}),new objj_method(sel_getUid("indexLessThanOrEqualToIndex:"),function(_43,_44,_45){
with(_43){
return objj_msgSend(_43,"indexLessThanIndex:",_45+1);
}
}),new objj_method(sel_getUid("getIndexes:maxCount:inIndexRange:"),function(_46,_47,_48,_49,_4a){
with(_46){
if(!_count||_49===0||_4a&&!_4a.length){
if(_4a){
_4a.length=0;
}
return 0;
}
var _4b=0;
if(_4a){
var _4c=_4a.location,_4d=((_4a).location+(_4a).length)-1,_4e=CEIL(_2e(_ranges,_4c)),_4f=FLOOR(_2e(_ranges,_4d));
}else{
var _4c=objj_msgSend(_46,"firstIndex"),_4d=objj_msgSend(_46,"lastIndex"),_4e=0,_4f=_ranges.length-1;
}
while(_4e<=_4f){
var _50=_ranges[_4e],_51=MAX(_4c,_50.location),_52=MIN(_4d+1,((_50).location+(_50).length));
for(;_51<_52;++_51){
_48[_4b++]=_51;
if(_4b===_49){
if(_4a){
_4a.location=_51+1;
_4a.length=_4d+1-_51-1;
}
return _49;
}
}
++_4e;
}
if(_4a){
_4a.location=CPNotFound;
_4a.length=0;
}
return _4b;
}
}),new objj_method(sel_getUid("description"),function(_53,_54){
with(_53){
var _55=objj_msgSendSuper({receiver:_53,super_class:objj_getClass("CPIndexSet").super_class},"description");
if(_count){
var _56=0,_57=_ranges.length;
_55+="[number of indexes: "+_count+" (in "+_57;
if(_57===1){
_55+=" range), indexes: (";
}else{
_55+=" ranges), indexes: (";
}
for(;_56<_57;++_56){
var _58=_ranges[_56];
_55+=_58.location;
if(_58.length>1){
_55+="-"+(CPMaxRange(_58)-1);
}
if(_56+1<_57){
_55+=" ";
}
}
_55+=")]";
}else{
_55+="(no indexes)";
}
return _55;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("indexSet"),function(_59,_5a){
with(_59){
return objj_msgSend(objj_msgSend(_59,"alloc"),"init");
}
}),new objj_method(sel_getUid("indexSetWithIndex:"),function(_5b,_5c,_5d){
with(_5b){
return objj_msgSend(objj_msgSend(_5b,"alloc"),"initWithIndex:",_5d);
}
}),new objj_method(sel_getUid("indexSetWithIndexesInRange:"),function(_5e,_5f,_60){
with(_5e){
return objj_msgSend(objj_msgSend(_5e,"alloc"),"initWithIndexesInRange:",_60);
}
})]);
var _1=objj_getClass("CPIndexSet");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPIndexSet\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("addIndex:"),function(_61,_62,_63){
with(_61){
objj_msgSend(_61,"addIndexesInRange:",{location:(_63),length:1});
}
}),new objj_method(sel_getUid("addIndexes:"),function(_64,_65,_66){
with(_64){
var _67=_66._ranges,_68=_67.length;
while(_68--){
objj_msgSend(_64,"addIndexesInRange:",_67[_68]);
}
}
}),new objj_method(sel_getUid("addIndexesInRange:"),function(_69,_6a,_6b){
with(_69){
if(_6b.length<=0){
return;
}
if(_count<=0){
_count=_6b.length;
_ranges=[_6b];
return;
}
var _6c=_ranges.length,_6d=_2e(_ranges,_6b.location-1),_6e=CEIL(_6d);
if(_6e===_6d&&_6e<_6c){
_6b=CPUnionRange(_6b,_ranges[_6e]);
}
var _6f=_2e(_ranges,CPMaxRange(_6b)),_70=FLOOR(_6f);
if(_70===_6f&&_70>=0){
_6b=CPUnionRange(_6b,_ranges[_70]);
}
var _71=_70-_6e+1;
if(_71===_ranges.length){
_ranges=[_6b];
_count=_6b.length;
}else{
if(_71===1){
if(_6e<_ranges.length){
_count-=_ranges[_6e].length;
}
_count+=_6b.length;
_ranges[_6e]=_6b;
}else{
if(_71>0){
var _72=_6e,_73=_6e+_71-1;
for(;_72<=_73;++_72){
_count-=_ranges[_72].length;
}
objj_msgSend(_ranges,"removeObjectsInRange:",{location:(_6e),length:_71});
}
objj_msgSend(_ranges,"insertObject:atIndex:",_6b,_6e);
_count+=_6b.length;
}
}
}
}),new objj_method(sel_getUid("removeIndex:"),function(_74,_75,_76){
with(_74){
objj_msgSend(_74,"removeIndexesInRange:",{location:(_76),length:1});
}
}),new objj_method(sel_getUid("removeIndexes:"),function(_77,_78,_79){
with(_77){
var _7a=_79._ranges,_7b=_7a.length;
while(_7b--){
objj_msgSend(_77,"removeIndexesInRange:",_7a[_7b]);
}
}
}),new objj_method(sel_getUid("removeAllIndexes"),function(_7c,_7d){
with(_7c){
_ranges=[];
_count=0;
}
}),new objj_method(sel_getUid("removeIndexesInRange:"),function(_7e,_7f,_80){
with(_7e){
if(_80.length<=0){
return;
}
if(_count<=0){
return;
}
var _81=_ranges.length,_82=_2e(_ranges,_80.location),_83=CEIL(_82);
if(_82===_83&&_83<_81){
var _84=_ranges[_83];
if(_80.location!==_84.location){
var _85=CPMaxRange(_80),_86=CPMaxRange(_84);
_84.length=_80.location-_84.location;
if(_85<_86){
_count-=_80.length;
objj_msgSend(_ranges,"insertObject:atIndex:",{location:(_85),length:_86-_85},_83+1);
return;
}else{
_count-=_86-_80.location;
_83+=1;
}
}
}
var _87=_2e(_ranges,CPMaxRange(_80)-1),_88=FLOOR(_87);
if(_87===_88&&_88>=0){
var _85=CPMaxRange(_80),_84=_ranges[_88],_86=CPMaxRange(_84);
if(_85!==_86){
_count-=_85-_84.location;
_88-=1;
_84.location=_85;
_84.length=_86-_85;
}
}
var _89=_88-_83+1;
if(_89>0){
var _8a=_83,_8b=_83+_89-1;
for(;_8a<=_8b;++_8a){
_count-=_ranges[_8a].length;
}
objj_msgSend(_ranges,"removeObjectsInRange:",{location:(_83),length:_89});
}
}
}),new objj_method(sel_getUid("shiftIndexesStartingAtIndex:by:"),function(_8c,_8d,_8e,_8f){
with(_8c){
if(!_count||_8f==0){
return;
}
var i=_ranges.length-1,_90=CPMakeRange(CPNotFound,0);
for(;i>=0;--i){
var _91=_ranges[i],_92=CPMaxRange(_91);
if(_8e>=_92){
break;
}
if(_8e>_91.location){
_90=CPMakeRange(_8e+_8f,_92-_8e);
_91.length=_8e-_91.location;
if(_8f>0){
objj_msgSend(_ranges,"insertObject:atIndex:",_90,i+1);
}else{
if(_90.location<0){
_90.length=CPMaxRange(_90);
_90.location=0;
}
}
break;
}
if((_91.location+=_8f)<0){
_count-=_91.length-CPMaxRange(_91);
_91.length=CPMaxRange(_91);
_91.location=0;
}
}
if(_8f<0){
var j=i+1,_93=_ranges.length,_94=[];
for(;j<_93;++j){
objj_msgSend(_94,"addObject:",_ranges[j]);
_count-=_ranges[j].length;
}
if((j=i+1)<_93){
objj_msgSend(_ranges,"removeObjectsInRange:",CPMakeRange(j,_93-j));
for(j=0,_93=_94.length;j<_93;++j){
objj_msgSend(_8c,"addIndexesInRange:",_94[j]);
}
}
if(_90.location!=CPNotFound){
objj_msgSend(_8c,"addIndexesInRange:",_90);
}
}
}
})]);
var _95="CPIndexSetCountKey",_96="CPIndexSetRangeStringsKey";
var _1=objj_getClass("CPIndexSet");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPIndexSet\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_97,_98,_99){
with(_97){
_97=objj_msgSendSuper({receiver:_97,super_class:objj_getClass("CPIndexSet").super_class},"init");
if(_97){
_count=objj_msgSend(_99,"decodeIntForKey:",_95);
_ranges=[];
var _9a=objj_msgSend(_99,"decodeObjectForKey:",_96),_9b=0,_9c=_9a.length;
for(;_9b<_9c;++_9b){
_ranges.push(CPRangeFromString(_9a[_9b]));
}
}
return _97;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_9d,_9e,_9f){
with(_9d){
objj_msgSend(_9f,"encodeInt:forKey:",_count,_95);
var _a0=0,_a1=_ranges.length,_a2=[];
for(;_a0<_a1;++_a0){
_a2[_a0]=CPStringFromRange(_ranges[_a0]);
}
objj_msgSend(_9f,"encodeObject:forKey:",_a2,_96);
}
})]);
var _1=objj_getClass("CPIndexSet");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPIndexSet\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("copy"),function(_a3,_a4){
with(_a3){
return objj_msgSend(objj_msgSend(objj_msgSend(_a3,"class"),"alloc"),"initWithIndexSet:",_a3);
}
}),new objj_method(sel_getUid("mutableCopy"),function(_a5,_a6){
with(_a5){
return objj_msgSend(objj_msgSend(objj_msgSend(_a5,"class"),"alloc"),"initWithIndexSet:",_a5);
}
})]);
var _1=objj_allocateClassPair(CPIndexSet,"CPMutableIndexSet"),_2=_1.isa;
objj_registerClassPair(_1);
var _1e=function(_a7,_a8){
var low=0,_a9=_a7.length-1;
while(low<=_a9){
var _aa=FLOOR(low+(_a9-low)/2),_ab=_a7[_aa];
if(_a8<_ab.location){
_a9=_aa-1;
}else{
if(_a8>=CPMaxRange(_ab)){
low=_aa+1;
}else{
return _aa;
}
}
}
return CPNotFound;
};
var _2e=function(_ac,_ad){
var _ae=_ac.length;
if(_ae<=0){
return CPNotFound;
}
var low=0,_af=_ae*2;
while(low<=_af){
var _b0=FLOOR(low+(_af-low)/2),_b1=_b0/2,_b2=FLOOR(_b1);
if(_b1===_b2){
if(_b2-1>=0&&_ad<CPMaxRange(_ac[_b2-1])){
_af=_b0-1;
}else{
if(_b2<_ae&&_ad>=_ac[_b2].location){
low=_b0+1;
}else{
return _b2-0.5;
}
}
}else{
var _b3=_ac[_b2];
if(_ad<_b3.location){
_af=_b0-1;
}else{
if(_ad>=CPMaxRange(_b3)){
low=_b0+1;
}else{
return _b2;
}
}
}
}
return CPNotFound;
};
