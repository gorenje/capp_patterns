@STATIC;1.0;t;2206;{var the_class = objj_allocateClassPair(PatternThree, "PatternTwentyEight"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternTwentyEight__defaultConfig(self, _cmd)
{ with(self)
{
 return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(objj_msgSend(GRColor, "alloc"), "initWithGradientColors:baseColor:", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 184, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 255, 0.8227272727272728),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.3090909090909091),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 255, 0.7909090909090909),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 184, 1)], objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 255, 1)), "background_color", 1, "background_color_direction", 50, "number_of_points", 180, "rotation", 0, "recurse_depth", 0.98, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 821, 484), "center_point", 152, "radius", NO, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 174, 174, 174, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 114, 255, 13, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 255, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 83, 255, 89, 0.25),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 2, 10, 0.12272727272727273),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 184, 0.21363636363636362)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 0, 0.031818181818181815),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 96, 175, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 23, 200, 10, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0)], "fill_colors");
}
},["CPDict"])]);
}
