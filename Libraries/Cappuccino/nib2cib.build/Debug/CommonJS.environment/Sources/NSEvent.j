@STATIC;1.0;t;988;NSAlphaShiftKeyMask = 1 << 16;
NSShiftKeyMask = 1 << 17;
NSControlKeyMask = 1 << 18;
NSAlternateKeyMask = 1 << 19;
NSCommandKeyMask = 1 << 20;
NSNumericPadKeyMask = 1 << 21;
NSHelpKeyMask = 1 << 22;
NSFunctionKeyMask = 1 << 23;
NSDeviceIndependentModifierFlagsMask = 0xffff0000;
CP_NSMapKeyMask= function(anNSKeyMask)
{
    var keyMask = 0;
    if (anNSKeyMask & NSAlphaShiftKeyMask)
        keyMask |= CPAlphaShiftKeyMask;
    if (anNSKeyMask & NSShiftKeyMask)
        keyMask |= CPShiftKeyMask;
    if (anNSKeyMask & NSControlKeyMask)
        keyMask |= CPControlKeyMask;
    if (anNSKeyMask & NSAlternateKeyMask)
        keyMask |= CPAlternateKeyMask;
    if (anNSKeyMask & NSCommandKeyMask)
        keyMask |= CPCommandKeyMask;
    if (anNSKeyMask & NSNumericPadKeyMask)
        keyMask |= CPNumericPadKeyMask;
    if (anNSKeyMask & NSHelpKeyMask)
        keyMask |= CPHelpKeyMask;
    if (anNSKeyMask & NSFunctionKeyMask)
        keyMask |= CPFunctionKeyMask;
    return keyMask;
}

