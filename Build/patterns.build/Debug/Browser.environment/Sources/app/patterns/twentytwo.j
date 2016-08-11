@STATIC;1.0;t;1650;{var the_class = objj_allocateClassPair(PatternFour, "PatternTwentyTwo"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternTwentyTwo__defaultConfig(self, _cmd)
{ with(self)
{
  return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 255, 1), "background_color", 6, "number_of_points", 0, "rotation", 0, "recurse_depth", 1.22, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 350, 350), "center_point", 118, "radius", NO, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.2545454545454545),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.34545454545454546),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 85, 85, 85, 0.4909090909090909),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 85, 85, 85, 0.16363636363636364),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 85, 85, 85, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 85, 85, 85, 1)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 0, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 255, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 130, 18, 120, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 76, 156, 180, 0)], "fill_colors");
}
},["CPDict"])]);
}

