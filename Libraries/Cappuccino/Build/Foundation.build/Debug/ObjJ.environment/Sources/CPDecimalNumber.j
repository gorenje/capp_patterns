@STATIC;1.0;i;11;CPDecimal.ji;13;CPException.ji;10;CPNumber.ji;10;CPObject.ji;10;CPString.jt;33015;objj_executeFile("CPDecimal.j", YES);
objj_executeFile("CPException.j", YES);
objj_executeFile("CPNumber.j", YES);
objj_executeFile("CPObject.j", YES);
objj_executeFile("CPString.j", YES);
var CPDefaultDcmHandler = nil;
{var the_class = objj_allocateClassPair(CPObject, "CPDecimalNumberHandler"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_roundingMode"), new objj_ivar("_scale"), new objj_ivar("_raiseOnExactness"), new objj_ivar("_raiseOnOverflow"), new objj_ivar("_raiseOnUnderflow"), new objj_ivar("_raiseOnDivideByZero")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("init"), function $CPDecimalNumberHandler__init(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "initWithRoundingMode:scale:raiseOnExactness:raiseOnOverflow:raiseOnUnderflow:raiseOnDivideByZero:", CPRoundPlain, 0, NO, YES, YES, YES);
}
},["id"]), new objj_method(sel_getUid("initWithRoundingMode:scale:raiseOnExactness:raiseOnOverflow:raiseOnUnderflow:raiseOnDivideByZero:"), function $CPDecimalNumberHandler__initWithRoundingMode_scale_raiseOnExactness_raiseOnOverflow_raiseOnUnderflow_raiseOnDivideByZero_(self, _cmd, roundingMode, scale, exact, overflow, underflow, divideByZero)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPDecimalNumberHandler").super_class }, "init"))
    {
        _roundingMode = roundingMode;
        _scale = scale;
        _raiseOnExactness = exact;
        _raiseOnOverflow = overflow;
        _raiseOnUnderflow = underflow;
        _raiseOnDivideByZero = divideByZero;
    }
    return self;
}
},["id","CPRoundingMode","short","BOOL","BOOL","BOOL","BOOL"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("decimalNumberHandlerWithRoundingMode:scale:raiseOnExactness:raiseOnOverflow:raiseOnUnderflow:raiseOnDivideByZero:"), function $CPDecimalNumberHandler__decimalNumberHandlerWithRoundingMode_scale_raiseOnExactness_raiseOnOverflow_raiseOnUnderflow_raiseOnDivideByZero_(self, _cmd, roundingMode, scale, exact, overflow, underflow, divideByZero)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithRoundingMode:scale:raiseOnExactness:raiseOnOverflow:raiseOnUnderflow:raiseOnDivideByZero:", roundingMode, scale, exact, overflow, underflow, divideByZero);
}
},["id","CPRoundingMode","short","BOOL","BOOL","BOOL","BOOL"]), new objj_method(sel_getUid("defaultDecimalNumberHandler"), function $CPDecimalNumberHandler__defaultDecimalNumberHandler(self, _cmd)
{ with(self)
{
    if (!CPDefaultDcmHandler)
        CPDefaultDcmHandler = objj_msgSend(objj_msgSend(CPDecimalNumberHandler, "alloc"), "init");
    return CPDefaultDcmHandler;
}
},["id"])]);
}
{
var the_class = objj_getClass("CPDecimalNumberHandler")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPDecimalNumberHandler\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("roundingMode"), function $CPDecimalNumberHandler__roundingMode(self, _cmd)
{ with(self)
{
    return _roundingMode;
}
},["CPRoundingMode"]), new objj_method(sel_getUid("scale"), function $CPDecimalNumberHandler__scale(self, _cmd)
{ with(self)
{
    return _scale;
}
},["short"]), new objj_method(sel_getUid("exceptionDuringOperation:error:leftOperand:rightOperand:"), function $CPDecimalNumberHandler__exceptionDuringOperation_error_leftOperand_rightOperand_(self, _cmd, operation, error, leftOperand, rightOperand)
{ with(self)
{
    switch (error)
    {
        case CPCalculationNoError: break;
        case CPCalculationOverflow: if (_raiseOnOverflow)
                                                objj_msgSend(CPException, "raise:reason:", CPDecimalNumberOverflowException, ("A CPDecimalNumber overflow has occurred. (Left operand= '" + objj_msgSend(leftOperand, "descriptionWithLocale:", nil) + "' Right operand= '" + objj_msgSend(rightOperand, "descriptionWithLocale:", nil) + "' Selector= '" + operation + "')") );
                                            else
                                                return objj_msgSend(CPDecimalNumber, "notANumber");
                                            break;
        case CPCalculationUnderflow: if (_raiseOnUnderflow)
                                                objj_msgSend(CPException, "raise:reason:", CPDecimalNumberUnderflowException, ("A CPDecimalNumber underflow has occurred. (Left operand= '" + objj_msgSend(leftOperand, "descriptionWithLocale:", nil) + "' Right operand= '" + objj_msgSend(rightOperand, "descriptionWithLocale:", nil) + "' Selector= '" + operation + "')") );
                                            else
                                                return objj_msgSend(CPDecimalNumber, "notANumber");
                                            break;
        case CPCalculationLossOfPrecision: if (_raiseOnExactness)
                                                objj_msgSend(CPException, "raise:reason:", CPDecimalNumberExactnessException, ("A CPDecimalNumber has been rounded off during a calculation. (Left operand= '" + objj_msgSend(leftOperand, "descriptionWithLocale:", nil) + "' Right operand= '" + objj_msgSend(rightOperand, "descriptionWithLocale:", nil) + "' Selector= '" + operation + "')") );
                                            break;
        case CPCalculationDivideByZero: if (_raiseOnDivideByZero)
                                                objj_msgSend(CPException, "raise:reason:", CPDecimalNumberDivideByZeroException, ("A CPDecimalNumber divide by zero has occurred. (Left operand= '" + objj_msgSend(leftOperand, "descriptionWithLocale:", nil) + "' Right operand= '" + objj_msgSend(rightOperand, "descriptionWithLocale:", nil) + "' Selector= '" + operation + "')") );
                                            else
                                                return objj_msgSend(CPDecimalNumber, "notANumber");
                                            break;
        default: objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, ("An unknown CPDecimalNumber error has occurred. (Left operand= '" + objj_msgSend(leftOperand, "descriptionWithLocale:", nil) + "' Right operand= '" + objj_msgSend(rightOperand, "descriptionWithLocale:", nil) + "' Selector= '" + operation + "')") );
    }
    return nil;
}
},["CPDecimalNumber","SEL","CPCalculationError","CPDecimalNumber","CPDecimalNumber"])]);
}
var CPDecimalNumberHandlerRoundingModeKey = "CPDecimalNumberHandlerRoundingModeKey",
    CPDecimalNumberHandlerScaleKey = "CPDecimalNumberHandlerScaleKey",
    CPDecimalNumberHandlerRaiseOnExactKey = "CPDecimalNumberHandlerRaiseOnExactKey",
    CPDecimalNumberHandlerRaiseOnOverflowKey = "CPDecimalNumberHandlerRaiseOnOverflowKey",
    CPDecimalNumberHandlerRaiseOnUnderflowKey = "CPDecimalNumberHandlerRaiseOnUnderflowKey",
    CPDecimalNumberHandlerDivideByZeroKey = "CPDecimalNumberHandlerDivideByZeroKey";
{
var the_class = objj_getClass("CPDecimalNumberHandler")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPDecimalNumberHandler\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPDecimalNumberHandler__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self)
    {
        objj_msgSend(self, "initWithRoundingMode:scale:raiseOnExactness:raiseOnOverflow:raiseOnUnderflow:raiseOnDivideByZero:", objj_msgSend(aCoder, "decodeIntForKey:", CPDecimalNumberHandlerRoundingModeKey), objj_msgSend(aCoder, "decodeIntForKey:", CPDecimalNumberHandlerScaleKey), objj_msgSend(aCoder, "decodeBoolForKey:", CPDecimalNumberHandlerRaiseOnExactKey), objj_msgSend(aCoder, "decodeBoolForKey:", CPDecimalNumberHandlerRaiseOnOverflowKey), objj_msgSend(aCoder, "decodeBoolForKey:", CPDecimalNumberHandlerRaiseOnUnderflowKey), objj_msgSend(aCoder, "decodeBoolForKey:", CPDecimalNumberHandlerDivideByZeroKey));
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPDecimalNumberHandler__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSend(aCoder, "encodeInt:forKey:", objj_msgSend(self, "roundingMode"), CPDecimalNumberHandlerRoundingModeKey);
    objj_msgSend(aCoder, "encodeInt:forKey:", objj_msgSend(self, "scale"), CPDecimalNumberHandlerScaleKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", _raiseOnExactness, CPDecimalNumberHandlerRaiseOnExactKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", _raiseOnOverflow, CPDecimalNumberHandlerRaiseOnOverflowKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", _raiseOnUnderflow, CPDecimalNumberHandlerRaiseOnUnderflowKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", _raiseOnDivideByZero, CPDecimalNumberHandlerDivideByZeroKey);
}
},["void","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPNumber, "CPDecimalNumber"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_data")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("init"), function $CPDecimalNumber__init(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "initWithDecimal:", CPDecimalMakeNaN());
}
},["id"]), new objj_method(sel_getUid("initWithDecimal:"), function $CPDecimalNumber__initWithDecimal_(self, _cmd, dcm)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPDecimalNumber").super_class }, "init"))
        _data = CPDecimalCopy(dcm);
    return self;
}
},["id","CPDecimal"]), new objj_method(sel_getUid("initWithMantissa:exponent:isNegative:"), function $CPDecimalNumber__initWithMantissa_exponent_isNegative_(self, _cmd, mantissa, exponent, flag)
{ with(self)
{
    if (self = objj_msgSend(self, "init"))
    {
        if (flag)
            mantissa *= -1;
        _data = CPDecimalMakeWithParts(mantissa, exponent);
    }
    return self;
}
},["id","unsignedlonglong","short","BOOL"]), new objj_method(sel_getUid("initWithString:"), function $CPDecimalNumber__initWithString_(self, _cmd, numberValue)
{ with(self)
{
    return objj_msgSend(self, "initWithString:locale:", numberValue, nil);
}
},["id","CPString"]), new objj_method(sel_getUid("initWithString:locale:"), function $CPDecimalNumber__initWithString_locale_(self, _cmd, numberValue, locale)
{ with(self)
{
    if (self = objj_msgSend(self, "init"))
    {
        _data = CPDecimalMakeWithString(numberValue, locale);
    }
    return self;
}
},["id","CPString","CPDictionary"]), new objj_method(sel_getUid("decimalNumberByAdding:"), function $CPDecimalNumber__decimalNumberByAdding_(self, _cmd, decimalNumber)
{ with(self)
{
    return objj_msgSend(self, "decimalNumberByAdding:withBehavior:", decimalNumber, objj_msgSend(CPDecimalNumber, "defaultBehavior"));
}
},["CPDecimalNumber","CPDecimalNumber"]), new objj_method(sel_getUid("decimalNumberByAdding:withBehavior:"), function $CPDecimalNumber__decimalNumberByAdding_withBehavior_(self, _cmd, decimalNumber, behavior)
{ with(self)
{
    var result = CPDecimalMakeZero(),
        error = CPDecimalAdd(result, objj_msgSend(self, "decimalValue"), objj_msgSend(decimalNumber, "decimalValue"), objj_msgSend(behavior, "roundingMode"));
    if (error > CPCalculationNoError)
    {
        var res = objj_msgSend(behavior, "exceptionDuringOperation:error:leftOperand:rightOperand:", _cmd, error, self, decimalNumber);
        if (res != nil)
            return res;
    }
    return objj_msgSend(CPDecimalNumber, "decimalNumberWithDecimal:", result);
}
},["CPDecimalNumber","CPDecimalNumber","id<CPDecimalNumberBehaviors>"]), new objj_method(sel_getUid("decimalNumberBySubtracting:"), function $CPDecimalNumber__decimalNumberBySubtracting_(self, _cmd, decimalNumber)
{ with(self)
{
    return objj_msgSend(self, "decimalNumberBySubtracting:withBehavior:", decimalNumber, objj_msgSend(CPDecimalNumber, "defaultBehavior"));
}
},["CPDecimalNumber","CPDecimalNumber"]), new objj_method(sel_getUid("decimalNumberBySubtracting:withBehavior:"), function $CPDecimalNumber__decimalNumberBySubtracting_withBehavior_(self, _cmd, decimalNumber, behavior)
{ with(self)
{
    var result = CPDecimalMakeZero(),
        error = CPDecimalSubtract(result, objj_msgSend(self, "decimalValue"), objj_msgSend(decimalNumber, "decimalValue"), objj_msgSend(behavior, "roundingMode"));
    if (error > CPCalculationNoError)
    {
        var res = objj_msgSend(behavior, "exceptionDuringOperation:error:leftOperand:rightOperand:", _cmd, error, self, decimalNumber);
        if (res != nil)
            return res;
    }
    return objj_msgSend(CPDecimalNumber, "decimalNumberWithDecimal:", result);
}
},["CPDecimalNumber","CPDecimalNumber","id<CPDecimalNumberBehaviors>"]), new objj_method(sel_getUid("decimalNumberByDividingBy:"), function $CPDecimalNumber__decimalNumberByDividingBy_(self, _cmd, decimalNumber)
{ with(self)
{
    return objj_msgSend(self, "decimalNumberByDividingBy:withBehavior:", decimalNumber, objj_msgSend(CPDecimalNumber, "defaultBehavior"));
}
},["CPDecimalNumber","CPDecimalNumber"]), new objj_method(sel_getUid("decimalNumberByDividingBy:withBehavior:"), function $CPDecimalNumber__decimalNumberByDividingBy_withBehavior_(self, _cmd, decimalNumber, behavior)
{ with(self)
{
    var result = CPDecimalMakeZero(),
        error = CPDecimalDivide(result, objj_msgSend(self, "decimalValue"), objj_msgSend(decimalNumber, "decimalValue"), objj_msgSend(behavior, "roundingMode"));
    if (error > CPCalculationNoError)
    {
        var res = objj_msgSend(behavior, "exceptionDuringOperation:error:leftOperand:rightOperand:", _cmd, error, self, decimalNumber);
        if (res != nil)
            return res;
    }
    return objj_msgSend(CPDecimalNumber, "decimalNumberWithDecimal:", result);
}
},["CPDecimalNumber","CPDecimalNumber","id<CPDecimalNumberBehaviors>"]), new objj_method(sel_getUid("decimalNumberByMultiplyingBy:"), function $CPDecimalNumber__decimalNumberByMultiplyingBy_(self, _cmd, decimalNumber)
{ with(self)
{
    return objj_msgSend(self, "decimalNumberByMultiplyingBy:withBehavior:", decimalNumber, objj_msgSend(CPDecimalNumber, "defaultBehavior"));
}
},["CPDecimalNumber","CPDecimalNumber"]), new objj_method(sel_getUid("decimalNumberByMultiplyingBy:withBehavior:"), function $CPDecimalNumber__decimalNumberByMultiplyingBy_withBehavior_(self, _cmd, decimalNumber, behavior)
{ with(self)
{
    var result = CPDecimalMakeZero(),
        error = CPDecimalMultiply(result, objj_msgSend(self, "decimalValue"), objj_msgSend(decimalNumber, "decimalValue"), objj_msgSend(behavior, "roundingMode"));
    if (error > CPCalculationNoError)
    {
        var res = objj_msgSend(behavior, "exceptionDuringOperation:error:leftOperand:rightOperand:", _cmd, error, self, decimalNumber);
        if (res != nil)
            return res;
    }
    return objj_msgSend(CPDecimalNumber, "decimalNumberWithDecimal:", result);
}
},["CPDecimalNumber","CPDecimalNumber","id<CPDecimalNumberBehaviors>"]), new objj_method(sel_getUid("decimalNumberByMultiplyingByPowerOf10:"), function $CPDecimalNumber__decimalNumberByMultiplyingByPowerOf10_(self, _cmd, power)
{ with(self)
{
    return objj_msgSend(self, "decimalNumberByMultiplyingByPowerOf10:withBehavior:", power, objj_msgSend(CPDecimalNumber, "defaultBehavior"));
}
},["CPDecimalNumber","short"]), new objj_method(sel_getUid("decimalNumberByMultiplyingByPowerOf10:withBehavior:"), function $CPDecimalNumber__decimalNumberByMultiplyingByPowerOf10_withBehavior_(self, _cmd, power, behavior)
{ with(self)
{
    var result = CPDecimalMakeZero(),
        error = CPDecimalMultiplyByPowerOf10(result, objj_msgSend(self, "decimalValue"), power, objj_msgSend(behavior, "roundingMode"));
    if (error > CPCalculationNoError)
    {
        var res = objj_msgSend(behavior, "exceptionDuringOperation:error:leftOperand:rightOperand:", _cmd, error, self, objj_msgSend(CPDecimalNumber, "decimalNumberWithString:", power.toString()));
        if (res != nil)
            return res;
    }
    return objj_msgSend(CPDecimalNumber, "decimalNumberWithDecimal:", result);
}
},["CPDecimalNumber","short","id<CPDecimalNumberBehaviors>"]), new objj_method(sel_getUid("decimalNumberByRaisingToPower:"), function $CPDecimalNumber__decimalNumberByRaisingToPower_(self, _cmd, power)
{ with(self)
{
    return objj_msgSend(self, "decimalNumberByRaisingToPower:withBehavior:", power, objj_msgSend(CPDecimalNumber, "defaultBehavior"));
}
},["CPDecimalNumber","unsigned"]), new objj_method(sel_getUid("decimalNumberByRaisingToPower:withBehavior:"), function $CPDecimalNumber__decimalNumberByRaisingToPower_withBehavior_(self, _cmd, power, behavior)
{ with(self)
{
    if (power < 0)
        return objj_msgSend(behavior, "exceptionDuringOperation:error:leftOperand:rightOperand:", _cmd, -1, self, objj_msgSend(CPDecimalNumber, "decimalNumberWithString:", power.toString()));
    var result = CPDecimalMakeZero(),
        error = CPDecimalPower(result, objj_msgSend(self, "decimalValue"), power, objj_msgSend(behavior, "roundingMode"));
    if (error > CPCalculationNoError)
    {
        var res = objj_msgSend(behavior, "exceptionDuringOperation:error:leftOperand:rightOperand:", _cmd, error, self, objj_msgSend(CPDecimalNumber, "decimalNumberWithString:", power.toString()));
        if (res != nil)
            return res;
    }
    return objj_msgSend(CPDecimalNumber, "decimalNumberWithDecimal:", result);
}
},["CPDecimalNumber","unsigned","id<CPDecimalNumberBehaviors>"]), new objj_method(sel_getUid("decimalNumberByRoundingAccordingToBehavior:"), function $CPDecimalNumber__decimalNumberByRoundingAccordingToBehavior_(self, _cmd, behavior)
{ with(self)
{
    var result = CPDecimalMakeZero();
    CPDecimalRound(result, objj_msgSend(self, "decimalValue"), objj_msgSend(behavior, "scale"), objj_msgSend(behavior, "roundingMode"));
    return objj_msgSend(CPDecimalNumber, "decimalNumberWithDecimal:", result);
}
},["CPDecimalNumber","id<CPDecimalNumberBehaviors>"]), new objj_method(sel_getUid("compare:"), function $CPDecimalNumber__compare_(self, _cmd, aNumber)
{ with(self)
{
    if (!objj_msgSend(aNumber, "isKindOfClass:", objj_msgSend(CPDecimalNumber, "class")))
        aNumber = objj_msgSend(CPDecimalNumber, "decimalNumberWithString:", aNumber.toString());
    return CPDecimalCompare(objj_msgSend(self, "decimalValue"), objj_msgSend(aNumber, "decimalValue"));
}
},["CPComparisonResult","CPNumber"]), new objj_method(sel_getUid("objCType"), function $CPDecimalNumber__objCType(self, _cmd)
{ with(self)
{
    return "d";
}
},["CPString"]), new objj_method(sel_getUid("description"), function $CPDecimalNumber__description(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "descriptionWithLocale:", nil)
}
},["CPString"]), new objj_method(sel_getUid("descriptionWithLocale:"), function $CPDecimalNumber__descriptionWithLocale_(self, _cmd, locale)
{ with(self)
{
    return CPDecimalString(_data, locale);
}
},["CPString","CPDictionary"]), new objj_method(sel_getUid("stringValue"), function $CPDecimalNumber__stringValue(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "description");
}
},["CPString"]), new objj_method(sel_getUid("decimalValue"), function $CPDecimalNumber__decimalValue(self, _cmd)
{ with(self)
{
    return CPDecimalCopy(_data);
}
},["CPDecimal"]), new objj_method(sel_getUid("doubleValue"), function $CPDecimalNumber__doubleValue(self, _cmd)
{ with(self)
{
    return parseFloat(objj_msgSend(self, "stringValue"));
}
},["double"]), new objj_method(sel_getUid("boolValue"), function $CPDecimalNumber__boolValue(self, _cmd)
{ with(self)
{
    return (CPDecimalIsZero(_data))?NO:YES;
}
},["BOOL"]), new objj_method(sel_getUid("charValue"), function $CPDecimalNumber__charValue(self, _cmd)
{ with(self)
{
    return parseInt(objj_msgSend(self, "stringValue"));
}
},["char"]), new objj_method(sel_getUid("floatValue"), function $CPDecimalNumber__floatValue(self, _cmd)
{ with(self)
{
    return parseFloat(objj_msgSend(self, "stringValue"));
}
},["float"]), new objj_method(sel_getUid("intValue"), function $CPDecimalNumber__intValue(self, _cmd)
{ with(self)
{
    return parseInt(objj_msgSend(self, "stringValue"));
}
},["int"]), new objj_method(sel_getUid("longLongValue"), function $CPDecimalNumber__longLongValue(self, _cmd)
{ with(self)
{
    return parseInt(objj_msgSend(self, "stringValue"));
}
},["longlong"]), new objj_method(sel_getUid("longValue"), function $CPDecimalNumber__longValue(self, _cmd)
{ with(self)
{
    return parseInt(objj_msgSend(self, "stringValue"));
}
},["long"]), new objj_method(sel_getUid("shortValue"), function $CPDecimalNumber__shortValue(self, _cmd)
{ with(self)
{
    return parseInt(objj_msgSend(self, "stringValue"));
}
},["short"]), new objj_method(sel_getUid("unsignedCharValue"), function $CPDecimalNumber__unsignedCharValue(self, _cmd)
{ with(self)
{
    return parseInt(objj_msgSend(self, "stringValue"));
}
},["unsignedchar"]), new objj_method(sel_getUid("unsignedIntValue"), function $CPDecimalNumber__unsignedIntValue(self, _cmd)
{ with(self)
{
    return parseInt(objj_msgSend(self, "stringValue"));
}
},["unsignedint"]), new objj_method(sel_getUid("unsignedLongValue"), function $CPDecimalNumber__unsignedLongValue(self, _cmd)
{ with(self)
{
    return parseInt(objj_msgSend(self, "stringValue"));
}
},["unsignedlong"]), new objj_method(sel_getUid("unsignedShortValue"), function $CPDecimalNumber__unsignedShortValue(self, _cmd)
{ with(self)
{
    return parseInt(objj_msgSend(self, "stringValue"));
}
},["unsignedshort"]), new objj_method(sel_getUid("isEqualToNumber:"), function $CPDecimalNumber__isEqualToNumber_(self, _cmd, aNumber)
{ with(self)
{
    return (CPDecimalCompare(CPDecimalMakeWithString(aNumber.toString(),nil), _data) == CPOrderedSame)?YES:NO;
}
},["BOOL","CPNumber"]), new objj_method(sel_getUid("initWithBool:"), function $CPDecimalNumber__initWithBool_(self, _cmd, value)
{ with(self)
{
    if (self = objj_msgSend(self, "init"))
        _data = CPDecimalMakeWithParts((value)?1:0, 0);
    return self;
}
},["id","BOOL"]), new objj_method(sel_getUid("initWithChar:"), function $CPDecimalNumber__initWithChar_(self, _cmd, value)
{ with(self)
{
    return objj_msgSend(self, "_initWithJSNumber:", value);
}
},["id","char"]), new objj_method(sel_getUid("initWithDouble:"), function $CPDecimalNumber__initWithDouble_(self, _cmd, value)
{ with(self)
{
    return objj_msgSend(self, "_initWithJSNumber:", value);
}
},["id","double"]), new objj_method(sel_getUid("initWithFloat:"), function $CPDecimalNumber__initWithFloat_(self, _cmd, value)
{ with(self)
{
    return objj_msgSend(self, "_initWithJSNumber:", value);
}
},["id","float"]), new objj_method(sel_getUid("initWithInt:"), function $CPDecimalNumber__initWithInt_(self, _cmd, value)
{ with(self)
{
    return objj_msgSend(self, "_initWithJSNumber:", value);
}
},["id","int"]), new objj_method(sel_getUid("initWithLong:"), function $CPDecimalNumber__initWithLong_(self, _cmd, value)
{ with(self)
{
    return objj_msgSend(self, "_initWithJSNumber:", value);
}
},["id","long"]), new objj_method(sel_getUid("initWithLongLong:"), function $CPDecimalNumber__initWithLongLong_(self, _cmd, value)
{ with(self)
{
    return objj_msgSend(self, "_initWithJSNumber:", value);
}
},["id","longlong"]), new objj_method(sel_getUid("initWithShort:"), function $CPDecimalNumber__initWithShort_(self, _cmd, value)
{ with(self)
{
    return objj_msgSend(self, "_initWithJSNumber:", value);
}
},["id","short"]), new objj_method(sel_getUid("initWithUnsignedChar:"), function $CPDecimalNumber__initWithUnsignedChar_(self, _cmd, value)
{ with(self)
{
    return objj_msgSend(self, "_initWithJSNumber:", value);
}
},["id","unsignedchar"]), new objj_method(sel_getUid("initWithUnsignedInt:"), function $CPDecimalNumber__initWithUnsignedInt_(self, _cmd, value)
{ with(self)
{
    return objj_msgSend(self, "_initWithJSNumber:", value);
}
},["id","unsigned"]), new objj_method(sel_getUid("initWithUnsignedLong:"), function $CPDecimalNumber__initWithUnsignedLong_(self, _cmd, value)
{ with(self)
{
    return objj_msgSend(self, "_initWithJSNumber:", value);
}
},["id","unsignedlong"]), new objj_method(sel_getUid("initWithUnsignedLongLong:"), function $CPDecimalNumber__initWithUnsignedLongLong_(self, _cmd, value)
{ with(self)
{
    return objj_msgSend(self, "_initWithJSNumber:", value);
}
},["id","unsignedlonglong"]), new objj_method(sel_getUid("initWithUnsignedShort:"), function $CPDecimalNumber__initWithUnsignedShort_(self, _cmd, value)
{ with(self)
{
    return objj_msgSend(self, "_initWithJSNumber:", value);
}
},["id","unsignedshort"]), new objj_method(sel_getUid("_initWithJSNumber:"), function $CPDecimalNumber___initWithJSNumber_(self, _cmd, value)
{ with(self)
{
    if (self = objj_msgSend(self, "init"))
        _data = CPDecimalMakeWithString(value.toString(), nil);
    return self;
}
},["id",null])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("alloc"), function $CPDecimalNumber__alloc(self, _cmd)
{ with(self)
{
    return class_createInstance(self);
}
},["id"]), new objj_method(sel_getUid("decimalNumberWithDecimal:"), function $CPDecimalNumber__decimalNumberWithDecimal_(self, _cmd, dcm)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithDecimal:", dcm);
}
},["CPDecimalNumber","CPDecimal"]), new objj_method(sel_getUid("decimalNumberWithMantissa:exponent:isNegative:"), function $CPDecimalNumber__decimalNumberWithMantissa_exponent_isNegative_(self, _cmd, mantissa, exponent, flag)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithMantissa:exponent:isNegative:", mantissa, exponent, flag);
}
},["CPDecimalNumber","unsignedlonglong","short","BOOL"]), new objj_method(sel_getUid("decimalNumberWithString:"), function $CPDecimalNumber__decimalNumberWithString_(self, _cmd, numberValue)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithString:", numberValue);
}
},["CPDecimalNumber","CPString"]), new objj_method(sel_getUid("decimalNumberWithString:locale:"), function $CPDecimalNumber__decimalNumberWithString_locale_(self, _cmd, numberValue, locale)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithString:locale:", numberValue, locale);
}
},["CPDecimalNumber","CPString","CPDictionary"]), new objj_method(sel_getUid("defaultBehavior"), function $CPDecimalNumber__defaultBehavior(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPDecimalNumberHandler, "defaultDecimalNumberHandler");
}
},["id"]), new objj_method(sel_getUid("setDefaultBehavior:"), function $CPDecimalNumber__setDefaultBehavior_(self, _cmd, behavior)
{ with(self)
{
    CPDefaultDcmHandler = behavior;
}
},["void","id<CPDecimalNumberBehaviors>"]), new objj_method(sel_getUid("maximumDecimalNumber"), function $CPDecimalNumber__maximumDecimalNumber(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithDecimal:", _CPDecimalMakeMaximum());
}
},["CPDecimalNumber"]), new objj_method(sel_getUid("minimumDecimalNumber"), function $CPDecimalNumber__minimumDecimalNumber(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithDecimal:", _CPDecimalMakeMinimum());
}
},["CPDecimalNumber"]), new objj_method(sel_getUid("notANumber"), function $CPDecimalNumber__notANumber(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithDecimal:", CPDecimalMakeNaN());
}
},["CPDecimalNumber"]), new objj_method(sel_getUid("zero"), function $CPDecimalNumber__zero(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithDecimal:", CPDecimalMakeZero());
}
},["CPDecimalNumber"]), new objj_method(sel_getUid("one"), function $CPDecimalNumber__one(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithDecimal:", CPDecimalMakeOne());
}
},["CPDecimalNumber"]), new objj_method(sel_getUid("numberWithBool:"), function $CPDecimalNumber__numberWithBool_(self, _cmd, aBoolean)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithBool:", aBoolean);
}
},["id","BOOL"]), new objj_method(sel_getUid("numberWithChar:"), function $CPDecimalNumber__numberWithChar_(self, _cmd, aChar)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithChar:", aChar);
}
},["id","char"]), new objj_method(sel_getUid("numberWithDouble:"), function $CPDecimalNumber__numberWithDouble_(self, _cmd, aDouble)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithDouble:", aDouble);
}
},["id","double"]), new objj_method(sel_getUid("numberWithFloat:"), function $CPDecimalNumber__numberWithFloat_(self, _cmd, aFloat)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithFloat:", aFloat);
}
},["id","float"]), new objj_method(sel_getUid("numberWithInt:"), function $CPDecimalNumber__numberWithInt_(self, _cmd, anInt)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithInt:", anInt);
}
},["id","int"]), new objj_method(sel_getUid("numberWithLong:"), function $CPDecimalNumber__numberWithLong_(self, _cmd, aLong)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithLong:", aLong);
}
},["id","long"]), new objj_method(sel_getUid("numberWithLongLong:"), function $CPDecimalNumber__numberWithLongLong_(self, _cmd, aLongLong)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithLongLong:", aLongLong);
}
},["id","longlong"]), new objj_method(sel_getUid("numberWithShort:"), function $CPDecimalNumber__numberWithShort_(self, _cmd, aShort)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithShort:", aShort);
}
},["id","short"]), new objj_method(sel_getUid("numberWithUnsignedChar:"), function $CPDecimalNumber__numberWithUnsignedChar_(self, _cmd, aChar)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithUnsignedChar:", aChar);
}
},["id","unsignedchar"]), new objj_method(sel_getUid("numberWithUnsignedInt:"), function $CPDecimalNumber__numberWithUnsignedInt_(self, _cmd, anUnsignedInt)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithUnsignedInt:", anUnsignedInt);
}
},["id","unsigned"]), new objj_method(sel_getUid("numberWithUnsignedLong:"), function $CPDecimalNumber__numberWithUnsignedLong_(self, _cmd, anUnsignedLong)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithUnsignedLong:", anUnsignedLong);
}
},["id","unsignedlong"]), new objj_method(sel_getUid("numberWithUnsignedLongLong:"), function $CPDecimalNumber__numberWithUnsignedLongLong_(self, _cmd, anUnsignedLongLong)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithUnsignedLongLong:", anUnsignedLongLong);
}
},["id","unsignedlong"]), new objj_method(sel_getUid("numberWithUnsignedShort:"), function $CPDecimalNumber__numberWithUnsignedShort_(self, _cmd, anUnsignedShort)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithUnsignedShort:", anUnsignedShort);
}
},["id","unsignedshort"])]);
}
var CPDecimalNumberDecimalExponent = "CPDecimalNumberDecimalExponent",
    CPDecimalNumberDecimalIsNegative = "CPDecimalNumberDecimalIsNegative",
    CPDecimalNumberDecimalIsCompact = "CPDecimalNumberDecimalIsCompact",
    CPDecimalNumberDecimalIsNaN = "CPDecimalNumberDecimalIsNaN",
    CPDecimalNumberDecimalMantissa = "CPDecimalNumberDecimalMantissa";
{
var the_class = objj_getClass("CPDecimalNumber")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPDecimalNumber\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPDecimalNumber__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self)
    {
        var dcm = CPDecimalMakeZero();
        dcm._exponent = objj_msgSend(aCoder, "decodeIntForKey:", CPDecimalNumberDecimalExponent);
        dcm._isNegative = objj_msgSend(aCoder, "decodeBoolForKey:", CPDecimalNumberDecimalIsNegative);
        dcm._isCompact = objj_msgSend(aCoder, "decodeBoolForKey:", CPDecimalNumberDecimalIsCompact);
        dcm._isNaN = objj_msgSend(aCoder, "decodeBoolForKey:", CPDecimalNumberDecimalIsNaN);
        dcm._mantissa = objj_msgSend(aCoder, "decodeObjectForKey:", CPDecimalNumberDecimalMantissa);
        objj_msgSend(self, "initWithDecimal:", dcm);
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPDecimalNumber__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSend(aCoder, "encodeInt:forKey:", _data._exponent, CPDecimalNumberDecimalExponent);
    objj_msgSend(aCoder, "encodeBool:forKey:", _data._isNegative, CPDecimalNumberDecimalIsNegative);
    objj_msgSend(aCoder, "encodeBool:forKey:", _data._isCompact, CPDecimalNumberDecimalIsCompact);
    objj_msgSend(aCoder, "encodeBool:forKey:", _data._isNaN, CPDecimalNumberDecimalIsNaN);
    objj_msgSend(aCoder, "encodeObject:forKey:", _data._mantissa, CPDecimalNumberDecimalMantissa);
}
},["void","CPCoder"])]);
}

