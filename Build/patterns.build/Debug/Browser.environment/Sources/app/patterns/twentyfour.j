@STATIC;1.0;t;1753;{var the_class = objj_allocateClassPair(PatternOne, "PatternTwentyFour"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternTwentyFour__defaultConfig(self, _cmd)
{ with(self)
{
  return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 255, 1), "background_color", 6, "number_of_points", 20, "rotation", 1, "recurse_depth", 1.98, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 350, 350), "center_point", 76, "radius", YES, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.09090909090909091),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.16363636363636364),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 85, 85, 85, 0.20909090909090908),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 0, 0, 0.22727272727272727),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 0, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 23, 10, 0)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 48, 26, 255, 0.3090909090909091),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 247, 52, 76, 0.16363636363636364),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 235, 52, 0.06818181818181818),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 60, 36, 239, 0.5545454545454546),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 191, 188, 30, 0.10909090909090909),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0)], "fill_colors");
}
},["CPDict"])]);
}

