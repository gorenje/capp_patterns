@STATIC;1.0;t;1678;{var the_class = objj_allocateClassPair(PatternSixteen, "PatternTwentyThree"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternTwentyThree__defaultConfig(self, _cmd)
{ with(self)
{
  return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 255, 1), "background_color", 10, "number_of_points", 53, "rotation", 0, "recurse_depth", 1.58, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 350, 350), "center_point", 93, "radius", YES, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.33636363636363636),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.3),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 85, 85, 85, 0.5909090909090909),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.2818181818181818),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.2818181818181818),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.2727272727272727)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 36, 49, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 42, 38, 247, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 25, 49, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 240, 31, 50, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 35, 39, 191, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0)], "fill_colors");
}
},["CPDict"])]);
}

