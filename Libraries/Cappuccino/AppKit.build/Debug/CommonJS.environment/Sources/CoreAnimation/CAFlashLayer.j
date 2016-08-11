@STATIC;1.0;i;9;CALayer.ji;14;CPFlashMovie.jt;1140;objj_executeFile("CALayer.j", YES);
objj_executeFile("CPFlashMovie.j", YES);
{var the_class = objj_allocateClassPair(CALayer, "CAFlashLayer"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_flashMovie")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("setFlashMovie:"), function $CAFlashLayer__setFlashMovie_(self, _cmd, aFlashMovie)
{ with(self)
{
    if (_flashMovie == aFlashMovie)
        return;
    _flashMovie = aFlashMovie;
    _DOMElement.innerHTML = "<object width = \"100%\" height = \"100%\"><param name = \"movie\" value = \"" +
                            aFlashMovie._fileName +
                            "\"></param><param name = \"wmode\" value = \"transparent\"></param><embed src = \"" +
                            aFlashMovie._fileName + "\" type = \"application/x-shockwave-flash\" wmode = \"transparent\" width = \"100%\" height = \"100%\"></embed></object>";
}
},["void","CPFlashMovie"]), new objj_method(sel_getUid("flashMovie"), function $CAFlashLayer__flashMovie(self, _cmd)
{ with(self)
{
    return _flashMovie;
}
},["CPFlashMovie"])]);
}

