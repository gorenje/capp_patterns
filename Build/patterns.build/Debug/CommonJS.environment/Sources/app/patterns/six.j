@STATIC;1.0;t;1671;{var the_class = objj_allocateClassPair(PatternTwo, "PatternSix"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternSix__defaultConfig(self, _cmd)
{ with(self)
{
return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 132, 132, 132, 1), "background_color", 50, "number_of_points", 0, "rotation", 0, "recurse_depth", 0.88, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 350, 350), "center_point", 181, "radius", YES, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 221, 88, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 37, 15, 255, 0.7727272727272727),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 0, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 2, 13, 2, 0.20909090909090908),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 146, 26, 255, 0.9363636363636364),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 51, 32, 255, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 198, 157, 165, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0.02727272727272727),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 201, 8, 37, 0.39545454545454545),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 23, 200, 10, 0.4),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0)], "fill_colors");
}
},["CPDict"])]);
}

