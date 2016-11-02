/*
 * Created by Gerrit Riessen
 * Copyright 2010-2016, Gerrit Riessen
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

IgnoreCall = function(){ return null; };
IgnoreSetter = function(val){};

function SvgCgContext(width, height){
  var fillStyle     = null;
  var strokeStyle   = null;
  var svgDefinition = "";
  var pathData      = [];
  var circleData    = [];
  var gradientStops = [];
  var rotate        = 0;
  var gradientSpecs = "";
  var title         = "";
  var description   = "";

  this.width  = width;
  this.height = height;

  this.__defineSetter__('lineCap', IgnoreSetter);
  this.__defineGetter__('lineCap', IgnoreCall);

  this.__defineSetter__('lineJoin', IgnoreSetter);
  this.__defineGetter__('lineJoin', IgnoreCall);

  this.__defineSetter__('lineWidth', IgnoreSetter);
  this.__defineGetter__('lineWidth', IgnoreCall);

  this.__defineSetter__('miterLimit', IgnoreSetter);
  this.__defineGetter__('miterLimit',IgnoreCall);

  this.__defineSetter__('rotate', function(val){
    rotate = val;
  });
  this.__defineSetter__('title', function(val){
    title = val;
  });
  this.__defineSetter__('description', function(val){
    description = val;
  });

  this.__defineSetter__('bgColor', function(val){
    var factors = { 1: [100],
                    2: [0,100],
                    3: [0,50,100],
                    4: [0,33,66,100],
                    5: [0,25,50,75,100],
                    6: [0,20,40,60,80,100]};
    var clrs = null;

    if ( [val isKindOfClass:GRColor] ) {
      if ( [val gradientColors].length == 0 ) {
        clrs = [val];
      } else {
        clrs = [val gradientColors];
      }
    } else {
      clrs = [val];
    }

    for ( var idx = 0; idx < clrs.length; idx++){
      gradientStops.push(this.stopSpecs(factors[clrs.length][idx], clrs[idx]));
    }
  });

  this.__defineSetter__('bgColorDir', function(val){
    if ( val == 1 ) {
      gradientSpecs = "x1=\"0%\" y1=\"0%\" x2=\"0%\" y2=\"100%\"";
    } else {
      gradientSpecs = "x1=\"0%\" y1=\"0%\" x2=\"100%\" y2=\"0%\"";
    }
  });

  this.__defineSetter__('fillStyle', function(val) {
    fillStyle = [CPColor colorWithCSSString:[val cssString]];
  });
  this.__defineGetter__('fillStyle', function() {
    return fillStyle;
  });

  this.__defineSetter__('strokeStyle', function(val) {
    strokeStyle = [CPColor colorWithCSSString:[val cssString]];
  });
  this.__defineGetter__('strokeStyle', function() {
    return strokeStyle;
  });

  this.__defineSetter__('svgDefinition', function(val) {
    svgDefinition = val;
  });
  this.__defineGetter__('svgDefinition', function() {
    return svgDefinition;;
  });

  this.__defineGetter__('svg', function() {
    var cx = this.width / 2,
      cy = this.height / 2;
    return ("<?xml version=\"1.0\"?>" +
            "<!DOCTYPE svg PUBLIC \"-//W3C//DTD SVG 1.1//EN\" " +
            "\"http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd\">"+
            "<svg xmlns=\"http://www.w3.org/2000/svg\" "+
            "width=\""+width+"\" height=\""+height+"\">\n"+
            "<title>" + title + "</title>\n" +
            "<desc>\n" + description + "\n</desc>\n" +
            "  <defs>\n"+
            "    <linearGradient id=\"grad1\" "+gradientSpecs+">\n"+
            gradientStops.join("\n") +
            "\n    </linearGradient>\n"+
            "  </defs>\n"+
            "<rect id=\"background\" width=\"100%\" height=\"100%\" "+
            "fill=\"url(#grad1)\"/>\n"+
            "<g id=\"rotatelayer\" transform=\"" +
            "rotate(" + rotate + ", " + cx + ", " + cy + ")\">\n" +
            svgDefinition +
            "</g>\n</svg>");
  });
}

SvgCgContext.prototype.beginPath = function(){
  this.pathData = [];
  this.circleData = [];
};
SvgCgContext.prototype.closePath = function(){
  if ( this.pathData.length == 0 && this.circleData.length == 0) {
    return;
  }
  this.svgDefinition += ("<path d=\"" + this.pathData.join(" ") +
                         " Z\" style=\"" + this.style() + "\"/>\n");

  for ( var idx = 0; idx < this.circleData.length; idx++ ) {
    this.svgDefinition += ("<circle " + this.circleData[idx] + " style=\"" +
                           this.style() + "\"/>\n");
  }
  this.pathData = [];
  this.circleData = [];
};
SvgCgContext.prototype.moveTo = function(x,y){
  this.pathData.push("M " + x + " " + y);
};
SvgCgContext.prototype.lineTo = function(x,y){
  this.pathData.push("L " + x + " " + y);
};

SvgCgContext.prototype.bezierCurveTo = function(cp1x, cp1y, cp2x, cp2y, x, y){
  var pts = [cp1x, cp1y, cp2x, cp2y, x, y];
  this.pathData.push("C " + pts.join(" "));
};

SvgCgContext.prototype.arc = function(x, y, radius, startAngle, endAngle, anticlockwise){
  /*
   * Following is taken from:
   * https://github.com/gliffy/canvas2svg/blob/acd32ed95f4e74ec6b57bafa18651ccf5e603c23/canvas2svg.js#L986-L1020
   */

  // in canvas no circle is drawn if no angle is provided.
  if (startAngle === endAngle) {
    return;
  }

  startAngle = startAngle % (2*Math.PI);
  endAngle = endAngle % (2*Math.PI);
  if(startAngle === endAngle) {
    this.circleData.push( "cx=\"" + x + "\" cy=\"" + y + "\" r=\"" +
                          radius + "\"")
  } else {
    var endX = x+radius*Math.cos(endAngle),
    endY = y+radius*Math.sin(endAngle),
    startX = x+radius*Math.cos(startAngle),
    startY = y+radius*Math.sin(startAngle),
    sweepFlag = anticlockwise ? 0 : 1,
    largeArcFlag = 0,
    diff = endAngle - startAngle;

    // https://github.com/gliffy/canvas2svg/issues/4
    if(diff < 0) {
      diff += 2*Math.PI;
    }

    if(anticlockwise) {
      largeArcFlag = diff > Math.PI ? 0 : 1;
    } else {
      largeArcFlag = diff > Math.PI ? 1 : 0;
    }

    var pts = [radius, radius, 0, largeArcFlag, sweepFlag, endX, endY];
    this.pathData.push("A " + pts.join(" "));
  }
};

SvgCgContext.prototype.style = function() {
  var str = "";
  if (this.strokeStyle) {
    str = "stroke:#" + [this.strokeStyle hexString] + "; stroke-opacity: " +
      [this.strokeStyle alphaComponent] + ";";
  }

  if ( this.fillStyle ) {
    str += "fill:#" + [this.fillStyle hexString] + "; fill-opacity: " +
      [this.fillStyle alphaComponent] + ";";
  }

  return str;
};

SvgCgContext.prototype.stopColorStyle = function(clr) {
  return ("stop-color:#"+[clr hexString]+";stop-opacity:"+
          [clr alphaComponent]+";");
};

SvgCgContext.prototype.stopSpecs = function(percent, clr) {
  return ("<stop offset=\""+percent+"%\" style=\""+
          this.stopColorStyle(clr)+"\" />");
};

/* this is done when the path is closed, so ignore this call */
SvgCgContext.prototype.stroke = IgnoreCall;

/* this is done when the path is closed, so ignore this call. */
SvgCgContext.prototype.fill = IgnoreCall;
