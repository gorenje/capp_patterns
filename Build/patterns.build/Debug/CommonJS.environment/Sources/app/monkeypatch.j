@STATIC;1.0;t;2156;{
var the_class = objj_getClass("CPColor")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPColor\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("addToBlue:"), function $CPColor__addToBlue_(self, _cmd, aValue)
{ with(self)
{
  return objj_msgSend(CPColor, "colorWithRed:green:blue:alpha:", objj_msgSend(self, "redComponent"), objj_msgSend(self, "greenComponent"), objj_msgSend(self, "blueComponent") + aValue/255, objj_msgSend(self, "alphaComponent"));
}
},["CPColor","int"]), new objj_method(sel_getUid("asInitString"), function $CPColor__asInitString(self, _cmd)
{ with(self)
{
  return objj_msgSend(CPString, "stringWithFormat:", "[CPColor colorWith8BitRed:%d green:%d blue:%d alpha:%f]",
           objj_msgSend(self, "redComponent")*255, objj_msgSend(self, "greenComponent")*255,
           objj_msgSend(self, "blueComponent")*255, objj_msgSend(self, "alphaComponent"));
}
},["CPString"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("colorWith8BitRed:green:blue:alpha:"), function $CPColor__colorWith8BitRed_green_blue_alpha_(self, _cmd, red, green, blue, alpha)
{ with(self)
{
  return objj_msgSend(CPColor, "colorWithRed:green:blue:alpha:", red/255.0, green/255.0, blue/255.0, alpha);
}
},["CPColor","int","int","int","float"]), new objj_method(sel_getUid("transparent"), function $CPColor__transparent(self, _cmd)
{ with(self)
{
  return objj_msgSend(CPColor, "colorWithWhite:alpha:", 0, 0);
}
},["CPColor"])]);
}
{
var the_class = objj_getClass("CPBox")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPBox\"");
var meta_class = the_class.isa;class_addMethods(meta_class, [new objj_method(sel_getUid("makeBorder:"), function $CPBox__makeBorder_(self, _cmd, aView)
{ with(self)
{
  var box = objj_msgSend(CPBox, "boxEnclosingView:", aView);
  objj_msgSend(box, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
  objj_msgSend(box, "setBorderColor:", objj_msgSend(CPColor, "colorWithHexString:", "a9aaae"));
  objj_msgSend(box, "setBorderType:", CPLineBorder);
  return box;
}
},["CPBox","CPView"])]);
}

