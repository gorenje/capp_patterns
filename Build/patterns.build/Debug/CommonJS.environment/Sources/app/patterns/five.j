@STATIC;1.0;t;1506;{var the_class = objj_allocateClassPair(PatternTwo, "PatternFive"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternFive__defaultConfig(self, _cmd)
{ with(self)
{
return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", 12, "number_of_points", 0, "recurse_depth", 1, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 350, 350), "center_point", 127, "radius", YES, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 100, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 37, 15, 255, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 0, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 17, 95, 17, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 14, 10, 255, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 51, 32, 255, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 198, 157, 165, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0.02727272727272727),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 9, 45, 0.39545454545454545),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 23, 200, 10, 0.4),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 1)], "fill_colors");
}
},["CPDict"])]);
}

