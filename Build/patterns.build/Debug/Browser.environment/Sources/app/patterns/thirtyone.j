@STATIC;1.0;t;2045;

{var the_class = objj_allocateClassPair(PatternTwentySix, "PatternThirtyOne"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternThirtyOne__defaultConfig(self, _cmd)
{ with(self)
{
 return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(objj_msgSend(GRColor, "alloc"), "initWithGradientColors:baseColor:", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 0, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 39, 19, 35, 0.6454545454545455),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.16363636363636364)], objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 3, 3, 3, 1)), "background_color", 0, "background_color_direction", 14, "number_of_points", 0, "rotation", 2, "recurse_depth", 0.44, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 593, 353), "center_point", 79, "radius", NO, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0.5409090909090909),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 23, 255, 10, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 14, 10, 255, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 2, 10, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 23, 10, 1)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 252, 255, 13, 0.33636363636363636),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 198, 157, 165, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0.02727272727272727),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 2, 8, 0.5),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 0, 0.7772727272727272),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 1)], "fill_colors");
}
},["CPDict"])]);
}

