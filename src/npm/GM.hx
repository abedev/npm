package npm;

import js.node.Buffer;
import npm.common.StringNumber;
import npm.gm.*;
import js.Error;

@:jsRequire("gm")
extern class GM {
  @:overload(function(width : Int, height : Int, color : String) : Void {})
  @:overload(function(width : Int, height : Int) : Void {})
  @:overload(function(stream : Readable) : Void {})
  @:overload(function(stream : Readable, name : String) : Void {})
  @:overload(function(buffer : Buffer) : Void {})
  @:overload(function(buffer : Buffer, name : String) : Void {})
  @:selfCall function new(path : String) : Void;

  // getters
  function color(callback : Error -> Int -> Void) : GM;
  function depth(callback : Error -> Int -> Void) : GM;
  // TODO check type
  function filesize(callback : Error -> String -> Void) : GM;
  function format(callback : Error -> String -> Void) : GM;
  // TODO check type
  function identify(callback : Error -> {} -> Void) : GM;
  // TODO check type
  function orientation(callback : Error -> {} -> Void) : GM;
  // TODO check type
  function res(callback : Error -> String -> Void) : GM;
  function size(callback : Error -> { width : Int, height : Int } -> Void) : GM;

  //image output
  // - writes the processed image data to the specified filename
  function write(path : String, callback : Error -> Void) : Void;
  // - provides a ReadableStream with the processed image data
  function stream(callback : Error -> Writable -> Writable -> Void) : Void;
  // - returns the image as a Buffer instead of a stream
  function toBuffer(?format : String, callback : Error -> Buffer -> Void) : Void;

  // manipulation
  function adjoin() : GM;
  // TODO check argument type
  function affine(matrix : String) : GM;
  // enabled by default
  function antialias(enable : Bool) : GM;
  @:overload(function(img1 : String, img2 : String, ltr : Bool) : GM {})
  @:overload(function(img1 : String, img2 : String) : GM {})
  @:overload(function(img : String, ltr : Bool) : GM {})
  function append(img : String) : GM;
  function authenticate(password : String) : GM;
  function autoOrient() : GM;
  function average() : GM;
  function backdrop() : GM;
  function bitdepth(depth : Int) : GM;
  function blackThreshold(red : StringNumber, ?green : StringNumber, ?blue : StringNumber, ?opacity : StringNumber) : GM;
  function bluePrimary(x : StringNumber, y : StringNumber) : GM;
  function blur(radius : StringNumber, ?sigma : StringNumber) : GM;
  function border(width : StringNumber, height : StringNumber) : GM;
  function borderColor(color : String) : GM;
  function box(color : String) : GM;
  function channel(channel : Channel) : GM;
  function charcoal(factor : StringNumber) : GM;
  function chop(width : StringNumber, height : StringNumber, x : StringNumber, y : StringNumber) : GM;
  function clip() : GM;
  function coalesce() : GM;
  function colors(number : Int) : GM;
  function colorize(red : StringNumber, ?green : StringNumber, ?blue : StringNumber) : GM;
  function colorMap(type : MapType) : GM;
  function colorspace(val : String) : GM;
  function comment(test : String) : GM;
  function compose(operator : ComposeOperator) : GM;
  function compress(type : Compression) : GM;
  function contrast(multiplier : Int) : GM;
  function convolve(kernel : String) : GM;
  function createDirectories() : GM;

  // function crop() : GM;
  // function cycle() : GM;
  function deconstruct() : GM;
  // function delay() : GM;
  function define() : GM;
  // function density() : GM;
  function despeckle() : GM;
  // function dither() : GM;
  // function displace() : GM;
  // function display() : GM;
  // function dispose() : GM;
  // function dissolve() : GM;
  // function edge() : GM;
  // function emboss() : GM;
  // function encoding() : GM;
  function enhance() : GM;
  // function endian() : GM;
  function equalize() : GM;
  // function extent() : GM;
  // function file() : GM;
  // function filter() : GM;
  function flatten() : GM;
  function flip() : GM;
  function flop() : GM;
  // function foreground() : GM;
  // function frame() : GM;
  // function fuzz() : GM;
  // function gamma() : GM;
  // function gaussian() : GM;
  // function geometry() : GM;
  // function gravity() : GM;
  // function greenPrimary() : GM;
  // function highlightColor() : GM;
  // function highlightStyle() : GM;
  // function iconGeometry() : GM;
  // function implode() : GM;
  // function intent() : GM;
  // function interlace() : GM;
  // function label() : GM;
  // function lat() : GM;
  // function level() : GM;
  // function list() : GM;
  // function limit() : GM;
  // function log() : GM;
  // function loop() : GM;
  // function lower() : GM;
  // function magnify() : GM;
  // function map() : GM;
  function matte() : GM;
  // function matteColor() : GM;
  // function mask() : GM;
  // function maximumError() : GM;
  // function median() : GM;
  // function minify() : GM;
  // function mode() : GM;
  // function modulate() : GM;
  // function monitor() : GM;
  // function monochrome() : GM;
  // function morph() : GM;
  function mosaic() : GM;
  // function motionBlur() : GM;
  function name() : GM;
  // function negative() : GM;
  function noise() : GM;
  function noop() : GM;
  function normalize() : GM;
  function noProfile() : GM;
  // function opaque() : GM;
  // function operator() : GM;
  // function orderedDither() : GM;
  // function outputDirectory() : GM;
  // function paint() : GM;
  // function page() : GM;
  // function pause() : GM;
  // function pen() : GM;
  function ping() : GM;
  // function pointSize() : GM;
  // function preview() : GM;
  // function process() : GM;
  // function profile() : GM;
  function progress() : GM;
  function quality(val : Int) : GM;
  // function raise() : GM;
  // function rawSize() : GM;
  // function randomThreshold() : GM;
  // function recolor() : GM;
  // function redPrimary() : GM;
  // function region() : GM;
  function remote() : GM;
  function render() : GM;
  // function repage() : GM;
  function resample(horizontal : Int, vertical : Int) : GM;

  @:overload(function(width : Null<Int>, height : Int, options : ResizeOptions) : GM {})
  @:overload(function(width : Null<Int>, height : Int) : GM {})
  function resize(width : Int) : GM;
  // function roll() : GM;
  // function rotate() : GM;
  // function sample() : GM;
  // function samplingFactor() : GM;
  // function scale() : GM;
  // function scene() : GM;
  // function scenes() : GM;
  function screen() : GM;
  // function segment() : GM;
  function sepia() : GM;
  // function set() : GM;
  // function setFormat() : GM;
  // function shade() : GM;
  // function shadow() : GM;
  function sharedMemory() : GM;
  // function sharpen() : GM;
  // function shave() : GM;
  // function shear() : GM;
  function silent() : GM;
  // function solarize() : GM;
  // function snaps() : GM;
  // function stegano() : GM;
  function stereo() : GM;

  // imagemagick function only
  function strip() : GM;
  // function spread() : GM;
  // function swirl() : GM;
  // function textFont() : GM;
  // function texture() : GM;
  // function threshold() : GM;
  // function thumb() : GM;
  // function tile() : GM;
  // function transform() : GM;
  // function transparent() : GM;
  // function treeDepth() : GM;
  function trim() : GM;
  // function type() : GM;
  // function update() : GM;
  // function units() : GM;
  // function unsharp() : GM;
  function usePixmap() : GM;
  function view() : GM;
  // function virtualPixel() : GM;
  // function visual() : GM;
  // function watermark() : GM;
  // function wave() : GM;
  // function whitePoint() : GM;
  // function whiteThreshold() : GM;
  // function window() : GM;
  function windowGroup() : GM;

  // drawing primitives

  // function draw() : GM;
  // function drawArc() : GM;
  // function drawBezier() : GM;
  // function drawCircle() : GM;
  // function drawEllipse() : GM;
  // function drawLine() : GM;
  // function drawPoint() : GM;
  // function drawPolygon() : GM;
  // function drawPolyline() : GM;
  // function drawRectangle() : GM;
  // function drawText() : GM;
  // function fill() : GM;
  // function font() : GM;
  // function fontSize() : GM;
  // function stroke() : GM;
  // function strokeWidth() : GM;
  // function setDraw() : GM;
}