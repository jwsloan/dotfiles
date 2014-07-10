/* 'hyper' is what my Caps Lock key is set to thanks to a few websites, but the simplest walkthrough is below.
 * It basically opens up every key for a custom command.
 * http://www.leancrew.com/all-this/2012/11/shift-control-option-command-on-caps-lock/ */
var hyper = ':ctrl;shift;alt;cmd';


S.bnda({
    "right:ctrl;shift;alt;cmd" : S.op("push", { "direction" : "right", "style" : "bar-resize:screenSizeX/2" }),
    "left:ctrl;shift;alt;cmd" : S.op("push", { "direction" : "left", "style" : "bar-resize:screenSizeX/2" }),
    "up:ctrl;shift;alt;cmd" : S.op("push", { "direction" : "top", "style" : "bar-resize:screenSizeY/2" }),
    "down:ctrl;shift;alt;cmd" : S.op("push", { "direction" : "bottom", "style" : "bar-resize:screenSizeY/2" }),
    // Window Hints
    "esc:ctrl;shift;alt;cmd" : S.op("hint"),
    
    // Grid
    "esc:ctrl;shift;alt;cmd" : S.op("grid")
});

