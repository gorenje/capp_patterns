@STATIC;1.0;t;2317;
CPKeyCodes={BACKSPACE:8,TAB:9,NUM_CENTER:12,ENTER:13,SHIFT:16,CTRL:17,ALT:18,PAUSE:19,CAPS_LOCK:20,ESC:27,SPACE:32,PAGE_UP:33,PAGE_DOWN:34,END:35,HOME:36,LEFT:37,UP:38,RIGHT:39,DOWN:40,PRINT_SCREEN:44,INSERT:45,DELETE:46,ZERO:48,ONE:49,TWO:50,THREE:51,FOUR:52,FIVE:53,SIX:54,SEVEN:55,EIGHT:56,NINE:57,QUESTION_MARK:63,A:65,B:66,C:67,D:68,E:69,F:70,G:71,H:72,I:73,J:74,K:75,L:76,M:77,N:78,O:79,P:80,Q:81,R:82,S:83,T:84,U:85,V:86,W:87,X:88,Y:89,Z:90,META:91,CONTEXT_MENU:93,NUM_ZERO:96,NUM_ONE:97,NUM_TWO:98,NUM_THREE:99,NUM_FOUR:100,NUM_FIVE:101,NUM_SIX:102,NUM_SEVEN:103,NUM_EIGHT:104,NUM_NINE:105,NUM_MULTIPLY:106,NUM_PLUS:107,NUM_MINUS:109,NUM_PERIOD:110,NUM_DIVISION:111,F1:112,F2:113,F3:114,F4:115,F5:116,F6:117,F7:118,F8:119,F9:120,F10:121,F11:122,F12:123,NUMLOCK:144,SEMICOLON:186,DASH:189,EQUALS:187,COMMA:188,PERIOD:190,SLASH:191,APOSTROPHE:192,SINGLE_QUOTE:222,OPEN_SQUARE_BRACKET:219,BACKSLASH:220,CLOSE_SQUARE_BRACKET:221,WIN_KEY:224,MAC_FF_META:224,WIN_IME:229};
CPKeyCodes.firesKeyPressEvent=function(_1,_2,_3,_4,_5){
if(!CPFeatureIsCompatible(CPJavaScriptRemedialKeySupport)){
return true;
}
if(CPBrowserIsOperatingSystem(CPMacOperatingSystem)&&_5){
return CPKeyCodes.isCharacterKey(_1);
}
if(_5&&!_4){
return false;
}
if(CPBrowserIsEngine(CPInternetExplorerBrowserEngine)&&!_3&&(_4||_5)){
return false;
}
if(CPBrowserIsEngine(CPInternetExplorerBrowserEngine)&&_4&&_2==_1){
return false;
}
switch(_1){
case CPKeyCodes.ENTER:
return true;
case CPKeyCodes.ESC:
return !CPBrowserIsEngine(CPWebKitBrowserEngine);
}
return CPKeyCodes.isCharacterKey(_1);
};
CPKeyCodes.isCharacterKey=function(_6){
if(_6>=CPKeyCodes.ZERO&&_6<=CPKeyCodes.NINE){
return true;
}
if(_6>=CPKeyCodes.NUM_ZERO&&_6<=CPKeyCodes.NUM_MULTIPLY){
return true;
}
if(_6>=CPKeyCodes.A&&_6<=CPKeyCodes.Z){
return true;
}
switch(_6){
case CPKeyCodes.SPACE:
case CPKeyCodes.QUESTION_MARK:
case CPKeyCodes.NUM_PLUS:
case CPKeyCodes.NUM_MINUS:
case CPKeyCodes.NUM_PERIOD:
case CPKeyCodes.NUM_DIVISION:
case CPKeyCodes.SEMICOLON:
case CPKeyCodes.DASH:
case CPKeyCodes.EQUALS:
case CPKeyCodes.COMMA:
case CPKeyCodes.PERIOD:
case CPKeyCodes.SLASH:
case CPKeyCodes.APOSTROPHE:
case CPKeyCodes.SINGLE_QUOTE:
case CPKeyCodes.OPEN_SQUARE_BRACKET:
case CPKeyCodes.BACKSLASH:
case CPKeyCodes.CLOSE_SQUARE_BRACKET:
return true;
default:
return false;
}
};
