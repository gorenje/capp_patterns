@STATIC;1.0;i;9;CPArray.ji;10;CPNumber.jt;28009;objj_executeFile("CPArray.j", YES);
objj_executeFile("CPNumber.j", YES);
CPDecimalMaxDigits = 38;
CPDecimalMaxExponent = 127;
CPDecimalMinExponent = -128;
CPDecimalNoScale = 128
CPCalculationNoError = 0;
CPCalculationLossOfPrecision = 1;
CPCalculationOverflow = 2;
CPCalculationUnderflow = 3;
CPCalculationDivideByZero = 4;
CPRoundPlain = 1;
CPRoundDown = 2;
CPRoundUp = 3;
CPRoundBankers = 4;
CPDecimalNumberOverflowException = "CPDecimalNumberOverflowException";
CPDecimalNumberUnderflowException = "CPDecimalNumberUnderflowException";
CPDecimalNumberExactnessException = "CPDecimalNumberExactnessException";
CPDecimalNumberDivideByZeroException = "CPDecimalNumberDivideByZeroException";
CPDecimalMakeWithString= function(string, locale)
{
    if (!string)
        return CPDecimalMakeNaN();
    var matches = string.match(/^([+\-]?)((?:0|[1-9]\d*))(?:\.(\d*))?(?:[eE]([+\-]?)(\d+))?$/);
    if (!matches)
        return CPDecimalMakeNaN();
    var ds = matches[1],
        intpart = matches[2],
        decpart = matches[3],
        es = matches[4],
        exp = matches[5];
    var isNegative = NO;
    if (ds && ds === "-")
        isNegative = YES;
    var exponent = 0;
    if (exp)
        exponent = parseInt(exp) * ((es && es === "-")?-1:1);
    if (decpart)
        exponent -= decpart.length;
    var inputlength = (intpart?intpart.length:0) + (decpart?decpart.length:0);
    if (inputlength > CPDecimalMaxDigits)
    {
        exponent += inputlength - CPDecimalMaxDigits;
    }
    if (exponent > CPDecimalMaxExponent || exponent < CPDecimalMinExponent)
        return CPDecimalMakeNaN();
    var m = [],
        i = 0;
    for (; i < (intpart?intpart.length:0); i++)
    {
        if (i >= CPDecimalMaxDigits)
            break;
        Array.prototype.push.call(m, parseInt(intpart.charAt(i)));
    }
    var j = 0;
    for (; j < (decpart?decpart.length:0); j++)
    {
        if ((i + j) >= CPDecimalMaxDigits)
            break;
        Array.prototype.push.call(m, parseInt(decpart.charAt(j)));
    }
    var dcm = {_exponent:exponent, _isNegative:isNegative, _isCompact:NO, _isNaN:NO, _mantissa:m};
    CPDecimalCompact(dcm);
    return dcm;
}
CPDecimalMakeWithParts= function(mantissa, exponent)
{
    var m = [],
        isNegative = NO;
    if (mantissa < 0 )
    {
        isNegative = YES;
        mantissa = ABS(mantissa);
    }
    if (mantissa == 0)
        Array.prototype.push.call(m, 0);
    if (exponent > CPDecimalMaxExponent || exponent < CPDecimalMinExponent)
        return CPDecimalMakeNaN();
    while ((mantissa > 0) && (m.length < CPDecimalMaxDigits))
    {
        Array.prototype.unshift.call(m, parseInt(mantissa % 10));
        mantissa = FLOOR(mantissa / 10);
    }
    var dcm = {_exponent:exponent, _isNegative:isNegative, _isCompact:YES, _isNaN:NO, _mantissa:m};
    CPDecimalCompact(dcm);
    return dcm;
}
CPDecimalMakeZero= function()
{
    return CPDecimalMakeWithParts(0, 0);
}
CPDecimalMakeOne= function()
{
    return CPDecimalMakeWithParts(1, 0);
}
CPDecimalMakeNaN= function()
{
    var d = CPDecimalMakeWithParts(0, 0);
    d._isNaN = YES;
    return d;
}
_CPDecimalMakeMaximum= function()
{
    var s = "",
        i = 0;
    for (; i < CPDecimalMaxDigits; i++)
        s += "9";
    s += "e" + CPDecimalMaxExponent;
    return CPDecimalMakeWithString(s);
}
_CPDecimalMakeMinimum= function()
{
    var s = "-",
        i = 0;
    for (; i < CPDecimalMaxDigits; i++)
        s += "9";
    s += "e" + CPDecimalMaxExponent;
    return CPDecimalMakeWithString(s);
}
CPDecimalIsZero= function(dcm)
{
    if (!dcm._isNaN)
    {
        for (var i = 0; i < dcm._mantissa.length; i++)
            if (dcm._mantissa[i] !== 0)
                return NO;
        return YES;
    }
    return NO;
}
CPDecimalIsOne= function(dcm)
{
    CPDecimalCompact(dcm);
    if (!dcm._isNaN)
    {
        if (dcm._mantissa && (dcm._mantissa.length == 1) && (dcm._mantissa[0] == 1))
            return YES;
    }
    return NO;
}
_CPDecimalSet= function(t,s)
{
    t._exponent = s._exponent;
    t._isNegative = s._isNegative;
    t._isCompact = s._isCompact;
    t._isNaN = s._isNaN;
    t._mantissa = Array.prototype.slice.call(s._mantissa, 0);
}
_CPDecimalSetZero= function(result)
{
    result._mantissa = [0];
    result._exponent = 0;
    result._isNegative = NO;
    result._isCompact = YES;
    result._isNaN = NO;
}
_CPDecimalSetOne= function(result)
{
    result._mantissa = [1];
    result._exponent = 0;
    result._isNegative = NO;
    result._isCompact = YES;
    result._isNaN = NO;
}
CPDecimalIsNotANumber= function(dcm)
{
    return (dcm._isNaN)?YES:NO;
}
CPDecimalCopy= function(dcm)
{
    return {_exponent:dcm._exponent,
            _isNegative:dcm._isNegative,
            _isCompact:dcm._isCompact,
            _isNaN:dcm._isNaN,
            _mantissa:Array.prototype.slice.call(dcm._mantissa, 0)
            };
}
CPDecimalCompare= function(leftOperand, rightOperand)
{
    if (leftOperand._isNaN && rightOperand._isNaN)
        return CPOrderedSame;
    if (leftOperand._isNegative != rightOperand._isNegative)
    {
        if (rightOperand._isNegative)
            return CPOrderedDescending;
        else
            return CPOrderedAscending;
    }
    var s1 = leftOperand._exponent + leftOperand._mantissa.length,
        s2 = rightOperand._exponent + rightOperand._mantissa.length;
    if (s1 < s2)
    {
        if (rightOperand._isNegative)
            return CPOrderedDescending;
        else
            return CPOrderedAscending;
    }
    if (s1 > s2)
    {
        if (rightOperand._isNegative)
            return CPOrderedAscending;
        else
            return CPOrderedDescending;
    }
    var l = MIN(leftOperand._mantissa.length, rightOperand._mantissa.length),
        i = 0;
    for (; i < l; i++)
    {
        var d = rightOperand._mantissa[i] - leftOperand._mantissa[i];
        if (d > 0)
        {
            if (rightOperand._isNegative)
                return CPOrderedDescending;
            else
                return CPOrderedAscending;
        }
        if (d < 0)
        {
            if (rightOperand._isNegative)
                return CPOrderedAscending;
            else
                return CPOrderedDescending;
        }
    }
    if (leftOperand._mantissa.length > rightOperand._mantissa.length)
    {
        if (rightOperand._isNegative)
            return CPOrderedAscending;
        else
            return CPOrderedDescending;
    }
    if (leftOperand._mantissa.length < rightOperand._mantissa.length)
    {
        if (rightOperand._isNegative)
            return CPOrderedDescending;
        else
            return CPOrderedAscending;
    }
    return CPOrderedSame;
}
_SimpleAdd= function(result, leftOperand, rightOperand, roundingMode, longMode)
{
    var factor = (longMode)?2:1;
    _CPDecimalSet(result, leftOperand);
    var j = leftOperand._mantissa.length - rightOperand._mantissa.length,
        l = rightOperand._mantissa.length,
        i = l - 1,
        carry = 0,
        error = CPCalculationNoError;
    for (; i >= 0; i--)
    {
        var d = rightOperand._mantissa[i] + result._mantissa[i + j] + carry;
        if (d >= 10)
        {
            d = d % 10;
            carry = 1;
        }
        else
            carry = 0;
        result._mantissa[i + j] = d;
    }
    if (carry)
    {
        for (i = j - 1; i >= 0; i--)
        {
            if (result._mantissa[i] != 9)
            {
                result._mantissa[i]++;
                carry = 0;
                break;
            }
            result._mantissa[i] = 0;
        }
        if (carry)
        {
            Array.prototype.splice.call(result._mantissa, 0, 0, 1);
            if ((CPDecimalMaxDigits * factor) == leftOperand._mantissa.length)
            {
                var scale = - result._exponent - 1;
                CPDecimalRound(result, result, scale, roundingMode);
            }
            if (CPDecimalMaxExponent < result._exponent)
            {
                result._isNaN = YES;
                error = CPCalculationOverflow;
                result._exponent = CPDecimalMaxExponent;
            }
        }
    }
    return error;
}
CPDecimalAdd= function(result, leftOperand, rightOperand, roundingMode, longMode)
{
    if (leftOperand._isNaN || rightOperand._isNaN)
    {
        result._isNaN = YES;
        return CPCalculationNoError;
    }
    if (CPDecimalIsZero(leftOperand))
    {
        _CPDecimalSet(result, rightOperand);
        return CPCalculationNoError;
    }
    if (CPDecimalIsZero(rightOperand))
    {
        _CPDecimalSet(result, leftOperand);
        return CPCalculationNoError;
    }
     var n1 = CPDecimalCopy(leftOperand),
         n2 = CPDecimalCopy(rightOperand);
    if (leftOperand._isNegative != rightOperand._isNegative)
    {
        if (leftOperand._isNegative)
        {
            n1._isNegative = NO;
            return CPDecimalSubtract(result, rightOperand, n1, roundingMode);
        }
        else
        {
            n2._isNegative = NO;
            return CPDecimalSubtract(result, leftOperand, n2, roundingMode);
        }
    }
    var normerror = CPDecimalNormalize(n1, n2, roundingMode, longMode);
    var comp = 0,
        ll = n1._mantissa.length,
        lr = n2._mantissa.length;
    if (ll == lr)
        comp = CPOrderedSame;
    else if (ll > lr)
        comp = CPOrderedDescending;
    else
        comp = CPOrderedAscending;
    if (leftOperand._isNegative)
    {
        n1._isNegative = NO;
        n2._isNegative = NO;
        if (comp == CPOrderedDescending)
        {
            adderror = _SimpleAdd(result, n1, n2, roundingMode, longMode);
        }
        else
        {
            adderror = _SimpleAdd(result, n2, n1, roundingMode, longMode);
        }
        result._isNegative = YES;
        if (CPCalculationUnderflow == adderror)
            adderror = CPCalculationOverflow;
        else if (CPCalculationUnderflow == adderror)
            adderror = CPCalculationUnderflow;
    }
    else
    {
        if (comp == CPOrderedAscending)
        {
            adderror = _SimpleAdd(result, n2, n1, roundingMode, longMode);
        }
        else
        {
            adderror = _SimpleAdd(result, n1, n2, roundingMode, longMode);
        }
    }
    CPDecimalCompact(result);
    if (adderror == CPCalculationNoError)
        return normerror;
    else
        return adderror;
}
_SimpleSubtract= function(result, leftOperand, rightOperand, roundingMode)
{
    var error = CPCalculationNoError,
        borrow = 0,
        l = rightOperand._mantissa.length,
        j = leftOperand._mantissa.length - l,
        i = l - 1;
    _CPDecimalSet(result, leftOperand);
    for (; i >= 0; i--)
    {
        var d = result._mantissa[i + j] - rightOperand._mantissa[i] - borrow;
        if (d < 0)
        {
            d = d + 10;
            borrow = 1;
        }
        else
            borrow = 0;
        result._mantissa[i + j] = d;
    }
    if (borrow)
    {
        for (i = j - 1; i >= 0; i--)
        {
            if (result._mantissa[i] != 0)
            {
                result._mantissa[i]--;
                break;
            }
            result._mantissa[i] = 9;
        }
        if (-1 == i)
        {
            error = nil;
        }
    }
    return error;
}
CPDecimalSubtract= function(result, leftOperand, rightOperand, roundingMode)
{
    if (leftOperand._isNaN || rightOperand._isNaN)
    {
        result._isNaN = YES;
        return CPCalculationNoError;
    }
    if (CPDecimalIsZero(leftOperand))
    {
        _CPDecimalSet(result, rightOperand);
        result._isNegative = !result._isNegative;
        return CPCalculationNoError;
    }
    if (CPDecimalIsZero(rightOperand))
    {
        _CPDecimalSet(result, leftOperand);
        return CPCalculationNoError;
    }
     var n1 = CPDecimalCopy(leftOperand),
         n2 = CPDecimalCopy(rightOperand),
         error1 = CPCalculationNoError;
    if (leftOperand._isNegative != rightOperand._isNegative)
    {
        if (leftOperand._isNegative)
        {
            n1._isNegative = NO;
            error1 = CPDecimalAdd(result, n1, rightOperand, roundingMode);
            result._isNegative = YES;
            if (error1 == CPCalculationUnderflow)
                error1 = CPCalculationOverflow;
            else if (error1 == CPCalculationOverflow)
                error1 = CPCalculationUnderflow;
            return error1;
        }
        else
        {
            n2._isNegative = NO;
            return CPDecimalAdd(result, leftOperand, n2, roundingMode);
        }
    }
    var error = CPDecimalNormalize(n1, n2, roundingMode),
        comp = CPDecimalCompare(leftOperand, rightOperand);
    if (comp == CPOrderedSame)
    {
        _CPDecimalSetZero(result);
        return CPCalculationNoError;
    }
    if (leftOperand._isNegative)
    {
        n1._isNegative = NO;
        n2._isNegative = NO;
        if (comp == CPOrderedAscending)
        {
            error1 = _SimpleSubtract(result, n1, n2, roundingMode);
            result._isNegative = YES;
        }
        else
        {
            error1 = _SimpleSubtract(result, n2, n1, roundingMode);
        }
    }
    else
    {
        if (comp == CPOrderedAscending)
        {
            error1 = _SimpleSubtract(result, n2, n1, roundingMode);
            result._isNegative = YES;
        }
        else
        {
            error1 = _SimpleSubtract(result, n1, n2, roundingMode);
        }
    }
    CPDecimalCompact(result);
    if (error1 == CPCalculationNoError)
        return error;
    else
        return error1;
}
_SimpleDivide= function(result, leftOperand, rightOperand, roundingMode)
{
    var error = CPCalculationNoError,
        n1 = CPDecimalMakeZero(),
        k = 0,
        firsttime = YES,
        stopk = CPDecimalMaxDigits + 1,
        used = 0;
    _CPDecimalSetZero(result);
    n1._mantissa = [];
    while ((k < leftOperand._mantissa.length) || (n1._mantissa.length
                                                    && !((n1._mantissa.length == 1) && (n1._mantissa[0] == 0))))
    {
        while (CPOrderedAscending == CPDecimalCompare(n1, rightOperand))
        {
            if (stopk == k)
                break;
            if (n1._exponent)
            {
                Array.prototype.push.call(n1._mantissa, 0);
                n1._exponent--;
                n1._isCompact = NO;
            }
            else
            {
                if (used < leftOperand._mantissa.length)
                {
                    if (n1._mantissa.length || leftOperand._mantissa[used])
                    {
                        Array.prototype.push.call(n1._mantissa, (leftOperand._mantissa[used]));
                        n1._isCompact = NO;
                    }
                    used++;
                }
                else
                {
                    if (result._exponent == CPDecimalMinExponent)
                    {
                        k = stopk;
                        break;
                    }
                    Array.prototype.push.call(n1._mantissa, 0);
                    result._exponent--;
                }
                if (!firsttime)
                {
                    k++;
                    result._mantissa[k - 1] = 0;
                }
            }
        }
        if (stopk == k)
        {
            error = CPCalculationLossOfPrecision;
            break;
        }
        if (firsttime)
        {
            firsttime = NO;
            k++;
        }
        error1 = CPDecimalSubtract(n1, n1, rightOperand, roundingMode);
        if (error1 != CPCalculationNoError)
            error = error1;
        result._mantissa[k - 1]++;
    }
    return error;
}
CPDecimalDivide= function(result, leftOperand, rightOperand, roundingMode)
{
    var error = CPCalculationNoError,
        exp = leftOperand._exponent - rightOperand._exponent,
        neg = (leftOperand._isNegative != rightOperand._isNegative);
    if (leftOperand._isNaN || rightOperand._isNaN)
    {
        result._isNaN = YES;
        return CPCalculationNoError;
    }
    if (CPDecimalIsZero(rightOperand))
    {
        result._isNaN = YES;
        return CPCalculationDivideByZero;
    }
    if (CPDecimalIsZero(leftOperand))
    {
        _CPDecimalSetZero(result);
        return CPCalculationNoError;
    }
    var n1 = CPDecimalCopy(leftOperand),
        n2 = CPDecimalCopy(rightOperand);
    n1._exponent = 0;
    n1._isNegative = NO;
    n2._exponent = 0;
    n2._isNegative = NO;
    error = _SimpleDivide(result, n1, n2, roundingMode);
    CPDecimalCompact(result);
    if (result._exponent + exp > CPDecimalMaxExponent)
    {
        result._isNaN = YES;
        if (neg)
            return CPCalculationUnderflow;
        else
            return CPCalculationOverflow;
    }
    else if (result._exponent + exp < CPDecimalMinExponent)
    {
        CPDecimalRound(result, result, exp + CPDecimalMaxExponent + 1, roundingMode);
        error = CPCalculationLossOfPrecision;
        if (result._exponent + exp < CPDecimalMinExponent)
        {
            CPDecimalSetZero(result);
            return error;
        }
    }
    result._exponent += exp;
    result._isNegative = neg;
    return error;
}
_SimpleMultiply= function(result, leftOperand, rightOperand, roundingMode, powerMode)
{
    var error = CPCalculationNoError,
        carry = 0,
        exp = 0,
        n = CPDecimalMakeZero();
    _CPDecimalSetZero(result);
    var i = 0;
    for (; i < rightOperand._mantissa.length; i++)
    {
        _CPDecimalSetZero(n);
        n._exponent = rightOperand._mantissa.length - i - 1;
        carry = 0;
        d = rightOperand._mantissa[i];
        if (d == 0)
            continue;
        var j = 0;
        for (j = leftOperand._mantissa.length - 1; j >= 0; j--)
        {
            e = leftOperand._mantissa[j] * d + carry;
            if (e >= 10)
            {
                carry = FLOOR(e / 10);
                e = e % 10;
            }
            else
                carry = 0;
            n._mantissa[j + 1] = e;
        }
        n._mantissa[0] = carry;
        CPDecimalCompact(n);
        error1 = CPDecimalAdd(result, result, n, roundingMode, YES);
        if (error1 != CPCalculationNoError)
            error = error1;
    }
    if (result._exponent + exp > CPDecimalMaxExponent)
    {
        result._isNaN = YES;
        return CPCalculationOverflow;
    }
    result._exponent += exp;
    if (result._mantissa.length > CPDecimalMaxDigits && !powerMode)
    {
        result._isCompact = NO;
        var scale = CPDecimalMaxDigits - (result._mantissa.length + result._exponent);
        CPDecimalRound(result, result, scale, roundingMode);
        error = CPCalculationLossOfPrecision;
    }
    return error;
}
CPDecimalMultiply= function(result, leftOperand, rightOperand, roundingMode, powerMode)
{
    var error = CPCalculationNoError,
        exp = leftOperand._exponent + rightOperand._exponent,
        neg = (leftOperand._isNegative != rightOperand._isNegative);
    if (leftOperand._isNaN || rightOperand._isNaN)
    {
        result._isNaN = YES;
        return CPCalculationNoError;
    }
    if (CPDecimalIsZero(rightOperand) || CPDecimalIsZero(leftOperand))
    {
        _CPDecimalSetZero(result);
        return CPCalculationNoError;
    }
    if (exp > CPDecimalMaxExponent)
    {
        result._isNaN = YES;
        if (neg)
            return CPCalculationUnderflow;
        else
            return CPCalculationOverflow;
    }
    var n1 = CPDecimalCopy(leftOperand),
        n2 = CPDecimalCopy(rightOperand);
    n1._exponent = 0;
    n2._exponent = 0;
    n1._isNegative = NO;
    n2._isNegative = NO;
    var comp = 0,
        ll = n1._mantissa.length,
        lr = n2._mantissa.length;
    if (ll == lr)
        comp = CPOrderedSame;
    else if (ll > lr)
        comp = CPOrderedDescending;
    else
        comp = CPOrderedAscending;
    if (comp == CPOrderedDescending)
    {
        error = _SimpleMultiply(result, n1, n2, roundingMode, powerMode);
    }
    else
    {
        error = _SimpleMultiply(result, n2, n1, roundingMode, powerMode);
    }
    CPDecimalCompact(result);
    if (result._exponent + exp > CPDecimalMaxExponent)
    {
        result._isNaN = YES;
        if (neg)
            return CPCalculationUnderflow;
        else
            return CPCalculationOverflow;
    }
    else if (result._exponent + exp < CPDecimalMinExponent)
    {
        CPDecimalRound(result, result, exp + CPDecimalMaxExponent + 1, roundingMode);
        error = CPCalculationLossOfPrecision;
        if (result._exponent + exp < CPDecimalMinExponent)
        {
            _CPDecimalSetZero(result);
            return error;
        }
    }
    result._exponent += exp;
    result._isNegative = neg;
    return error;
}
CPDecimalMultiplyByPowerOf10= function(result, dcm, power, roundingMode)
{
    _CPDecimalSet(result, dcm);
    var p = result._exponent + power;
    if (p > CPDecimalMaxExponent)
    {
        result._isNaN = YES;
        return CPCalculationOverflow;
    }
    if (p < CPDecimalMinExponent)
    {
        result._isNaN = YES;
        return CPCalculationUnderflow;
    }
    result._exponent += power;
    return CPCalculationNoError;
}
CPDecimalPower= function(result, dcm, power, roundingMode)
{
    var error = CPCalculationNoError,
        neg = (dcm._isNegative && (power % 2)),
        n1 = CPDecimalCopy(dcm);
    n1._isNegative = NO;
    _CPDecimalSetOne(result);
    var e = power;
    while (e)
    {
        if (e & 1)
        {
            error = CPDecimalMultiply(result, result, n1, roundingMode);
        }
        error = CPDecimalMultiply(n1, n1, n1, roundingMode);
        e >>= 1;
        if (error > CPCalculationLossOfPrecision)
            break;
    }
    result._isNegative = neg;
    CPDecimalCompact(result);
    return error;
}
CPDecimalNormalize= function(dcm1, dcm2, roundingMode, longMode)
{
    var factor = (longMode)?2:1;
    if (dcm1._isNaN || dcm2._isNaN)
        return CPCalculationNoError;
    if (!dcm1._isCompact)
        CPDecimalCompact(dcm1);
    if (!dcm2._isCompact)
        CPDecimalCompact(dcm2);
    if (dcm1._exponent == dcm2._exponent)
        return CPCalculationNoError;
    var e1 = dcm1._exponent,
        e2 = dcm2._exponent;
    var l2 = dcm2._mantissa.length,
        l1 = dcm1._mantissa.length,
        l = 0;
    var e = 0;
    if (e2 > e1 && e1 >= 0 && e2 >= 0)
        e = e2 - e1;
    else if (e2 > e1 && e1 < 0 && e2 >= 0)
        e = e2 - e1;
    else if (e2 > e1 && e1 < 0 && e2 < 0)
        e = e2 - e1;
    else if (e2 < e1 && e1 >= 0 && e2 >= 0)
        e = e1 - e2;
    else if (e2 < e1 && e1 >= 0 && e2 < 0)
        e = e1 - e2;
    else if (e2 < e1 && e1 < 0 && e2 < 0)
        e = e1 - e2;
    if (e2 > e1)
        l = MIN((CPDecimalMaxDigits * factor) - l2, e);
    else
        l = MIN((CPDecimalMaxDigits * factor) - l1, e);
    for (var i = 0; i < l; i++)
    {
        if (e2 > e1)
            Array.prototype.push.call(dcm2._mantissa, 0);
        else
            Array.prototype.push.call(dcm1._mantissa, 0);
    }
    if (e2 > e1)
    {
        dcm2._exponent -= l;
        dcm2._isCompact = NO;
    }
    else
    {
        dcm1._exponent -= l;
        dcm1._isCompact = NO;
    }
    if (l != ABS(e2 - e1))
    {
        if (e2 > e1)
        {
            CPDecimalRound(dcm1, dcm1, -dcm2._exponent, roundingMode);
            l1 = CPDecimalIsZero(dcm1);
        }
        else
        {
            CPDecimalRound(dcm2, dcm2, -dcm1._exponent, roundingMode);
            l2 = CPDecimalIsZero(dcm2);
        }
        if ((dcm1._exponent != dcm2._exponent) && ((!l1) || (!l2)))
        {
            if (e2 > e1)
            {
                l1 = dcm1._mantissa.length;
                l = MIN((CPDecimalMaxDigits * factor) - l1, ABS(dcm1._exponent - dcm2._exponent));
                for (var i = 0; i < l; i++)
                {
                    dcm1._mantissa[i + l1] = 0;
                }
                dcm1._isCompact = NO;
                dcm1._exponent = dcm2._exponent;
            }
            else
            {
                l2 = dcm2._mantissa.length;
                l = MIN((CPDecimalMaxDigits * factor) - l2, ABS(dcm2._exponent - dcm1._exponent));
                for (var i = 0; i < l; i++)
                {
                    dcm2._mantissa[i + l2] = 0;
                }
                dcm2._exponent = dcm1._exponent;
                dcm2._isCompact = NO;
            }
        }
        return CPCalculationLossOfPrecision;
    }
    return CPCalculationNoError;
}
CPDecimalRound= function(result, dcm, scale ,roundingMode)
{
    if (dcm._isNaN)
        return;
    if (!dcm._isCompact)
        CPDecimalCompact(dcm);
    if (scale == CPDecimalNoScale)
        return;
    _CPDecimalSet(result,dcm);
    var mc = result._mantissa.length,
        l = mc + scale + result._exponent;
    if (mc <= l)
        return;
    else if (l <= 0)
    {
        _CPDecimalSetZero(result);
        return;
    } else {
        var c = 0,
            n = 0,
            up = 0;
        result._exponent += mc - l;
        switch (roundingMode)
        {
        case CPRoundDown:
            up = result._isNegative;
            break;
        case CPRoundUp:
            up = !result._isNegative;
            break;
        case CPRoundPlain:
            n = result._mantissa[l];
            up = (n >= 5);
            break;
        case CPRoundBankers:
            n = result._mantissa[l];
            if (n > 5)
                up = YES;
            else if (n < 5)
                up = NO;
            else
            {
                if (l == 0)
                    c = 0;
                else
                    c = result._mantissa[l - 1];
                up = ((c % 2) != 0);
            }
            break;
        default:
            up = NO;
            break;
        }
        result._mantissa = Array.prototype.slice.call(result._mantissa, 0, l);
        if (up)
        {
            for (var i = l-1; i >= 0; i--)
            {
                if (result._mantissa[i] != 9)
                {
                    result._mantissa[i]++;
                    break;
                }
                result._mantissa[i] = 0;
            }
            if (i == -1)
            {
                result._mantissa[0] = 1;
                if (result._exponent >= CPDecimalMaxExponent)
                {
                    Array.prototype.push.call(result._mantissa, 0);
                }
                else
                    result._exponent++;
            }
        }
    }
    CPDecimalCompact(result);
}
CPDecimalCompact= function(dcm)
{
    if (!dcm || dcm._mantissa.length == 0 || CPDecimalIsNotANumber(dcm) )
        return;
    if (CPDecimalIsZero(dcm))
    {
        _CPDecimalSetZero(dcm);
        return;
    }
    while (dcm._mantissa[0] === 0)
    {
        Array.prototype.shift.call(dcm._mantissa);
    }
    while (dcm._mantissa[dcm._mantissa.length - 1] === 0)
    {
        Array.prototype.pop.call(dcm._mantissa);
        dcm._exponent++;
        if (dcm._exponent + 1 > CPDecimalMaxExponent)
        {
          break;
        }
    }
    dcm._isCompact = YES;
}
CPDecimalString= function(dcm, locale)
{
    if (dcm._isNaN)
        return "NaN";
    var string = "",
        i = 0;
    if (dcm._isNegative)
        string += "-";
    var k = dcm._mantissa.length,
        l = ((dcm._exponent < 0) ? dcm._exponent : 0) + k;
    if (l < 0)
    {
        string += "0.";
        for (i = 0; i < ABS(l); i++)
        {
            string += "0";
        }
        l = k;
    }
    else if (l == 0)
    {
        string += "0";
    }
    for (i = 0; i < l; i++)
    {
        string += dcm._mantissa[i];
    }
    if (l < k)
    {
        string += ".";
        for (i = l; i < k; i++)
        {
            string += dcm._mantissa[i];
        }
    }
    for (i = 0; i < dcm._exponent; i++)
    {
        string += "0";
    }
    return string;
}

