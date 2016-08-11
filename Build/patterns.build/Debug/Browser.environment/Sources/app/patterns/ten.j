@STATIC;1.0;t;1620;{var the_class = objj_allocateClassPair(PatternFive, "PatternTen"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternTen__defaultConfig(self, _cmd)
{ with(self)
{
return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 255, 1), "background_color", 12, "number_of_points", 0, "rotation", 0, "recurse_depth", 0.9, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 350, 350), "center_point", 164, "radius", YES, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.07272727272727272),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.15454545454545454),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.21818181818181817),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 51, 32, 255, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 198, 157, 165, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 9, 45, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 23, 200, 10, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 1)], "fill_colors");
}
},["CPDict"])]);
}

