@STATIC;1.0;t;2007;

{var the_class = objj_allocateClassPair(PatternSixteen, "PatternThirtyTwo"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternThirtyTwo__defaultConfig(self, _cmd)
{ with(self)
{
 return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(objj_msgSend(GRColor, "alloc"), "initWithGradientColors:baseColor:", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 0, 0, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 243, 15, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 0, 0, 1)], objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 2, 2, 2, 1)), "background_color", 0, "background_color_direction", 8, "number_of_points", 0, "rotation", 0, "recurse_depth", 1.7, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 289.5, 541), "center_point", 160, "radius", YES, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 85, 85, 85, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 148, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 153, 18, 88, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 40, 204, 33, 0.03636363636363636)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 27, 255, 61, 0.20909090909090908),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 42, 38, 247, 0.07272727272727272),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 25, 49, 0.18181818181818182),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 240, 31, 50, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 35, 39, 191, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0)], "fill_colors");
}
},["CPDict"])]);
}

