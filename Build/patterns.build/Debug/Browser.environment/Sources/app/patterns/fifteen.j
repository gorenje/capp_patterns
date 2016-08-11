@STATIC;1.0;t;1496;{var the_class = objj_allocateClassPair(PatternOne, "PatternFifteen"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternFifteen__defaultConfig(self, _cmd)
{ with(self)
{
  return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", 6, "number_of_points", 2, "recurse_depth", 1.18, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 350, 350), "center_point", 84, "radius", YES, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 85, 85, 85, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 23, 41, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 15, 12, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 23, 10, 1)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 225, 255, 221, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 28, 248, 12, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 29, 44, 255, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 239, 198, 151, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 202, 132, 78, 0.9545454545454546),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0)], "fill_colors");
}
},["CPDict"])]);
}

