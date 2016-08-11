@STATIC;1.0;t;1651;{var the_class = objj_allocateClassPair(PatternTwenty, "PatternTwentyOne"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternTwentyOne__defaultConfig(self, _cmd)
{ with(self)
{
 return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 94, 59, 255, 1), "background_color", 50, "number_of_points", 0, "rotation", 0, "recurse_depth", 1.12, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 350, 350), "center_point", 158, "radius", YES, "show_shapes",
[objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 100, 0),
objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0),
objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0),
objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0),
objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 2, 10, 1),
objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 23, 10, 1)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 51, 32, 255, 0.8),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0.08181818181818182),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0.08181818181818182),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 185, 181, 21, 0.7181818181818181),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 23, 200, 10, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0)], "fill_colors");
}
},["CPDict"])]);
}

