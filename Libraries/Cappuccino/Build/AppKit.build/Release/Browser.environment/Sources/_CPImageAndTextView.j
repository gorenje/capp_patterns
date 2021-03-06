@STATIC;1.0;I;21;Foundation/CPString.ji;9;CPColor.ji;8;CPFont.ji;9;CPImage.ji;8;CPView.ji;11;CPControl.jt;13470;
objj_executeFile("Foundation/CPString.j",NO);
objj_executeFile("CPColor.j",YES);
objj_executeFile("CPFont.j",YES);
objj_executeFile("CPImage.j",YES);
objj_executeFile("CPView.j",YES);
objj_executeFile("CPControl.j",YES);
var _1=1<<0,_2=1<<1,_3=1<<2,_4=1<<3,_5=1<<4,_6=1<<5,_7=1<<6,_8=1<<7,_9=1<<8,_a=1<<9,_b=1<<10;
var _c=objj_allocateClassPair(CPView,"_CPImageAndTextView"),_d=_c.isa;
class_addIvars(_c,[new objj_ivar("_alignment"),new objj_ivar("_verticalAlignment"),new objj_ivar("_lineBreakMode"),new objj_ivar("_textColor"),new objj_ivar("_font"),new objj_ivar("_textShadowColor"),new objj_ivar("_textShadowOffset"),new objj_ivar("_imagePosition"),new objj_ivar("_imageScaling"),new objj_ivar("_imageOffset"),new objj_ivar("_shouldDimImage"),new objj_ivar("_image"),new objj_ivar("_text"),new objj_ivar("_textSize"),new objj_ivar("_flags"),new objj_ivar("_DOMImageElement"),new objj_ivar("_DOMTextElement"),new objj_ivar("_DOMTextShadowElement")]);
objj_registerClassPair(_c);
class_addMethods(_c,[new objj_method(sel_getUid("initWithFrame:control:"),function(_e,_f,_10,_11){
with(_e){
_e=objj_msgSendSuper({receiver:_e,super_class:objj_getClass("_CPImageAndTextView").super_class},"initWithFrame:",_10);
if(_e){
_textShadowOffset={width:0,height:0};
objj_msgSend(_e,"setVerticalAlignment:",CPTopVerticalTextAlignment);
if(_11){
objj_msgSend(_e,"setLineBreakMode:",objj_msgSend(_11,"lineBreakMode"));
objj_msgSend(_e,"setTextColor:",objj_msgSend(_11,"textColor"));
objj_msgSend(_e,"setAlignment:",objj_msgSend(_11,"alignment"));
objj_msgSend(_e,"setVerticalAlignment:",objj_msgSend(_11,"verticalAlignment"));
objj_msgSend(_e,"setFont:",objj_msgSend(_11,"font"));
objj_msgSend(_e,"setImagePosition:",objj_msgSend(_11,"imagePosition"));
objj_msgSend(_e,"setImageScaling:",objj_msgSend(_11,"imageScaling"));
objj_msgSend(_e,"setImageOffset:",objj_msgSend(_11,"imageOffset"));
}else{
objj_msgSend(_e,"setLineBreakMode:",CPLineBreakByClipping);
objj_msgSend(_e,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(_e,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",12));
objj_msgSend(_e,"setImagePosition:",CPNoImage);
objj_msgSend(_e,"setImageScaling:",CPScaleNone);
}
_textSize=nil;
}
return _e;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_12,_13,_14){
with(_12){
return objj_msgSend(_12,"initWithFrame:control:",_14,nil);
}
}),new objj_method(sel_getUid("setAlignment:"),function(_15,_16,_17){
with(_15){
if(_alignment===_17){
return;
}
_alignment=_17;
switch(_alignment){
case CPLeftTextAlignment:
_DOMElement.style.textAlign="left";
break;
case CPRightTextAlignment:
_DOMElement.style.textAlign="right";
break;
case CPCenterTextAlignment:
_DOMElement.style.textAlign="center";
break;
case CPJustifiedTextAlignment:
_DOMElement.style.textAlign="justify";
break;
case CPNaturalTextAlignment:
_DOMElement.style.textAlign="";
break;
}
}
}),new objj_method(sel_getUid("alignment"),function(_18,_19){
with(_18){
return _alignment;
}
}),new objj_method(sel_getUid("setVerticalAlignment:"),function(_1a,_1b,_1c){
with(_1a){
if(_verticalAlignment===_1c){
return;
}
_verticalAlignment=_1c;
_flags|=_5;
objj_msgSend(_1a,"setNeedsLayout");
}
}),new objj_method(sel_getUid("verticalAlignment"),function(_1d,_1e){
with(_1d){
return _verticalAlignment;
}
}),new objj_method(sel_getUid("setLineBreakMode:"),function(_1f,_20,_21){
with(_1f){
if(_lineBreakMode===_21){
return;
}
_lineBreakMode=_21;
_flags|=_6;
objj_msgSend(_1f,"setNeedsLayout");
}
}),new objj_method(sel_getUid("lineBreakMode"),function(_22,_23){
with(_22){
return _lineBreakMode;
}
}),new objj_method(sel_getUid("setImagePosition:"),function(_24,_25,_26){
with(_24){
if(_imagePosition==_26){
return;
}
if(_imagePosition==CPNoImage){
_flags|=_2;
}
_imagePosition=_26;
_flags|=_a;
objj_msgSend(_24,"setNeedsLayout");
}
}),new objj_method(sel_getUid("imagePosition"),function(_27,_28){
with(_27){
return _imagePosition;
}
}),new objj_method(sel_getUid("setImageScaling:"),function(_29,_2a,_2b){
with(_29){
if(_imageScaling==_2b){
return;
}
_imageScaling=_2b;
_flags|=_b;
objj_msgSend(_29,"setNeedsLayout");
}
}),new objj_method(sel_getUid("imageScaling"),function(_2c,_2d){
with(_2c){
return _imageScaling;
}
}),new objj_method(sel_getUid("setDimsImage:"),function(_2e,_2f,_30){
with(_2e){
_30=!!_30;
if(_shouldDimImage!==_30){
_shouldDimImage=_30;
objj_msgSend(_2e,"setNeedsLayout");
}
}
}),new objj_method(sel_getUid("setTextColor:"),function(_31,_32,_33){
with(_31){
if(_textColor===_33){
return;
}
_textColor=_33;
_DOMElement.style.color=objj_msgSend(_textColor,"cssString");
}
}),new objj_method(sel_getUid("textColor"),function(_34,_35){
with(_34){
return _textColor;
}
}),new objj_method(sel_getUid("setFont:"),function(_36,_37,_38){
with(_36){
if(_font===_38){
return;
}
_font=_38;
_flags|=_8;
_textSize=nil;
objj_msgSend(_36,"setNeedsLayout");
}
}),new objj_method(sel_getUid("font"),function(_39,_3a){
with(_39){
return _font;
}
}),new objj_method(sel_getUid("setTextShadowColor:"),function(_3b,_3c,_3d){
with(_3b){
if(_textShadowColor===_3d){
return;
}
_textShadowColor=_3d;
_flags|=_9;
objj_msgSend(_3b,"setNeedsLayout");
}
}),new objj_method(sel_getUid("textShadowColor"),function(_3e,_3f){
with(_3e){
return _textShadowColor;
}
}),new objj_method(sel_getUid("setTextShadowOffset:"),function(_40,_41,_42){
with(_40){
if((_textShadowOffset.width==_42.width&&_textShadowOffset.height==_42.height)){
return;
}
_textShadowOffset={width:_42.width,height:_42.height};
objj_msgSend(_40,"setNeedsLayout");
}
}),new objj_method(sel_getUid("textShadowOffset"),function(_43,_44){
with(_43){
return _textShadowOffset;
}
}),new objj_method(sel_getUid("setImage:"),function(_45,_46,_47){
with(_45){
if(_image==_47){
return;
}
if(objj_msgSend(_image,"delegate")===_45){
objj_msgSend(_image,"setDelegate:",nil);
}
_image=_47;
_flags|=_2;
if(objj_msgSend(_image,"loadStatus")!==CPImageLoadStatusCompleted){
objj_msgSend(_image,"setDelegate:",_45);
}
objj_msgSend(_45,"setNeedsLayout");
}
}),new objj_method(sel_getUid("setImageOffset:"),function(_48,_49,_4a){
with(_48){
if(_imageOffset===_4a){
return;
}
_imageOffset=_4a;
objj_msgSend(_48,"setNeedsLayout");
}
}),new objj_method(sel_getUid("imageOffset"),function(_4b,_4c){
with(_4b){
return _imageOffset;
}
}),new objj_method(sel_getUid("imageDidLoad:"),function(_4d,_4e,_4f){
with(_4d){
if(_4f===_image){
_flags|=_2;
objj_msgSend(_4d,"setNeedsLayout");
}
}
}),new objj_method(sel_getUid("image"),function(_50,_51){
with(_50){
return _image;
}
}),new objj_method(sel_getUid("setText:"),function(_52,_53,_54){
with(_52){
if(_text===_54){
return;
}
_text=_54;
_flags|=_3;
_textSize=nil;
objj_msgSend(_52,"setNeedsLayout");
}
}),new objj_method(sel_getUid("text"),function(_55,_56){
with(_55){
return _text;
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_57,_58){
with(_57){
var _59=_imagePosition!==CPImageOnly&&(objj_msgSend(_text,"length")>0),_5a=!!_DOMTextElement;
if(_59!==_5a){
if(_5a){
_DOMElement.removeChild(_DOMTextElement);
_DOMTextElement=nil;
_5a=NO;
}else{
_DOMTextElement=document.createElement("div");
var _5b=_DOMTextElement.style;
_5b.position="absolute";
_5b.whiteSpace="pre";
_5b.zIndex=200;
_5b.overflow="hidden";
_DOMElement.appendChild(_DOMTextElement);
_5a=YES;
_flags|=_3|_8|_6;
}
}
var _5b=_5a?_DOMTextElement.style:nil;
var _5c=_5a&&!!_textShadowColor,_5d=!!_DOMTextShadowElement;
if(_5c!==_5d){
if(_5d){
_DOMElement.removeChild(_DOMTextShadowElement);
_DOMTextShadowElement=nil;
_5d=NO;
}else{
_DOMTextShadowElement=document.createElement("div");
var _5e=_DOMTextShadowElement.style;
_5e.font=objj_msgSend(_font?_font:objj_msgSend(CPFont,"systemFontOfSize:",12),"cssString");
_5e.position="absolute";
_5e.whiteSpace=_5b.whiteSpace;
_5e.wordWrap=_5b.wordWrap;
_5e.color=objj_msgSend(_textShadowColor,"cssString");
_5e.zIndex=150;
_5e.textOverflow=_5b.textOverflow;
if(document.attachEvent){
_5e.overflow=_5b.overflow;
}else{
_5e.overflowX=_5b.overflowX;
_5e.overflowY=_5b.overflowY;
}
_DOMElement.appendChild(_DOMTextShadowElement);
_5d=YES;
_flags|=_3;
}
}
var _5e=_5d?_DOMTextShadowElement.style:nil;
if(_5a){
if(_flags&_3){
if(CPFeatureIsCompatible(CPJavaScriptInnerTextFeature)){
_DOMTextElement.innerText=_text;
if(_DOMTextShadowElement){
_DOMTextShadowElement.innerText=_text;
}
}else{
if(CPFeatureIsCompatible(CPJavaScriptTextContentFeature)){
_DOMTextElement.textContent=_text;
if(_DOMTextShadowElement){
_DOMTextShadowElement.textContent=_text;
}
}
}
}
if(_flags&_8){
var _5f=objj_msgSend(_font?_font:objj_msgSend(CPFont,"systemFontOfSize:",12),"cssString");
_5b.font=_5f;
if(_5e){
_5e.font=_5f;
}
}
if(_flags&_6){
switch(_lineBreakMode){
case CPLineBreakByClipping:
_5b.overflow="hidden";
_5b.textOverflow="clip";
_5b.whiteSpace="pre";
_5b.wordWrap="normal";
break;
case CPLineBreakByTruncatingHead:
case CPLineBreakByTruncatingMiddle:
case CPLineBreakByTruncatingTail:
_5b.textOverflow="ellipsis";
_5b.whiteSpace="nowrap";
_5b.overflow="hidden";
_5b.wordWrap="normal";
break;
case CPLineBreakByCharWrapping:
case CPLineBreakByWordWrapping:
_5b.wordWrap="break-word";
try{
_5b.whiteSpace="pre";
_5b.whiteSpace="-o-pre-wrap";
_5b.whiteSpace="-pre-wrap";
_5b.whiteSpace="-moz-pre-wrap";
_5b.whiteSpace="pre-wrap";
}
catch(e){
_5b.whiteSpace="pre";
}
_5b.overflow="hidden";
_5b.textOverflow="clip";
break;
}
if(_5e){
if(document.attachEvent){
_5e.overflow=_5b.overflow;
}else{
_5e.overflowX=_5b.overflowX;
_5e.overflowY=_5b.overflowY;
}
_5e.wordWrap=_5b.wordWrap;
_5e.whiteSpace=_5b.whiteSpace;
_5e.textOverflow=_5b.textOverflow;
}
}
}
var _60=_image!==nil&&_imagePosition!==CPNoImage,_61=!!_DOMImageElement;
if(_60!==_61){
if(_61){
_DOMElement.removeChild(_DOMImageElement);
_DOMImageElement=nil;
_61=NO;
}else{
_DOMImageElement=document.createElement("img");
if(objj_msgSend(CPPlatform,"supportsDragAndDrop")){
_DOMImageElement.setAttribute("draggable","true");
_DOMImageElement.style["-khtml-user-drag"]="element";
}
var _62=_DOMImageElement.style;
_62.top="0px";
_62.left="0px";
_62.position="absolute";
_62.zIndex=100;
_DOMElement.appendChild(_DOMImageElement);
_61=YES;
}
}
var _63=objj_msgSend(_57,"bounds").size,_64={origin:{x:0,y:0},size:{width:_63.width,height:_63.height}};
if(_61){
if(!_62){
var _62=_DOMImageElement.style;
}
if(_flags&_2){
_DOMImageElement.src=objj_msgSend(_image,"filename");
}
var _65=_63.width/2,_66=_63.height/2,_67=objj_msgSend(_image,"size"),_68=_67.width,_69=_67.height;
if(_imageScaling===CPScaleToFit){
_68=_63.width;
_69=_63.height;
}else{
if(_imageScaling===CPScaleProportionally){
var _6a=MIN(MIN(_63.width,_68)/_68,MIN(_63.height,_69)/_69);
_68*=_6a;
_69*=_6a;
}
}
if(CPFeatureIsCompatible(CPOpacityRequiresFilterFeature)){
_62.filter="alpha(opacity="+_shouldDimImage?35:100+")";
}else{
_62.opacity=_shouldDimImage?0.35:1;
}
_DOMImageElement.width=_68;
_DOMImageElement.height=_69;
_62.width=MAX(_68,0)+"px";
_62.height=MAX(_69,0)+"px";
if(_imagePosition===CPImageBelow){
_62.left=FLOOR(_65-_68/2)+"px";
_62.top=FLOOR(_63.height-_69)+"px";
_64.size.height=_63.height-_69-_imageOffset;
}else{
if(_imagePosition===CPImageAbove){
_62.left=FLOOR(_65-_68/2)+"px";
_62.top=0+"px";
_64.origin.y+=_69+_imageOffset;
_64.size.height=_63.height-_69-_imageOffset;
}else{
if(_imagePosition===CPImageLeft){
_62.top=FLOOR(_66-_69/2)+"px";
_62.left="0px";
_64.origin.x=_68+_imageOffset;
_64.size.width-=_68+_imageOffset;
}else{
if(_imagePosition===CPImageRight){
_62.top=FLOOR(_66-_69/2)+"px";
_62.left=FLOOR(_63.width-_68)+"px";
_64.size.width-=_68+_imageOffset;
}else{
if(_imagePosition===CPImageOnly||_imagePosition==CPImageOverlaps){
_62.top=FLOOR(_66-_69/2)+"px";
_62.left=FLOOR(_65-_68/2)+"px";
}
}
}
}
}
}
if(_5a){
var _6b=(_64.origin.x),_6c=(_64.origin.y),_6d=(_64.size.width),_6e=(_64.size.height);
if(_verticalAlignment!==CPTopVerticalTextAlignment){
if(!_textSize){
if(_lineBreakMode===CPLineBreakByCharWrapping||_lineBreakMode===CPLineBreakByWordWrapping){
_textSize=objj_msgSend(_text,"sizeWithFont:inWidth:",_font,_6d);
}else{
_textSize=objj_msgSend(_text,"sizeWithFont:",_font);
}
}
if(_verticalAlignment===CPCenterVerticalTextAlignment){
_6c=_6c+(_6e-_textSize.height)/2;
_6e=_textSize.height;
}else{
_6c=_6c+_6e-_textSize.height;
_6e=_textSize.height;
}
}
_5b.top=ROUND(_6c)+"px";
_5b.left=ROUND(_6b)+"px";
_5b.width=MAX(ROUND(_6d),0)+"px";
_5b.height=MAX(ROUND(_6e),0)+"px";
if(_5e){
if(_flags&_9){
_5e.color=objj_msgSend(_textShadowColor,"cssString");
}
_5e.top=ROUND(_6c+_textShadowOffset.height)+"px";
_5e.left=ROUND(_6b+_textShadowOffset.width)+"px";
_5e.width=MAX(ROUND(_6d),0)+"px";
_5e.height=MAX(ROUND(_6e),0)+"px";
}
}
_flags=0;
}
}),new objj_method(sel_getUid("sizeToFit"),function(_6f,_70){
with(_6f){
var _71=CGSizeMakeZero();
if((_imagePosition!==CPNoImage)&&_image){
var _72=objj_msgSend(_image,"size");
_71.width+=_72.width;
_71.height+=_72.height;
}
if((_imagePosition!==CPImageOnly)&&objj_msgSend(_text,"length")>0){
if(!_textSize){
_textSize=objj_msgSend(_text,"sizeWithFont:",_font?_font:objj_msgSend(CPFont,"systemFontOfSize:",12));
}
if(!_image||_imagePosition===CPImageOverlaps){
_71.width=MAX(_71.width,_textSize.width);
_71.height=MAX(_71.height,_textSize.height);
}else{
if(_imagePosition===CPImageLeft||_imagePosition===CPImageRight){
_71.width+=_textSize.width+_imageOffset;
_71.height=MAX(_71.height,_textSize.height);
}else{
if(_imagePosition===CPImageAbove||_imagePosition===CPImageBelow){
_71.width=MAX(_71.width,_textSize.width);
_71.height+=_textSize.height+_imageOffset;
}
}
}
}
objj_msgSend(_6f,"setFrameSize:",_71);
}
})]);
