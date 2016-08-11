@STATIC;1.0;i;7;CPBox.ji;12;CPClipView.ji;12;CPScroller.ji;8;CPView.jt;27292;
objj_executeFile("CPBox.j",YES);
objj_executeFile("CPClipView.j",YES);
objj_executeFile("CPScroller.j",YES);
objj_executeFile("CPView.j",YES);
var _1=objj_allocateClassPair(CPView,"CPScrollView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_contentView"),new objj_ivar("_headerClipView"),new objj_ivar("_cornerView"),new objj_ivar("_bottomCornerView"),new objj_ivar("_hasVerticalScroller"),new objj_ivar("_hasHorizontalScroller"),new objj_ivar("_autohidesScrollers"),new objj_ivar("_verticalScroller"),new objj_ivar("_horizontalScroller"),new objj_ivar("_recursionCount"),new objj_ivar("_verticalLineScroll"),new objj_ivar("_verticalPageScroll"),new objj_ivar("_horizontalLineScroll"),new objj_ivar("_horizontalPageScroll"),new objj_ivar("_borderType")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPScrollView").super_class},"initWithFrame:",_5);
if(_3){
_verticalLineScroll=10;
_verticalPageScroll=10;
_horizontalLineScroll=10;
_horizontalPageScroll=10;
_borderType=CPNoBorder;
_contentView=objj_msgSend(objj_msgSend(CPClipView,"alloc"),"initWithFrame:",objj_msgSend(_3,"_insetBounds"));
objj_msgSend(_3,"addSubview:",_contentView);
_headerClipView=objj_msgSend(objj_msgSend(CPClipView,"alloc"),"init");
objj_msgSend(_3,"addSubview:",_headerClipView);
_bottomCornerView=objj_msgSend(objj_msgSend(CPView,"alloc"),"init");
objj_msgSend(_3,"addSubview:",_bottomCornerView);
objj_msgSend(_3,"setHasVerticalScroller:",YES);
objj_msgSend(_3,"setHasHorizontalScroller:",YES);
}
return _3;
}
}),new objj_method(sel_getUid("_insetBounds"),function(_6,_7){
with(_6){
return objj_msgSend(objj_msgSend(_6,"class"),"_insetBounds:borderType:",objj_msgSend(_6,"bounds"),_borderType);
}
}),new objj_method(sel_getUid("contentSize"),function(_8,_9){
with(_8){
return objj_msgSend(_contentView,"frame").size;
}
}),new objj_method(sel_getUid("documentView"),function(_a,_b){
with(_a){
return objj_msgSend(_contentView,"documentView");
}
}),new objj_method(sel_getUid("setContentView:"),function(_c,_d,_e){
with(_c){
if(_contentView===_e||!_e){
return;
}
var _f=objj_msgSend(_e,"documentView");
if(_f){
objj_msgSend(_f,"removeFromSuperview");
}
objj_msgSend(_contentView,"removeFromSuperview");
_contentView=_e;
objj_msgSend(_contentView,"setDocumentView:",_f);
objj_msgSend(_c,"addSubview:",_contentView);
objj_msgSend(_c,"reflectScrolledClipView:",_contentView);
}
}),new objj_method(sel_getUid("contentView"),function(_10,_11){
with(_10){
return _contentView;
}
}),new objj_method(sel_getUid("setDocumentView:"),function(_12,_13,_14){
with(_12){
objj_msgSend(_contentView,"setDocumentView:",_14);
objj_msgSend(_12,"_updateCornerAndHeaderView");
objj_msgSend(_12,"reflectScrolledClipView:",_contentView);
}
}),new objj_method(sel_getUid("reflectScrolledClipView:"),function(_15,_16,_17){
with(_15){
if(_contentView!==_17){
return;
}
if(_recursionCount>5){
return;
}
++_recursionCount;
var _18=objj_msgSend(_15,"documentView");
if(!_18){
if(_autohidesScrollers){
objj_msgSend(_verticalScroller,"setHidden:",YES);
objj_msgSend(_horizontalScroller,"setHidden:",YES);
}else{
}
objj_msgSend(_contentView,"setFrame:",objj_msgSend(_15,"_insetBounds"));
objj_msgSend(_headerClipView,"setFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
--_recursionCount;
return;
}
var _19=objj_msgSend(_18,"frame"),_1a=objj_msgSend(_15,"_insetBounds"),_1b=objj_msgSend(_15,"_headerClipViewFrame"),_1c=(_1b.size.height);
_1a.origin.y+=_1c;
_1a.size.height-=_1c;
var _1d={width:(_19.size.width)-(_1a.size.width),height:(_19.size.height)-(_1a.size.height)},_1e=(objj_msgSend(_verticalScroller,"frame").size.width),_1f=(objj_msgSend(_horizontalScroller,"frame").size.height),_20=_1d.height>0,_21=_1d.width>0,_22=_hasVerticalScroller&&(!_autohidesScrollers||_20),_23=_hasHorizontalScroller&&(!_autohidesScrollers||_21);
if(_22){
_1d.width+=_1e;
_21=_1d.width>0;
_23=_hasHorizontalScroller&&(!_autohidesScrollers||_21);
}
if(_23){
_1d.height+=_1f;
_20=_1d.height>0;
_22=_hasVerticalScroller&&(!_autohidesScrollers||_20);
}
objj_msgSend(_verticalScroller,"setHidden:",!_22);
objj_msgSend(_verticalScroller,"setEnabled:",_20);
objj_msgSend(_horizontalScroller,"setHidden:",!_23);
objj_msgSend(_horizontalScroller,"setEnabled:",_21);
if(_22){
_1a.size.width-=_1e;
}
if(_23){
_1a.size.height-=_1f;
}
var _24=objj_msgSend(_contentView,"bounds").origin,_25=!objj_msgSend(_verticalScroller,"isHidden"),_26=!objj_msgSend(_horizontalScroller,"isHidden");
if(_22){
var _27=MAX((_1a.origin.y),MAX((objj_msgSend(_15,"_cornerViewFrame").origin.y+objj_msgSend(_15,"_cornerViewFrame").size.height),(_1b.origin.y+_1b.size.height)));
var _28=(_1a.origin.y+_1a.size.height)-_27;
objj_msgSend(_verticalScroller,"setFloatValue:",(_1d.height<=0)?0:_24.y/_1d.height);
objj_msgSend(_verticalScroller,"setKnobProportion:",(_1a.size.height)/(_19.size.height));
objj_msgSend(_verticalScroller,"setFrame:",{origin:{x:(_1a.origin.x+_1a.size.width),y:_27},size:{width:_1e,height:_28}});
}else{
if(_25){
objj_msgSend(_verticalScroller,"setFloatValue:",0);
objj_msgSend(_verticalScroller,"setKnobProportion:",1);
}
}
if(_23){
objj_msgSend(_horizontalScroller,"setFloatValue:",(_1d.width<=0)?0:_24.x/_1d.width);
objj_msgSend(_horizontalScroller,"setKnobProportion:",(_1a.size.width)/(_19.size.width));
objj_msgSend(_horizontalScroller,"setFrame:",{origin:{x:(_1a.origin.x),y:(_1a.origin.y+_1a.size.height)},size:{width:(_1a.size.width),height:_1f}});
}else{
if(_26){
objj_msgSend(_horizontalScroller,"setFloatValue:",0);
objj_msgSend(_horizontalScroller,"setKnobProportion:",1);
}
}
objj_msgSend(_contentView,"setFrame:",_1a);
objj_msgSend(_headerClipView,"setFrame:",_1b);
objj_msgSend(objj_msgSend(_headerClipView,"documentView"),"setNeedsDisplay:",YES);
objj_msgSend(_cornerView,"setFrame:",objj_msgSend(_15,"_cornerViewFrame"));
objj_msgSend(objj_msgSend(_15,"bottomCornerView"),"setFrame:",objj_msgSend(_15,"_bottomCornerViewFrame"));
objj_msgSend(objj_msgSend(_15,"bottomCornerView"),"setBackgroundColor:",objj_msgSend(_15,"currentValueForThemeAttribute:","bottom-corner-color"));
--_recursionCount;
}
}),new objj_method(sel_getUid("setBorderType:"),function(_29,_2a,_2b){
with(_29){
if(_borderType==_2b){
return;
}
_borderType=_2b;
objj_msgSend(_29,"reflectScrolledClipView:",_contentView);
objj_msgSend(_29,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("borderType"),function(_2c,_2d){
with(_2c){
return _borderType;
}
}),new objj_method(sel_getUid("setHorizontalScroller:"),function(_2e,_2f,_30){
with(_2e){
if(_horizontalScroller===_30){
return;
}
objj_msgSend(_horizontalScroller,"removeFromSuperview");
objj_msgSend(_horizontalScroller,"setTarget:",nil);
objj_msgSend(_horizontalScroller,"setAction:",nil);
_horizontalScroller=_30;
objj_msgSend(_horizontalScroller,"setTarget:",_2e);
objj_msgSend(_horizontalScroller,"setAction:",sel_getUid("_horizontalScrollerDidScroll:"));
objj_msgSend(_2e,"addSubview:",_horizontalScroller);
objj_msgSend(_2e,"reflectScrolledClipView:",_contentView);
}
}),new objj_method(sel_getUid("horizontalScroller"),function(_31,_32){
with(_31){
return _horizontalScroller;
}
}),new objj_method(sel_getUid("setHasHorizontalScroller:"),function(_33,_34,_35){
with(_33){
if(_hasHorizontalScroller===_35){
return;
}
_hasHorizontalScroller=_35;
if(_hasHorizontalScroller&&!_horizontalScroller){
var _36=objj_msgSend(_33,"_insetBounds");
objj_msgSend(_33,"setHorizontalScroller:",objj_msgSend(objj_msgSend(CPScroller,"alloc"),"initWithFrame:",CGRectMake(0,0,MAX((_36.size.width),objj_msgSend(CPScroller,"scrollerWidth")+1),objj_msgSend(CPScroller,"scrollerWidth"))));
objj_msgSend(objj_msgSend(_33,"horizontalScroller"),"setFrameSize:",CGSizeMake((_36.size.width),objj_msgSend(CPScroller,"scrollerWidth")));
}
objj_msgSend(_33,"reflectScrolledClipView:",_contentView);
}
}),new objj_method(sel_getUid("hasHorizontalScroller"),function(_37,_38){
with(_37){
return _hasHorizontalScroller;
}
}),new objj_method(sel_getUid("setVerticalScroller:"),function(_39,_3a,_3b){
with(_39){
if(_verticalScroller===_3b){
return;
}
objj_msgSend(_verticalScroller,"removeFromSuperview");
objj_msgSend(_verticalScroller,"setTarget:",nil);
objj_msgSend(_verticalScroller,"setAction:",nil);
_verticalScroller=_3b;
objj_msgSend(_verticalScroller,"setTarget:",_39);
objj_msgSend(_verticalScroller,"setAction:",sel_getUid("_verticalScrollerDidScroll:"));
objj_msgSend(_39,"addSubview:",_verticalScroller);
objj_msgSend(_39,"reflectScrolledClipView:",_contentView);
}
}),new objj_method(sel_getUid("verticalScroller"),function(_3c,_3d){
with(_3c){
return _verticalScroller;
}
}),new objj_method(sel_getUid("setHasVerticalScroller:"),function(_3e,_3f,_40){
with(_3e){
if(_hasVerticalScroller===_40){
return;
}
_hasVerticalScroller=_40;
if(_hasVerticalScroller&&!_verticalScroller){
var _41=objj_msgSend(_3e,"_insetBounds");
objj_msgSend(_3e,"setVerticalScroller:",objj_msgSend(objj_msgSend(CPScroller,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:objj_msgSend(CPScroller,"scrollerWidth"),height:MAX((_41.size.height),objj_msgSend(CPScroller,"scrollerWidth")+1)}}));
objj_msgSend(objj_msgSend(_3e,"verticalScroller"),"setFrameSize:",CGSizeMake(objj_msgSend(CPScroller,"scrollerWidth"),(_41.size.height)));
}
objj_msgSend(_3e,"reflectScrolledClipView:",_contentView);
}
}),new objj_method(sel_getUid("hasVerticalScroller"),function(_42,_43){
with(_42){
return _hasVerticalScroller;
}
}),new objj_method(sel_getUid("setAutohidesScrollers:"),function(_44,_45,_46){
with(_44){
if(_autohidesScrollers==_46){
return;
}
_autohidesScrollers=_46;
objj_msgSend(_44,"reflectScrolledClipView:",_contentView);
}
}),new objj_method(sel_getUid("autohidesScrollers"),function(_47,_48){
with(_47){
return _autohidesScrollers;
}
}),new objj_method(sel_getUid("_updateCornerAndHeaderView"),function(_49,_4a){
with(_49){
var _4b=objj_msgSend(_49,"documentView"),_4c=objj_msgSend(_49,"_headerView"),_4d=objj_msgSend(_4b,"respondsToSelector:",sel_getUid("headerView"))?objj_msgSend(_4b,"headerView"):nil;
if(_4c!==_4d){
objj_msgSend(_4c,"removeFromSuperview");
objj_msgSend(_headerClipView,"setDocumentView:",_4d);
}
var _4e=objj_msgSend(_4b,"respondsToSelector:",sel_getUid("cornerView"))?objj_msgSend(_4b,"cornerView"):nil;
if(_cornerView!==_4e){
objj_msgSend(_cornerView,"removeFromSuperview");
_cornerView=_4e;
if(_cornerView){
objj_msgSend(_49,"addSubview:",_cornerView);
}
}
objj_msgSend(_49,"reflectScrolledClipView:",_contentView);
}
}),new objj_method(sel_getUid("_headerView"),function(_4f,_50){
with(_4f){
return objj_msgSend(_headerClipView,"documentView");
}
}),new objj_method(sel_getUid("_cornerViewFrame"),function(_51,_52){
with(_51){
if(!_cornerView){
return {origin:{x:0,y:0},size:{width:0,height:0}};
}
var _53=objj_msgSend(_51,"_insetBounds"),_54=objj_msgSend(_cornerView,"frame");
_54.origin.x=(_53.origin.x+_53.size.width)-(_54.size.width);
_54.origin.y=(_53.origin.y);
return _54;
}
}),new objj_method(sel_getUid("_headerClipViewFrame"),function(_55,_56){
with(_55){
var _57=objj_msgSend(_55,"_headerView");
if(!_57){
return {origin:{x:0,y:0},size:{width:0,height:0}};
}
var _58=objj_msgSend(_55,"_insetBounds");
_58.size.height=(objj_msgSend(_57,"frame").size.height);
_58.size.width-=(objj_msgSend(_55,"_cornerViewFrame").size.width);
return _58;
}
}),new objj_method(sel_getUid("_bottomCornerViewFrame"),function(_59,_5a){
with(_59){
if(objj_msgSend(objj_msgSend(_59,"horizontalScroller"),"isHidden")||objj_msgSend(objj_msgSend(_59,"verticalScroller"),"isHidden")){
return CGRectMakeZero();
}
var _5b=objj_msgSend(objj_msgSend(_59,"verticalScroller"),"frame"),_5c=CGRectMakeZero();
_5c.origin.x=CGRectGetMinX(_5b);
_5c.origin.y=CGRectGetMaxY(_5b);
_5c.size.width=objj_msgSend(CPScroller,"scrollerWidth");
_5c.size.height=objj_msgSend(CPScroller,"scrollerWidth");
return _5c;
}
}),new objj_method(sel_getUid("setBottomCornerView:"),function(_5d,_5e,_5f){
with(_5d){
if(_bottomCornerView===_5f){
return;
}
objj_msgSend(_bottomCornerView,"removeFromSuperview");
objj_msgSend(_5f,"setFrame:",objj_msgSend(_5d,"_bottomCornerViewFrame"));
objj_msgSend(_5d,"addSubview:",_5f);
_bottomCornerView=_5f;
objj_msgSend(_5d,"_updateCornerAndHeaderView");
}
}),new objj_method(sel_getUid("bottomCornerView"),function(_60,_61){
with(_60){
return _bottomCornerView;
}
}),new objj_method(sel_getUid("_verticalScrollerDidScroll:"),function(_62,_63,_64){
with(_62){
var _65=objj_msgSend(_64,"floatValue"),_66=objj_msgSend(objj_msgSend(_contentView,"documentView"),"frame"),_67=objj_msgSend(_contentView,"bounds");
switch(objj_msgSend(_verticalScroller,"hitPart")){
case CPScrollerDecrementLine:
_67.origin.y-=_verticalLineScroll;
break;
case CPScrollerIncrementLine:
_67.origin.y+=_verticalLineScroll;
break;
case CPScrollerDecrementPage:
_67.origin.y-=(_67.size.height)-_verticalPageScroll;
break;
case CPScrollerIncrementPage:
_67.origin.y+=(_67.size.height)-_verticalPageScroll;
break;
case CPScrollerKnobSlot:
case CPScrollerKnob:
default:
_67.origin.y=ROUND(_65*((_66.size.height)-(_67.size.height)));
}
objj_msgSend(_contentView,"scrollToPoint:",_67.origin);
}
}),new objj_method(sel_getUid("_horizontalScrollerDidScroll:"),function(_68,_69,_6a){
with(_68){
var _6b=objj_msgSend(_6a,"floatValue"),_6c=objj_msgSend(objj_msgSend(_68,"documentView"),"frame"),_6d=objj_msgSend(_contentView,"bounds");
switch(objj_msgSend(_horizontalScroller,"hitPart")){
case CPScrollerDecrementLine:
_6d.origin.x-=_horizontalLineScroll;
break;
case CPScrollerIncrementLine:
_6d.origin.x+=_horizontalLineScroll;
break;
case CPScrollerDecrementPage:
_6d.origin.x-=(_6d.size.width)-_horizontalPageScroll;
break;
case CPScrollerIncrementPage:
_6d.origin.x+=(_6d.size.width)-_horizontalPageScroll;
break;
case CPScrollerKnobSlot:
case CPScrollerKnob:
default:
_6d.origin.x=ROUND(_6b*((_6c.size.width)-(_6d.size.width)));
}
objj_msgSend(_contentView,"scrollToPoint:",_6d.origin);
objj_msgSend(_headerClipView,"scrollToPoint:",CGPointMake(_6d.origin.x,0));
}
}),new objj_method(sel_getUid("tile"),function(_6e,_6f){
with(_6e){
}
}),new objj_method(sel_getUid("resizeSubviewsWithOldSize:"),function(_70,_71,_72){
with(_70){
objj_msgSend(_70,"reflectScrolledClipView:",_contentView);
}
}),new objj_method(sel_getUid("setLineScroll:"),function(_73,_74,_75){
with(_73){
objj_msgSend(_73,"setHorizontalLineScroll:",_75);
objj_msgSend(_73,"setVerticalLineScroll:",_75);
}
}),new objj_method(sel_getUid("lineScroll"),function(_76,_77){
with(_76){
return objj_msgSend(_76,"horizontalLineScroll");
}
}),new objj_method(sel_getUid("setHorizontalLineScroll:"),function(_78,_79,_7a){
with(_78){
_horizontalLineScroll=_7a;
}
}),new objj_method(sel_getUid("horizontalLineScroll"),function(_7b,_7c){
with(_7b){
return _horizontalLineScroll;
}
}),new objj_method(sel_getUid("setVerticalLineScroll:"),function(_7d,_7e,_7f){
with(_7d){
_verticalLineScroll=_7f;
}
}),new objj_method(sel_getUid("verticalLineScroll"),function(_80,_81){
with(_80){
return _verticalLineScroll;
}
}),new objj_method(sel_getUid("setPageScroll:"),function(_82,_83,_84){
with(_82){
objj_msgSend(_82,"setHorizontalPageScroll:",_84);
objj_msgSend(_82,"setVerticalPageScroll:",_84);
}
}),new objj_method(sel_getUid("pageScroll"),function(_85,_86){
with(_85){
return objj_msgSend(_85,"horizontalPageScroll");
}
}),new objj_method(sel_getUid("setHorizontalPageScroll:"),function(_87,_88,_89){
with(_87){
_horizontalPageScroll=_89;
}
}),new objj_method(sel_getUid("horizontalPageScroll"),function(_8a,_8b){
with(_8a){
return _horizontalPageScroll;
}
}),new objj_method(sel_getUid("setVerticalPageScroll:"),function(_8c,_8d,_8e){
with(_8c){
_verticalPageScroll=_8e;
}
}),new objj_method(sel_getUid("verticalPageScroll"),function(_8f,_90){
with(_8f){
return _verticalPageScroll;
}
}),new objj_method(sel_getUid("drawRect:"),function(_91,_92,_93){
with(_91){
objj_msgSendSuper({receiver:_91,super_class:objj_getClass("CPScrollView").super_class},"drawRect:",_93);
if(_borderType==CPNoBorder){
return;
}
var _94=objj_msgSend(_91,"bounds"),_95=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort");
CGContextSetLineWidth(_95,1);
switch(_borderType){
case CPLineBorder:
CGContextSetStrokeColor(_95,objj_msgSend(_91,"currentValueForThemeAttribute:","border-color"));
CGContextStrokeRect(_95,{origin:{x:_94.origin.x+0.5,y:_94.origin.y+0.5},size:{width:_94.size.width-2*0.5,height:_94.size.height-2*0.5}});
break;
case CPBezelBorder:
objj_msgSend(_91,"_drawGrayBezelInContext:bounds:",_95,_94);
break;
case CPGrooveBorder:
objj_msgSend(_91,"_drawGrooveInContext:bounds:",_95,_94);
break;
default:
break;
}
}
}),new objj_method(sel_getUid("_drawGrayBezelInContext:bounds:"),function(_96,_97,_98,_99){
with(_96){
CGContextBeginPath(_98);
CGContextSetStrokeColor(_98,objj_msgSend(CPColor,"colorWithWhite:alpha:",142/255,1));
var y=(_99.origin.y)+0.5;
CGContextMoveToPoint(_98,(_99.origin.x),y);
CGContextAddLineToPoint(_98,(_99.origin.x)+1,y);
CGContextStrokePath(_98);
CGContextBeginPath(_98);
CGContextSetStrokeColor(_98,objj_msgSend(CPColor,"colorWithWhite:alpha:",192/255,1));
CGContextMoveToPoint(_98,(_99.origin.x)+1,y);
CGContextAddLineToPoint(_98,(_99.origin.x+_99.size.width)-1,y);
CGContextStrokePath(_98);
CGContextBeginPath(_98);
CGContextSetStrokeColor(_98,objj_msgSend(CPColor,"colorWithWhite:alpha:",142/255,1));
CGContextMoveToPoint(_98,(_99.origin.x+_99.size.width)-1,y);
CGContextAddLineToPoint(_98,(_99.origin.x+_99.size.width),y);
CGContextStrokePath(_98);
CGContextBeginPath(_98);
CGContextSetStrokeColor(_98,objj_msgSend(CPColor,"colorWithWhite:alpha:",190/255,1));
var x=(_99.origin.x+_99.size.width)-0.5;
CGContextMoveToPoint(_98,x,(_99.origin.y)+1);
CGContextAddLineToPoint(_98,x,(_99.origin.y+_99.size.height));
CGContextMoveToPoint(_98,x-0.5,(_99.origin.y+_99.size.height)-0.5);
CGContextAddLineToPoint(_98,(_99.origin.x),(_99.origin.y+_99.size.height)-0.5);
x=(_99.origin.x)+0.5;
CGContextMoveToPoint(_98,x,(_99.origin.y+_99.size.height));
CGContextAddLineToPoint(_98,x,(_99.origin.y)+1);
CGContextStrokePath(_98);
}
}),new objj_method(sel_getUid("_drawGrooveInContext:bounds:"),function(_9a,_9b,_9c,_9d){
with(_9a){
CGContextBeginPath(_9c);
CGContextSetStrokeColor(_9c,objj_msgSend(CPColor,"colorWithWhite:alpha:",159/255,1));
var y=(_9d.origin.y)+0.5;
CGContextMoveToPoint(_9c,(_9d.origin.x),y);
CGContextAddLineToPoint(_9c,(_9d.origin.x+_9d.size.width),y);
var x=(_9d.origin.x+_9d.size.width)-1.5;
CGContextMoveToPoint(_9c,x,(_9d.origin.y)+2);
CGContextAddLineToPoint(_9c,x,(_9d.origin.y+_9d.size.height)-1);
y=(_9d.origin.y+_9d.size.height)-1.5;
CGContextMoveToPoint(_9c,(_9d.origin.x+_9d.size.width)-1,y);
CGContextAddLineToPoint(_9c,(_9d.origin.x)+2,y);
x=(_9d.origin.x)+0.5;
CGContextMoveToPoint(_9c,x,(_9d.origin.y+_9d.size.height));
CGContextAddLineToPoint(_9c,x,(_9d.origin.y));
CGContextStrokePath(_9c);
CGContextBeginPath(_9c);
CGContextSetStrokeColor(_9c,objj_msgSend(CPColor,"whiteColor"));
var _9e={origin:{x:_9d.origin.x+1,y:_9d.origin.y+1},size:{width:_9d.size.width,height:_9d.size.height}};
_9e.size.width-=1;
_9e.size.height-=1;
CGContextStrokeRect(_9c,{origin:{x:_9e.origin.x+0.5,y:_9e.origin.y+0.5},size:{width:_9e.size.width-2*0.5,height:_9e.size.height-2*0.5}});
CGContextBeginPath(_9c);
CGContextSetStrokeColor(_9c,objj_msgSend(CPColor,"colorWithWhite:alpha:",192/255,1));
y=(_9d.origin.y)+2.5;
CGContextMoveToPoint(_9c,(_9d.origin.x)+2,y);
CGContextAddLineToPoint(_9c,(_9d.origin.x+_9d.size.width)-2,y);
CGContextStrokePath(_9c);
}
}),new objj_method(sel_getUid("scrollWheel:"),function(_9f,_a0,_a1){
with(_9f){
objj_msgSend(_9f,"_respondToScrollWheelEventWithDeltaX:deltaY:",objj_msgSend(_a1,"deltaX"),objj_msgSend(_a1,"deltaY"));
}
}),new objj_method(sel_getUid("_respondToScrollWheelEventWithDeltaX:deltaY:"),function(_a2,_a3,_a4,_a5){
with(_a2){
var _a6=objj_msgSend(objj_msgSend(_a2,"documentView"),"frame"),_a7=objj_msgSend(_contentView,"bounds"),_a8=objj_msgSend(_contentView,"frame"),_a9=objj_msgSend(_a2,"enclosingScrollView");
_a7.origin.x=ROUND(_a7.origin.x+_a4);
_a7.origin.y=ROUND(_a7.origin.y+_a5);
var _aa=objj_msgSend(_contentView,"constrainScrollPoint:",CGPointCreateCopy(_a7.origin)),_ab=_a7.origin.x-_aa.x,_ac=_a7.origin.y-_aa.y;
objj_msgSend(_contentView,"scrollToPoint:",_aa);
objj_msgSend(_headerClipView,"scrollToPoint:",CGPointMake(_aa.x,0));
if(_ab||_ac){
objj_msgSend(_a9,"_respondToScrollWheelEventWithDeltaX:deltaY:",_ab,_ac);
}
}
}),new objj_method(sel_getUid("scrollPageUp:"),function(_ad,_ae,_af){
with(_ad){
var _b0=objj_msgSend(_contentView,"bounds");
objj_msgSend(_ad,"moveByOffset:",CGSizeMake(0,-((_b0.size.height)-_verticalPageScroll)));
}
}),new objj_method(sel_getUid("scrollPageDown:"),function(_b1,_b2,_b3){
with(_b1){
var _b4=objj_msgSend(_contentView,"bounds");
objj_msgSend(_b1,"moveByOffset:",CGSizeMake(0,(_b4.size.height)-_verticalPageScroll));
}
}),new objj_method(sel_getUid("scrollToBeginningOfDocument:"),function(_b5,_b6,_b7){
with(_b5){
objj_msgSend(_contentView,"scrollToPoint:",{x:0,y:0});
objj_msgSend(_headerClipView,"scrollToPoint:",{x:0,y:0});
}
}),new objj_method(sel_getUid("scrollToEndOfDocument:"),function(_b8,_b9,_ba){
with(_b8){
var _bb=objj_msgSend(_contentView,"bounds"),_bc=objj_msgSend(objj_msgSend(_b8,"documentView"),"frame"),_bd={x:0,y:(_bc.size.height)-(_bb.size.height)};
objj_msgSend(_contentView,"scrollToPoint:",_bd);
objj_msgSend(_headerClipView,"scrollToPoint:",{x:0,y:0});
}
}),new objj_method(sel_getUid("moveLeft:"),function(_be,_bf,_c0){
with(_be){
objj_msgSend(_be,"moveByOffset:",CGSizeMake(-_horizontalLineScroll,0));
}
}),new objj_method(sel_getUid("moveRight:"),function(_c1,_c2,_c3){
with(_c1){
objj_msgSend(_c1,"moveByOffset:",CGSizeMake(_horizontalLineScroll,0));
}
}),new objj_method(sel_getUid("moveUp:"),function(_c4,_c5,_c6){
with(_c4){
objj_msgSend(_c4,"moveByOffset:",CGSizeMake(0,-_verticalLineScroll));
}
}),new objj_method(sel_getUid("moveDown:"),function(_c7,_c8,_c9){
with(_c7){
objj_msgSend(_c7,"moveByOffset:",CGSizeMake(0,_verticalLineScroll));
}
}),new objj_method(sel_getUid("moveByOffset:"),function(_ca,_cb,_cc){
with(_ca){
var _cd=objj_msgSend(objj_msgSend(_ca,"documentView"),"frame"),_ce=objj_msgSend(_contentView,"bounds");
_ce.origin.x+=_cc.width;
_ce.origin.y+=_cc.height;
objj_msgSend(_contentView,"scrollToPoint:",_ce.origin);
objj_msgSend(_headerClipView,"scrollToPoint:",CGPointMake(_ce.origin.x,0));
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("defaultThemeClass"),function(_cf,_d0){
with(_cf){
return "scrollview";
}
}),new objj_method(sel_getUid("themeAttributes"),function(_d1,_d2){
with(_d1){
return objj_msgSend(CPDictionary,"dictionaryWithJSObject:",{"bottom-corner-color":objj_msgSend(CPColor,"whiteColor"),"border-color":objj_msgSend(CPColor,"blackColor")});
}
}),new objj_method(sel_getUid("contentSizeForFrameSize:hasHorizontalScroller:hasVerticalScroller:borderType:"),function(_d3,_d4,_d5,_d6,_d7,_d8){
with(_d3){
var _d9=objj_msgSend(_d3,"_insetBounds:borderType:",{origin:{x:0,y:0},size:{width:_d5.width,height:_d5.height}},_d8),_da=objj_msgSend(CPScroller,"scrollerWidth");
if(_d6){
_d9.size.height-=_da;
}
if(_d7){
_d9.size.width-=_da;
}
return _d9.size;
}
}),new objj_method(sel_getUid("frameSizeForContentSize:hasHorizontalScroller:hasVerticalScroller:borderType:"),function(_db,_dc,_dd,_de,_df,_e0){
with(_db){
var _e1=objj_msgSend(_db,"_insetBounds:borderType:",{origin:{x:0,y:0},size:{width:_dd.width,height:_dd.height}},_e0),_e2=_dd.width-_e1.size.width,_e3=_dd.height-_e1.size.height,_e4={width:_dd.width+_e2,height:_dd.height+_e3},_e5=objj_msgSend(CPScroller,"scrollerWidth");
if(_de){
_e4.height-=_e5;
}
if(_df){
_e4.width-=_e5;
}
return _e4;
}
}),new objj_method(sel_getUid("_insetBounds:borderType:"),function(_e6,_e7,_e8,_e9){
with(_e6){
switch(_e9){
case CPLineBorder:
case CPBezelBorder:
return {origin:{x:_e8.origin.x+1,y:_e8.origin.y+1},size:{width:_e8.size.width-2*1,height:_e8.size.height-2*1}};
case CPGrooveBorder:
_e8={origin:{x:_e8.origin.x+2,y:_e8.origin.y+2},size:{width:_e8.size.width-2*2,height:_e8.size.height-2*2}};
++_e8.origin.y;
--_e8.size.height;
return _e8;
case CPNoBorder:
default:
return _e8;
}
}
})]);
var _ea="CPScrollViewContentView",_eb="CPScrollViewHeaderClipViewKey",_ec="CPScrollViewVLineScroll",_ed="CPScrollViewHLineScroll",_ee="CPScrollViewVPageScroll",_ef="CPScrollViewHPageScroll",_f0="CPScrollViewHasVScroller",_f1="CPScrollViewHasHScroller",_f2="CPScrollViewVScroller",_f3="CPScrollViewHScroller",_f4="CPScrollViewAutohidesScroller",_f5="CPScrollViewCornerViewKey",_f6="CPScrollViewBottomCornerViewKey",_f7="CPScrollViewBorderTypeKey";
var _1=objj_getClass("CPScrollView");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPScrollView\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_f8,_f9,_fa){
with(_f8){
if(_f8=objj_msgSendSuper({receiver:_f8,super_class:objj_getClass("CPScrollView").super_class},"initWithCoder:",_fa)){
_verticalLineScroll=objj_msgSend(_fa,"decodeFloatForKey:",_ec);
_verticalPageScroll=objj_msgSend(_fa,"decodeFloatForKey:",_ee);
_horizontalLineScroll=objj_msgSend(_fa,"decodeFloatForKey:",_ed);
_horizontalPageScroll=objj_msgSend(_fa,"decodeFloatForKey:",_ef);
_contentView=objj_msgSend(_fa,"decodeObjectForKey:",_ea);
_headerClipView=objj_msgSend(_fa,"decodeObjectForKey:",_eb);
if(!_headerClipView){
_headerClipView=objj_msgSend(objj_msgSend(CPClipView,"alloc"),"init");
objj_msgSend(_f8,"addSubview:",_headerClipView);
}
_verticalScroller=objj_msgSend(_fa,"decodeObjectForKey:",_f2);
_horizontalScroller=objj_msgSend(_fa,"decodeObjectForKey:",_f3);
_hasVerticalScroller=objj_msgSend(_fa,"decodeBoolForKey:",_f0);
_hasHorizontalScroller=objj_msgSend(_fa,"decodeBoolForKey:",_f1);
_autohidesScrollers=objj_msgSend(_fa,"decodeBoolForKey:",_f4);
_borderType=objj_msgSend(_fa,"decodeIntForKey:",_f7);
_cornerView=objj_msgSend(_fa,"decodeObjectForKey:",_f5);
_bottomCornerView=objj_msgSend(_fa,"decodeObjectForKey:",_f6);
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"performSelector:target:argument:order:modes:",sel_getUid("_updateCornerAndHeaderView"),_f8,_contentView,0,[CPDefaultRunLoopMode]);
}
return _f8;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_fb,_fc,_fd){
with(_fb){
objj_msgSendSuper({receiver:_fb,super_class:objj_getClass("CPScrollView").super_class},"encodeWithCoder:",_fd);
objj_msgSend(_fd,"encodeObject:forKey:",_contentView,_ea);
objj_msgSend(_fd,"encodeObject:forKey:",_headerClipView,_eb);
objj_msgSend(_fd,"encodeObject:forKey:",_verticalScroller,_f2);
objj_msgSend(_fd,"encodeObject:forKey:",_horizontalScroller,_f3);
objj_msgSend(_fd,"encodeFloat:forKey:",_verticalLineScroll,_ec);
objj_msgSend(_fd,"encodeFloat:forKey:",_verticalPageScroll,_ee);
objj_msgSend(_fd,"encodeFloat:forKey:",_horizontalLineScroll,_ed);
objj_msgSend(_fd,"encodeFloat:forKey:",_horizontalPageScroll,_ef);
objj_msgSend(_fd,"encodeBool:forKey:",_hasVerticalScroller,_f0);
objj_msgSend(_fd,"encodeBool:forKey:",_hasHorizontalScroller,_f1);
objj_msgSend(_fd,"encodeBool:forKey:",_autohidesScrollers,_f4);
objj_msgSend(_fd,"encodeObject:forKey:",_cornerView,_f5);
objj_msgSend(_fd,"encodeObject:forKey:",_bottomCornerView,_f6);
objj_msgSend(_fd,"encodeInt:forKey:",_borderType,_f7);
}
})]);
