@STATIC;1.0;t;1644;{var the_class = objj_allocateClassPair(PatternSeven, "PatternTwelve"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternTwelve__defaultConfig(self, _cmd)
{ with(self)
{
 return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 255, 1), "background_color", 12, "number_of_points", 0, "rotation", 0, "recurse_depth", 1.14, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 350, 350), "center_point", 146, "radius", YES, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 174, 174, 174, 0.07727272727272727),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.15454545454545454),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.2727272727272727),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 85, 85, 85, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 2, 10, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 23, 10, 1)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 96, 175, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 23, 200, 10, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0)], "fill_colors");
}
},["CPDict"])]);
}

