@STATIC;1.0;t;1640;{var the_class = objj_allocateClassPair(PatternThree, "PatternNineteen"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternNineteen__defaultConfig(self, _cmd)
{ with(self)
{
 return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 8, 8, 8, 1), "background_color", 6, "number_of_points", 23, "rotation", 2, "recurse_depth", 1.34, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 350, 350), "center_point", 88, "radius", YES, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 62, 255, 45, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 33, 44, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 85, 85, 85, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 254, 244, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 255, 0)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 0, 0, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 255, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 255, 0.21818181818181817),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 130, 18, 120, 0.21818181818181817),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 130, 18, 120, 0.21818181818181817)], "fill_colors");
}
},["CPDict"])]);
}

