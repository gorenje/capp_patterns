@STATIC;1.0;I;21;Foundation/CPObject.jt;4675;
objj_executeFile("Foundation/CPObject.j",NO);
CPSoundLoadStateEmpty=0;
CPSoundLoadStateLoading=1;
CPSoundLoadStateCanBePlayed=2;
CPSoundLoadStateError=3;
CPSoundPlayBackStatePlay=0;
CPSoundPlayBackStateStop=1;
CPSoundPlayBackStatePause=2;
var _1=objj_allocateClassPair(CPObject,"CPSound"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_name"),new objj_ivar("_delegate"),new objj_ivar("_audioTag"),new objj_ivar("_loadStatus"),new objj_ivar("_playBackStatus")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("name"),function(_3,_4){
with(_3){
return _name;
}
}),new objj_method(sel_getUid("setName:"),function(_5,_6,_7){
with(_5){
_name=_7;
}
}),new objj_method(sel_getUid("delegate"),function(_8,_9){
with(_8){
return _delegate;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_a,_b,_c){
with(_a){
_delegate=_c;
}
}),new objj_method(sel_getUid("init"),function(_d,_e){
with(_d){
if(_d=objj_msgSendSuper({receiver:_d,super_class:objj_getClass("CPSound").super_class},"init")){
_loadStatus=CPSoundLoadStateEmpty;
_loops=NO;
_audioTag=document.createElement("audio");
_audioTag.preload=YES;
_audioTag.addEventListener("canplay",function(){
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
objj_msgSend(_d,"_soundDidload");
},true);
_audioTag.addEventListener("ended",function(){
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
objj_msgSend(_d,"_soundDidEnd");
},true);
_audioTag.addEventListener("error",function(){
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
objj_msgSend(_d,"_soundError");
},true);
}
return _d;
}
}),new objj_method(sel_getUid("initWithContentsOfFile:byReference:"),function(_f,_10,_11,_12){
with(_f){
if(_f=objj_msgSend(_f,"init")){
_loadStatus=CPSoundLoadStateLoading;
_audioTag.src=_11;
}
return _f;
}
}),new objj_method(sel_getUid("initWithContentsOfURL:byReference:"),function(_13,_14,_15,_16){
with(_13){
return objj_msgSend(_13,"initWithContentsOfFile:byReference:",objj_msgSend(_15,"absoluteString"),NO);
}
}),new objj_method(sel_getUid("initWithData:"),function(_17,_18,_19){
with(_17){
if(_17=objj_msgSend(_17,"init")){
_loadStatus=CPSoundLoadStateLoading;
_audioTag.src=objj_msgSend(_19,"rawString");
}
return _17;
}
}),new objj_method(sel_getUid("_soundDidload"),function(_1a,_1b){
with(_1a){
_loadStatus=CPSoundLoadStateCanBePlayed;
}
}),new objj_method(sel_getUid("_soundDidEnd"),function(_1c,_1d){
with(_1c){
if(!objj_msgSend(_1c,"loops")){
objj_msgSend(_1c,"stop");
}
}
}),new objj_method(sel_getUid("_soundError"),function(_1e,_1f){
with(_1e){
_loadStatus=CPSoundLoadStateError;
CPLog.error("Cannot load sound. Maybe the format of your sound is not compatible with your browser.");
}
}),new objj_method(sel_getUid("play"),function(_20,_21){
with(_20){
if((_loadStatus!==CPSoundLoadStateCanBePlayed)||(_playBackStatus===CPSoundPlayBackStatePlay)){
return NO;
}
_audioTag.play();
_playBackStatus=CPSoundPlayBackStatePlay;
return YES;
}
}),new objj_method(sel_getUid("stop"),function(_22,_23){
with(_22){
if((_loadStatus!==CPSoundLoadStateCanBePlayed)||(_playBackStatus===CPSoundPlayBackStateStop)){
return NO;
}
_audioTag.pause();
_audioTag.currentTime=0;
_playBackStatus=CPSoundPlayBackStateStop;
if(_delegate&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("sound:didFinishPlaying:"))){
objj_msgSend(_delegate,"sound:didFinishPlaying:",_22,YES);
}
return YES;
}
}),new objj_method(sel_getUid("pause"),function(_24,_25){
with(_24){
if((_loadStatus!==CPSoundLoadStateCanBePlayed)||(_playBackStatus===CPSoundPlayBackStatePause)){
return NO;
}
_audioTag.pause();
_playBackStatus=CPSoundPlayBackStatePause;
return YES;
}
}),new objj_method(sel_getUid("resume"),function(_26,_27){
with(_26){
if((_loadStatus!==CPSoundLoadStateCanBePlayed)||(_playBackStatus!==CPSoundPlayBackStatePause)){
return NO;
}
_audioTag.play();
_playBackStatus=CPSoundPlayBackStatePlay;
return YES;
}
}),new objj_method(sel_getUid("loops"),function(_28,_29){
with(_28){
return _audioTag.loop;
}
}),new objj_method(sel_getUid("setLoops:"),function(_2a,_2b,_2c){
with(_2a){
_audioTag.loop=_2c;
}
}),new objj_method(sel_getUid("volume"),function(_2d,_2e){
with(_2d){
return _audioTag.volume;
}
}),new objj_method(sel_getUid("setVolume:"),function(_2f,_30,_31){
with(_2f){
if(_31>1){
_31=1;
}else{
if(_31<0){
_31=0;
}
}
_audioTag.volume=_31;
}
}),new objj_method(sel_getUid("duration"),function(_32,_33){
with(_32){
return _audioTag.duration;
}
}),new objj_method(sel_getUid("isPlaying"),function(_34,_35){
with(_34){
return (_playBackStatus===CPSoundPlayBackStatePlay);
}
})]);
