/*
 * AppController.j
 * patterns
 *
 * Created by You on April 9, 2011.
 * Copyright 2011, Your Company All rights reserved.
 */

@import <Foundation/Foundation.j>
@import <AppKit/AppKit.j>

@import "AppController.j"

function colorFromString(str, offset) {
  return [[CPColor colorWithHexString:str.substr(offset,6)]
            colorWithAlphaComponent:parseInt(str.substr(offset+6,2),16)/255.0];
}


function main(args, namedArgs)
{
  console.log([namedArgs objectForKey:"email"]);
  if ( [namedArgs objectForKey:"email"] ) {
    var shaObj = new jsSHA("SHA-512", "TEXT");
    shaObj.update([namedArgs objectForKey:"email"]);
    var hexstr = shaObj.getHash("HEX");
    var ctxt = new SvgCgContext(400, 400);

    var ptnNum = parseInt(hexstr.substr(0,2),16) % allPatternClasses.length;
    var patternClass = allPatternClasses[ptnNum];

    var cfg = [patternClass defaultConfig];

    var cpt = [GRPoint pointWithX:200 Y:200];

    console.log(hexstr.length); // 128
    [cfg setObject:cpt forKey:"center_point"];
    [cfg setObject:(parseInt(hexstr.substr(2,2),16)%120)+20 forKey:"radius"];
    [cfg setObject:colorFromString(hexstr, 4) forKey:"background_color"];
    [cfg setObject:[colorFromString(hexstr, 12),
                    colorFromString(hexstr, 20),
                    colorFromString(hexstr, 28),
                    colorFromString(hexstr, 36),
                    colorFromString(hexstr, 44),
                    colorFromString(hexstr, 52)] forKey:"stroke_colors"];
    [cfg setObject:[colorFromString(hexstr, 60),
                    colorFromString(hexstr, 68),
                    colorFromString(hexstr, 76),
                    colorFromString(hexstr, 84),
                    colorFromString(hexstr, 92),
                    colorFromString(hexstr, 100)] forKey:"fill_colors"];

    [cfg setObject:parseInt(hexstr.substr(108,3),16)%360 forKey:"rotation"];
    [cfg setObject:parseInt(hexstr.substr(111,1),16)%3 forKey:"recurse_depth"];
    [cfg setObject:parseInt(hexstr.substr(112,2),16)%50 forKey:"number_of_points"];
    [cfg setObject:parseInt(hexstr.substr(114,2),16)/255.0 forKey:"factor_larger"];
    [cfg setObject:parseInt(hexstr.substr(116,1),16)>8 forKey:"show_shapes"];

    var pattern = [[patternClass alloc] initWithConfig:cfg];

    ctxt.rotate      = [pattern rotation];
    ctxt.bgColor     = [pattern bgColor];
    ctxt.bgColorDir  = [pattern bgColorDirection];
    ctxt.title       = [pattern className];
    ctxt.__cpt_of_image__ = cpt;

    [pattern draw:ctxt];

    if ( [namedArgs objectForKey:"download"]) {
      var uriContent =
        "data:application/octet-stream," + encodeURIComponent(ctxt.svg);
      window.open(uriContent, [pattern className] + ".svg");
    } else {
      document.write(ctxt.svg);
    }
  } else {
    CPApplicationMain(args, namedArgs);
  }
}
