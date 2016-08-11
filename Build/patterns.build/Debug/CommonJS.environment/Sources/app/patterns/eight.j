@STATIC;1.0;t;1579;{var the_class = objj_allocateClassPair(PatternOne, "PatternEight"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternEight__defaultConfig(self, _cmd)
{ with(self)
{
  return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 174, 174, 174, 1), "background_color", 6, "number_of_points", 0, "rotation", 2, "recurse_depth", 1.54, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 350, 350), "center_point", 107, "radius", YES, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 255, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 4, 19, 255, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 23, 10, 0)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 225, 58, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 23, 198, 63, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 2, 8, 198, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 240, 31, 50, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 198, 195, 31, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0)], "fill_colors");
}
},["CPDict"])]);
}

