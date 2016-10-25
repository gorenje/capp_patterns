function SvgCgContext(width, height){
  var lineCap = null;
  var fillStyle = null;
  var strokeStyle = null;
  var svgDefinition = "";
  var pathData = [];

  this.width = width;
  this.height = height;

  this.__defineSetter__('lineCap', function(val) {
    console.log("settting linecap");
    lineCap = val;
  });
  this.__defineGetter__('lineCap', function() {
    console.log("gettting linecap");
    return lineCap;
  });

  this.__defineSetter__('lineJoin', function(val) {
    console.log("settting linejoin");
  });
  this.__defineGetter__('lineJoin', function() {
    console.log("gettting linejoin");
    return null;
  });

  this.__defineSetter__('lineWidth', function(val) {
    console.log("settting linewidth");
  });
  this.__defineGetter__('lineWidth', function() {
    console.log("gettting linewidth");
    return null;
  });

  this.__defineSetter__('miterLimit', function(val) {
    console.log("settting miterLimit");
  });
  this.__defineGetter__('miterLimit', function() {
    console.log("gettting miterLimit");
    return null;
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
    return ("<?xml version=\"1.0\"?>" +
            "<!DOCTYPE svg PUBLIC \"-//W3C//DTD SVG 1.1//EN\" " +
            "\"http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd\">"+
            "<svg xmlns=\"http://www.w3.org/2000/svg\" "+
            "width=\""+width+"\" height=\""+height+"\">" +
            svgDefinition +
            "</svg>");
  });
}

SvgCgContext.prototype.beginPath = function(){
  this.pathData = [];
};
SvgCgContext.prototype.closePath = function(){
  this.svgDefinition += ("<path d=\"" + this.pathData.join(" ") +
                         " Z\" style=\"" + this.style() + "\"/>");
  this.pathData = [];
};
SvgCgContext.prototype.moveTo = function(x,y){
  this.pathData.push("M " + x + " " + y);
};
SvgCgContext.prototype.lineTo = function(x,y){
  this.pathData.push("L " + x + " " + y);
};

SvgCgContext.prototype.bezierCurveTo = function(cp1x, cp1y, cp2x, cp2y, x, y){
};

SvgCgContext.prototype.stroke = function(){
};

SvgCgContext.prototype.fill = function(){
};

SvgCgContext.prototype.arc = function(x, y, radius, startAngle, endAngle, anticlockwise){
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
