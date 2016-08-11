@STATIC;1.0;I;21;Foundation/CPObject.ji;16;CABackingStore.ji;11;CGContext.ji;12;CGGeometry.jt;21685;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("CABackingStore.j",YES);
objj_executeFile("CGContext.j",YES);
objj_executeFile("CGGeometry.j",YES);
var _1=1,_2=2,_3=4,_4=8,_5=16;
var _6=NO;
var _7=1,_8=2,_9=4,_a=8,_b=16,_c=_9|_7|_8;
var _d=nil;
var _e=objj_allocateClassPair(CPObject,"CALayer"),_f=_e.isa;
class_addIvars(_e,[new objj_ivar("_frame"),new objj_ivar("_bounds"),new objj_ivar("_position"),new objj_ivar("_zPosition"),new objj_ivar("_anchorPoint"),new objj_ivar("_affineTransform"),new objj_ivar("_sublayerTransform"),new objj_ivar("_sublayerTransformForSublayers"),new objj_ivar("_backingStoreFrame"),new objj_ivar("_standardBackingStoreFrame"),new objj_ivar("_hasSublayerTransform"),new objj_ivar("_hasCustomBackingStoreFrame"),new objj_ivar("_opacity"),new objj_ivar("_isHidden"),new objj_ivar("_backgroundColor"),new objj_ivar("_superlayer"),new objj_ivar("_sublayers"),new objj_ivar("_runLoopUpdateMask"),new objj_ivar("_needsDisplayOnBoundsChange"),new objj_ivar("_delegate"),new objj_ivar("_delegateRespondsToDisplayLayerSelector"),new objj_ivar("_delegateRespondsToDrawLayerInContextSelector"),new objj_ivar("_DOMElement"),new objj_ivar("_DOMContentsElement"),new objj_ivar("_contents"),new objj_ivar("_context"),new objj_ivar("_owningView"),new objj_ivar("_transformToLayer"),new objj_ivar("_transformFromLayer")]);
objj_registerClassPair(_e);
class_addMethods(_e,[new objj_method(sel_getUid("init"),function(_10,_11){
with(_10){
_10=objj_msgSendSuper({receiver:_10,super_class:objj_getClass("CALayer").super_class},"init");
if(_10){
_frame=CGRectMakeZero();
_backingStoreFrame=CGRectMakeZero();
_standardBackingStoreFrame=CGRectMakeZero();
_bounds=CGRectMakeZero();
_position=CGPointMakeZero();
_zPosition=0;
_anchorPoint=CGPointMake(0.5,0.5);
_affineTransform=CGAffineTransformMakeIdentity();
_sublayerTransform=CGAffineTransformMakeIdentity();
_transformToLayer=CGAffineTransformMakeIdentity();
_transformFromLayer=CGAffineTransformMakeIdentity();
_opacity=1;
_isHidden=NO;
_masksToBounds=NO;
_sublayers=[];
_DOMElement=document.createElement("div");
_DOMElement.style.overflow="visible";
_DOMElement.style.position="absolute";
_DOMElement.style.visibility="visible";
_DOMElement.style.top="0px";
_DOMElement.style.left="0px";
_DOMElement.style.zIndex=0;
_DOMElement.style.width="0px";
_DOMElement.style.height="0px";
}
return _10;
}
}),new objj_method(sel_getUid("setBounds:"),function(_12,_13,_14){
with(_12){
if(CGRectEqualToRect(_bounds,_14)){
return;
}
var _15=_bounds.origin;
_bounds={origin:{x:_14.origin.x,y:_14.origin.y},size:{width:_14.size.width,height:_14.size.height}};
if(_hasSublayerTransform){
_CALayerUpdateSublayerTransformForSublayers(_12);
}
_CALayerRecalculateGeometry(_12,_1);
}
}),new objj_method(sel_getUid("bounds"),function(_16,_17){
with(_16){
return _bounds;
}
}),new objj_method(sel_getUid("setPosition:"),function(_18,_19,_1a){
with(_18){
if(CGPointEqualToPoint(_position,_1a)){
return;
}
_position={x:_1a.x,y:_1a.y};
_CALayerRecalculateGeometry(_18,_2);
}
}),new objj_method(sel_getUid("position"),function(_1b,_1c){
with(_1b){
return _position;
}
}),new objj_method(sel_getUid("setZPosition:"),function(_1d,_1e,_1f){
with(_1d){
if(_zPosition==_1f){
return;
}
_zPosition=_1f;
objj_msgSend(_1d,"registerRunLoopUpdateWithMask:",_9);
}
}),new objj_method(sel_getUid("setAnchorPoint:"),function(_20,_21,_22){
with(_20){
_22={x:_22.x,y:_22.y};
_22.x=MIN(1,MAX(0,_22.x));
_22.y=MIN(1,MAX(0,_22.y));
if(CGPointEqualToPoint(_anchorPoint,_22)){
return;
}
_anchorPoint=_22;
if(_hasSublayerTransform){
_CALayerUpdateSublayerTransformForSublayers(_20);
}
if(_owningView){
_position=CGPointMake((_bounds.size.width)*_anchorPoint.x,(_bounds.size.height)*_anchorPoint.y);
}
_CALayerRecalculateGeometry(_20,_3);
}
}),new objj_method(sel_getUid("anchorPoint"),function(_23,_24){
with(_23){
return _anchorPoint;
}
}),new objj_method(sel_getUid("setAffineTransform:"),function(_25,_26,_27){
with(_25){
if(CGAffineTransformEqualToTransform(_affineTransform,_27)){
return;
}
_affineTransform={a:_27.a,b:_27.b,c:_27.c,d:_27.d,tx:_27.tx,ty:_27.ty};
_CALayerRecalculateGeometry(_25,_4);
}
}),new objj_method(sel_getUid("affineTransform"),function(_28,_29){
with(_28){
return _affineTransform;
}
}),new objj_method(sel_getUid("setSublayerTransform:"),function(_2a,_2b,_2c){
with(_2a){
if(CGAffineTransformEqualToTransform(_sublayerTransform,_2c)){
return;
}
var _2d=_hasSublayerTransform;
_sublayerTransform={a:_2c.a,b:_2c.b,c:_2c.c,d:_2c.d,tx:_2c.tx,ty:_2c.ty};
_hasSublayerTransform=!(_sublayerTransform.a==1&&_sublayerTransform.b==0&&_sublayerTransform.c==0&&_sublayerTransform.d==1&&_sublayerTransform.tx==0&&_sublayerTransform.ty==0);
if(_hasSublayerTransform){
_CALayerUpdateSublayerTransformForSublayers(_2a);
var _2e=_sublayers.length;
while(_2e--){
_CALayerRecalculateGeometry(_sublayers[_2e],_5);
}
}
}
}),new objj_method(sel_getUid("sublayerTransform"),function(_2f,_30){
with(_2f){
return _sublayerTransform;
}
}),new objj_method(sel_getUid("transformToLayer"),function(_31,_32){
with(_31){
return _transformToLayer;
}
}),new objj_method(sel_getUid("setFrame:"),function(_33,_34,_35){
with(_33){
alert("FIXME IMPLEMENT");
}
}),new objj_method(sel_getUid("frame"),function(_36,_37){
with(_36){
if(!_frame){
_frame=objj_msgSend(_36,"convertRect:toLayer:",_bounds,_superlayer);
}
return _frame;
}
}),new objj_method(sel_getUid("backingStoreFrame"),function(_38,_39){
with(_38){
return _backingStoreFrame;
}
}),new objj_method(sel_getUid("setBackingStoreFrame:"),function(_3a,_3b,_3c){
with(_3a){
_hasCustomBackingStoreFrame=(_3c!=nil);
if(_3c==nil){
_3c=CGRectMakeCopy(_standardBackingStoreFrame);
}else{
if(_superlayer){
_3c=objj_msgSend(_superlayer,"convertRect:toLayer:",_3c,nil);
var _3d=objj_msgSend(_superlayer,"bounds"),_3e=objj_msgSend(_superlayer,"convertRect:toLayer:",_3d,nil);
_3c.origin.x-=(_3e.origin.x);
_3c.origin.y-=(_3e.origin.y);
}else{
_3c=CGRectMakeCopy(_3c);
}
}
if(!CGPointEqualToPoint(_backingStoreFrame.origin,_3c.origin)){
objj_msgSend(_3a,"registerRunLoopUpdateWithMask:",_7);
}
if(!CGSizeEqualToSize(_backingStoreFrame.size,_3c.size)){
objj_msgSend(_3a,"registerRunLoopUpdateWithMask:",_8);
}
_backingStoreFrame=_3c;
}
}),new objj_method(sel_getUid("contents"),function(_3f,_40){
with(_3f){
return _contents;
}
}),new objj_method(sel_getUid("setContents:"),function(_41,_42,_43){
with(_41){
if(_contents==_43){
return;
}
_contents=_43;
objj_msgSend(_41,"composite");
}
}),new objj_method(sel_getUid("composite"),function(_44,_45){
with(_44){
if(_6&&!_contents||!_context){
return;
}
CGContextClearRect(_context,{origin:{x:0,y:0},size:{width:(_backingStoreFrame.size.width),height:(_backingStoreFrame.size.height)}});
var _46;
if(_superlayer){
var _47=_CALayerGetTransform(_superlayer,nil),_48=CGPointApplyAffineTransform(_superlayer._bounds.origin,_47);
_46=CGAffineTransformConcat(_transformFromLayer,_47);
_46.tx-=_48.x;
_46.ty-=_48.y;
}else{
_46=CGAffineTransformCreateCopy(_transformFromLayer);
}
_46.tx-=(_backingStoreFrame.origin.x);
_46.ty-=(_backingStoreFrame.origin.y);
CGContextSaveGState(_context);
CGContextConcatCTM(_context,_46);
if(_6){
_context.drawImage(_contents.buffer,(_bounds.origin.x),(_bounds.origin.y));
}else{
objj_msgSend(_44,"drawInContext:",_context);
}
CGContextRestoreGState(_context);
}
}),new objj_method(sel_getUid("display"),function(_49,_4a){
with(_49){
if(!_context){
_context=CGBitmapGraphicsContextCreate();
_DOMContentsElement=_context.DOMElement;
_DOMContentsElement.style.zIndex=-100;
_DOMContentsElement.style.overflow="hidden";
_DOMContentsElement.style.position="absolute";
_DOMContentsElement.style.visibility="visible";
_DOMContentsElement.width=ROUND((_backingStoreFrame.size.width));
_DOMContentsElement.height=ROUND((_backingStoreFrame.size.height));
_DOMContentsElement.style.top="0px";
_DOMContentsElement.style.left="0px";
_DOMContentsElement.style.width=ROUND((_backingStoreFrame.size.width))+"px";
_DOMContentsElement.style.height=ROUND((_backingStoreFrame.size.height))+"px";
_DOMElement.appendChild(_DOMContentsElement);
}
if(_6){
if(_delegateRespondsToDisplayLayerSelector){
return objj_msgSend(_delegate,"displayInLayer:",_49);
}
if((_backingStoreFrame.size.width)==0||(_backingStoreFrame.size.height)==0){
return;
}
if(!_contents){
_contents=CABackingStoreCreate();
}
CABackingStoreSetSize(_contents,_bounds.size);
objj_msgSend(_49,"drawInContext:",CABackingStoreGetContext(_contents));
}
objj_msgSend(_49,"composite");
}
}),new objj_method(sel_getUid("drawInContext:"),function(_4b,_4c,_4d){
with(_4b){
if(_backgroundColor){
CGContextSetFillColor(_4d,_backgroundColor);
CGContextFillRect(_4d,_bounds);
}
if(_delegateRespondsToDrawLayerInContextSelector){
objj_msgSend(_delegate,"drawLayer:inContext:",_4b,_4d);
}
}
}),new objj_method(sel_getUid("opacity"),function(_4e,_4f){
with(_4e){
return _opacity;
}
}),new objj_method(sel_getUid("setOpacity:"),function(_50,_51,_52){
with(_50){
if(_opacity==_52){
return;
}
_opacity=_52;
_DOMElement.style.opacity=_52;
_DOMElement.style.filter="alpha(opacity="+_52*100+")";
}
}),new objj_method(sel_getUid("setHidden:"),function(_53,_54,_55){
with(_53){
_isHidden=_55;
_DOMElement.style.display=_55?"none":"block";
}
}),new objj_method(sel_getUid("hidden"),function(_56,_57){
with(_56){
return _isHidden;
}
}),new objj_method(sel_getUid("isHidden"),function(_58,_59){
with(_58){
return _isHidden;
}
}),new objj_method(sel_getUid("setMasksToBounds:"),function(_5a,_5b,_5c){
with(_5a){
if(_masksToBounds==_5c){
return;
}
_masksToBounds=_5c;
_DOMElement.style.overflow=_masksToBounds?"hidden":"visible";
}
}),new objj_method(sel_getUid("setBackgroundColor:"),function(_5d,_5e,_5f){
with(_5d){
_backgroundColor=_5f;
objj_msgSend(_5d,"setNeedsDisplay");
}
}),new objj_method(sel_getUid("backgroundColor"),function(_60,_61){
with(_60){
return _backgroundColor;
}
}),new objj_method(sel_getUid("sublayers"),function(_62,_63){
with(_62){
return _sublayers;
}
}),new objj_method(sel_getUid("superlayer"),function(_64,_65){
with(_64){
return _superlayer;
}
}),new objj_method(sel_getUid("addSublayer:"),function(_66,_67,_68){
with(_66){
objj_msgSend(_66,"insertSublayer:atIndex:",_68,_sublayers.length);
return;
if(_DOMContentsElement&&_68._zPosition>_DOMContentsElement.style.zIndex){
_DOMContentsElement.style.zIndex-=100;
}
objj_msgSend(_sublayers,"addObject:",_68);
_DOMElement.appendChild(_68._DOMElement);
}
}),new objj_method(sel_getUid("removeFromSuperlayer"),function(_69,_6a){
with(_69){
if(_owningView){
objj_msgSend(_owningView,"setLayer:",nil);
}
if(!_superlayer){
return;
}
_superlayer._DOMElement.removeChild(_DOMElement);
objj_msgSend(_superlayer._sublayers,"removeObject:",_69);
_superlayer=nil;
}
}),new objj_method(sel_getUid("insertSublayer:atIndex:"),function(_6b,_6c,_6d,_6e){
with(_6b){
if(!_6d){
return;
}
var _6f=objj_msgSend(_6d,"superlayer");
if(_6f==_6b){
var _70=objj_msgSend(_sublayers,"indexOfObjectIdenticalTo:",_6d);
if(_70==_6e){
return;
}
objj_msgSend(_sublayers,"removeObjectAtIndex:",_70);
if(_70<_6e){
--_6e;
}
}else{
if(_6f!=nil){
objj_msgSend(_6d,"removeFromSuperlayer");
}
}
if(_DOMContentsElement&&_6d._zPosition>_DOMContentsElement.style.zIndex){
_DOMContentsElement.style.zIndex-=100;
}
objj_msgSend(_sublayers,"insertObject:atIndex:",_6d,_6e);
if(_6e>=_sublayers.length-1){
_DOMElement.appendChild(_6d._DOMElement);
}else{
_DOMElement.insertBefore(_6d._DOMElement,_sublayers[_6e+1]._DOMElement);
}
_6d._superlayer=_6b;
if(_6b!=_6f){
_CALayerRecalculateGeometry(_6d,268435455);
}
}
}),new objj_method(sel_getUid("insertSublayer:below:"),function(_71,_72,_73,_74){
with(_71){
var _75=_74?objj_msgSend(_sublayers,"indexOfObjectIdenticalTo:",_74):0;
objj_msgSend(_71,"insertSublayer:atIndex:",_73,_75==CPNotFound?_sublayers.length:_75);
}
}),new objj_method(sel_getUid("insertSublayer:above:"),function(_76,_77,_78,_79){
with(_76){
var _7a=_79?objj_msgSend(_sublayers,"indexOfObjectIdenticalTo:",_79):_sublayers.length;
if(_7a==CPNotFound){
objj_msgSend(CPException,"raise:reason:","CALayerNotFoundException","aSublayer is not a sublayer of this layer");
}
objj_msgSend(_sublayers,"insertObject:atIndex:",_78,_7a==CPNotFound?_sublayers.length:_7a+1);
}
}),new objj_method(sel_getUid("replaceSublayer:with:"),function(_7b,_7c,_7d,_7e){
with(_7b){
if(_7d==_7e){
return;
}
if(_7d._superlayer!=_7b){
alert("EXCEPTION");
return;
}
if(_DOMContentsElement&&_7e._zPosition>_DOMContentsElement.style.zIndex){
_DOMContentsElement.style.zIndex-=100;
}
objj_msgSend(_sublayers,"replaceObjectAtIndex:withObject:",objj_msgSend(_sublayers,"indexOfObjectIdenticalTo:",_7d),_7e);
_DOMElement.replaceChild(_7d._DOMElement,_7e._DOMElement);
}
}),new objj_method(sel_getUid("registerRunLoopUpdateWithMask:"),function(_7f,_80,_81){
with(_7f){
if(_d==nil){
_d={};
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"performSelector:target:argument:order:modes:",sel_getUid("runLoopUpdateLayers"),CALayer,nil,0,[CPDefaultRunLoopMode]);
}
_runLoopUpdateMask|=_81;
_d[objj_msgSend(_7f,"UID")]=_7f;
}
}),new objj_method(sel_getUid("setNeedsComposite"),function(_82,_83){
with(_82){
objj_msgSend(_82,"registerRunLoopUpdateWithMask:",_b);
}
}),new objj_method(sel_getUid("setNeedsDisplay"),function(_84,_85){
with(_84){
objj_msgSend(_84,"registerRunLoopUpdateWithMask:",_a);
}
}),new objj_method(sel_getUid("setNeedsDisplayOnBoundsChange:"),function(_86,_87,_88){
with(_86){
_needsDisplayOnBoundsChange=_88;
}
}),new objj_method(sel_getUid("needsDisplayOnBoundsChange"),function(_89,_8a){
with(_89){
return _needsDisplayOnBoundsChange;
}
}),new objj_method(sel_getUid("setNeedsDisplayInRect:"),function(_8b,_8c,_8d){
with(_8b){
_dirtyRect=_8d;
objj_msgSend(_8b,"display");
}
}),new objj_method(sel_getUid("convertPoint:fromLayer:"),function(_8e,_8f,_90,_91){
with(_8e){
return CGPointApplyAffineTransform(_90,_CALayerGetTransform(_91,_8e));
}
}),new objj_method(sel_getUid("convertPoint:toLayer:"),function(_92,_93,_94,_95){
with(_92){
return CGPointApplyAffineTransform(_94,_CALayerGetTransform(_92,_95));
}
}),new objj_method(sel_getUid("convertRect:fromLayer:"),function(_96,_97,_98,_99){
with(_96){
return CGRectApplyAffineTransform(_98,_CALayerGetTransform(_99,_96));
}
}),new objj_method(sel_getUid("convertRect:toLayer:"),function(_9a,_9b,_9c,_9d){
with(_9a){
return CGRectApplyAffineTransform(_9c,_CALayerGetTransform(_9a,_9d));
}
}),new objj_method(sel_getUid("containsPoint:"),function(_9e,_9f,_a0){
with(_9e){
return (_a0.x>=(_bounds.origin.x)&&_a0.y>=(_bounds.origin.y)&&_a0.x<(_bounds.origin.x+_bounds.size.width)&&_a0.y<(_bounds.origin.y+_bounds.size.height));
}
}),new objj_method(sel_getUid("hitTest:"),function(_a1,_a2,_a3){
with(_a1){
if(_isHidden){
return nil;
}
var _a4=CGPointApplyAffineTransform(_a3,_transformToLayer);
if(!(_a4.x>=(_bounds.origin.x)&&_a4.y>=(_bounds.origin.y)&&_a4.x<(_bounds.origin.x+_bounds.size.width)&&_a4.y<(_bounds.origin.y+_bounds.size.height))){
return nil;
}
var _a5=nil,_a6=_sublayers.length;
while(_a6--){
if(_a5=objj_msgSend(_sublayers[_a6],"hitTest:",_a4)){
return _a5;
}
}
return _a1;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_a7,_a8,_a9){
with(_a7){
if(_delegate==_a9){
return;
}
_delegate=_a9;
_delegateRespondsToDisplayLayerSelector=objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("displayLayer:"));
_delegateRespondsToDrawLayerInContextSelector=objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("drawLayer:inContext:"));
if(_delegateRespondsToDisplayLayerSelector||_delegateRespondsToDrawLayerInContextSelector){
objj_msgSend(_a7,"setNeedsDisplay");
}
}
}),new objj_method(sel_getUid("delegate"),function(_aa,_ab){
with(_aa){
return _delegate;
}
}),new objj_method(sel_getUid("_setOwningView:"),function(_ac,_ad,_ae){
with(_ac){
_owningView=_ae;
if(_owningView){
_owningView=_ae;
_bounds.size=CGSizeMakeCopy(objj_msgSend(_owningView,"bounds").size);
_position=CGPointMake((_bounds.size.width)*_anchorPoint.x,(_bounds.size.height)*_anchorPoint.y);
}
_CALayerRecalculateGeometry(_ac,_2|_1);
}
}),new objj_method(sel_getUid("_owningViewBoundsChanged"),function(_af,_b0){
with(_af){
_bounds.size=CGSizeMakeCopy(objj_msgSend(_owningView,"bounds").size);
_position=CGPointMake((_bounds.size.width)*_anchorPoint.x,(_bounds.size.height)*_anchorPoint.y);
_CALayerRecalculateGeometry(_af,_2|_1);
}
}),new objj_method(sel_getUid("_update"),function(_b1,_b2){
with(_b1){
window.loop=true;
var _b3=_runLoopUpdateMask;
if(_b3&_c){
_CALayerUpdateDOM(_b1,_b3);
}
if(_b3&_a){
objj_msgSend(_b1,"display");
}else{
if(_b3&_8||_b3&_b){
objj_msgSend(_b1,"composite");
}
}
_runLoopUpdateMask=0;
window.loop=false;
}
})]);
class_addMethods(_f,[new objj_method(sel_getUid("layer"),function(_b4,_b5){
with(_b4){
return objj_msgSend(objj_msgSend(objj_msgSend(_b4,"class"),"alloc"),"init");
}
}),new objj_method(sel_getUid("runLoopUpdateLayers"),function(_b6,_b7){
with(_b6){
for(UID in _d){
var _b8=_d[UID],_b9=_b8._runLoopUpdateMask;
if(_b9&_c){
_CALayerUpdateDOM(_b8,_b9);
}
if(_b9&_a){
objj_msgSend(_b8,"display");
}else{
if(_b9&_8||_b9&_b){
objj_msgSend(_b8,"composite");
}
}
_b8._runLoopUpdateMask=0;
}
window.loop=false;
_d=nil;
}
})]);
_CALayerUpdateSublayerTransformForSublayers=function(_ba){
var _bb=_ba._bounds,_bc=_ba._anchorPoint,_bd=(_bb.size.width)*_bc.x,_be=(_bb.size.height)*_bc.y;
_ba._sublayerTransformForSublayers=CGAffineTransformConcat(CGAffineTransformMakeTranslation(-_bd,-_be),CGAffineTransformConcat(_ba._sublayerTransform,CGAffineTransformMakeTranslation(_bd,_be)));
};
_CALayerUpdateDOM=function(_bf,_c0){
var _c1=_bf._DOMElement.style;
if(_c0&_9){
_c1.zIndex=_bf._zPosition;
}
var _c2=_bf._backingStoreFrame;
if(_c0&_7){
_c1.top=ROUND((_c2.origin.y))+"px";
_c1.left=ROUND((_c2.origin.x))+"px";
}
if(_c0&_8){
var _c3=MAX(0,ROUND((_c2.size.width))),_c4=MAX(0,ROUND((_c2.size.height))),_c5=_bf._DOMContentsElement;
_c1.width=_c3+"px";
_c1.height=_c4+"px";
if(_c5){
_c5.width=_c3;
_c5.height=_c4;
_c5.style.width=_c3+"px";
_c5.style.height=_c4+"px";
}
}
};
_CALayerRecalculateGeometry=function(_c6,_c7){
var _c8=_c6._bounds,_c9=_c6._superlayer,_ca=(_c8.size.width),_cb=(_c8.size.height),_cc=_c6._position,_cd=_c6._anchorPoint,_ce=_c6._affineTransform,_cf={width:_c6._backingStoreFrame.width,height:_c6._backingStoreFrame.height},_d0=_c6._hasCustomBackingStoreFrame;
_c6._transformFromLayer=CGAffineTransformConcat(CGAffineTransformMakeTranslation(-_ca*_cd.x-(_c6._bounds.origin.x),-_cb*_cd.y-(_c6._bounds.origin.y)),CGAffineTransformConcat(_ce,CGAffineTransformMakeTranslation(_cc.x,_cc.y)));
if(_c9&&_c9._hasSublayerTransform){
var tx=_c6._transformFromLayer.tx*_c9._sublayerTransformForSublayers.a+_c6._transformFromLayer.ty*_c9._sublayerTransformForSublayers.c+_c9._sublayerTransformForSublayers.tx;
_c6._transformFromLayer.ty=_c6._transformFromLayer.tx*_c9._sublayerTransformForSublayers.b+_c6._transformFromLayer.ty*_c9._sublayerTransformForSublayers.d+_c9._sublayerTransformForSublayers.ty;
_c6._transformFromLayer.tx=tx;
var a=_c6._transformFromLayer.a*_c9._sublayerTransformForSublayers.a+_c6._transformFromLayer.b*_c9._sublayerTransformForSublayers.c,b=_c6._transformFromLayer.a*_c9._sublayerTransformForSublayers.b+_c6._transformFromLayer.b*_c9._sublayerTransformForSublayers.d,c=_c6._transformFromLayer.c*_c9._sublayerTransformForSublayers.a+_c6._transformFromLayer.d*_c9._sublayerTransformForSublayers.c;
_c6._transformFromLayer.d=_c6._transformFromLayer.c*_c9._sublayerTransformForSublayers.b+_c6._transformFromLayer.d*_c9._sublayerTransformForSublayers.d;
_c6._transformFromLayer.a=a;
_c6._transformFromLayer.b=b;
_c6._transformFromLayer.c=c;
}
_c6._transformToLayer=CGAffineTransformInvert(_c6._transformFromLayer);
_c6._frame=nil;
_c6._standardBackingStoreFrame=objj_msgSend(_c6,"convertRect:toLayer:",_c8,nil);
if(_c9){
var _c8=objj_msgSend(_c9,"bounds"),_d1=objj_msgSend(_c9,"convertRect:toLayer:",_c8,nil);
_c6._standardBackingStoreFrame.origin.x-=(_d1.origin.x);
_c6._standardBackingStoreFrame.origin.y-=(_d1.origin.y);
}
var _d2=_c6._standardBackingStoreFrame.origin,_d3=_c6._standardBackingStoreFrame.size;
_d2.x=FLOOR(_d2.x);
_d2.y=FLOOR(_d2.y);
_d3.width=CEIL(_d3.width)+1;
_d3.height=CEIL(_d3.height)+1;
if(!_d0){
var _d4=CGRectMakeCopy(_c6._standardBackingStoreFrame);
if(ROUND((_d4.origin.x))!=ROUND((_c6._backingStoreFrame.origin.x))||ROUND((_d4.origin.y))!=ROUND((_c6._backingStoreFrame.origin.y))){
objj_msgSend(_c6,"registerRunLoopUpdateWithMask:",_7);
}
if(((_d4.size.width)!=ROUND((_c6._backingStoreFrame.size.width))||(_d4.size.height)!=ROUND((_c6._backingStoreFrame.size.height)))){
objj_msgSend(_c6,"registerRunLoopUpdateWithMask:",_8);
}
_c6._backingStoreFrame=_d4;
}
if(_c7&_1&&_c6._needsDisplayOnBoundsChange){
objj_msgSend(_c6,"setNeedsDisplay");
}else{
if(_d0||(_c7&~(_2|_3))){
objj_msgSend(_c6,"setNeedsComposite");
}
}
var _d5=_c6._sublayers,_d6=0,_d7=_d5.length;
for(;_d6<_d7;++_d6){
_CALayerRecalculateGeometry(_d5[_d6],_c7);
}
};
_CALayerGetTransform=function(_d8,_d9){
var _da=CGAffineTransformMakeIdentity();
if(_d8){
var _db=_d8;
while(_db&&_db!=_d9){
var _dc=_db._transformFromLayer;
var tx=_da.tx*_dc.a+_da.ty*_dc.c+_dc.tx;
_da.ty=_da.tx*_dc.b+_da.ty*_dc.d+_dc.ty;
_da.tx=tx;
var a=_da.a*_dc.a+_da.b*_dc.c,b=_da.a*_dc.b+_da.b*_dc.d,c=_da.c*_dc.a+_da.d*_dc.c;
_da.d=_da.c*_dc.b+_da.d*_dc.d;
_da.a=a;
_da.b=b;
_da.c=c;
_db=_db._superlayer;
}
if(_db==_d9){
return _da;
}
}
var _dd=[],_db=_d9;
while(_db){
_dd.push(_db);
_db=_db._superlayer;
}
var _de=_dd.length;
while(_de--){
var _df=_dd[_de]._transformToLayer;
var tx=_da.tx*_df.a+_da.ty*_df.c+_df.tx;
_da.ty=_da.tx*_df.b+_da.ty*_df.d+_df.ty;
_da.tx=tx;
var a=_da.a*_df.a+_da.b*_df.c,b=_da.a*_df.b+_da.b*_df.d,c=_da.c*_df.a+_da.d*_df.c;
_da.d=_da.c*_df.b+_da.d*_df.d;
_da.a=a;
_da.b=b;
_da.c=c;
}
return _da;
};
