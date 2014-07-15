/* 'hyper' is what my Caps Lock key is set to thanks to a few websites, but the simplest walkthrough is below.
 * It basically opens up every key for a custom command.
 * http://www.leancrew.com/all-this/2012/11/shift-control-option-command-on-caps-lock/ */
var hyper = ':ctrl;shift;alt;cmd';

//Configs
S.cfga({
    "defaultToCurrentScreen" : true,
    "secondsBetweenRepeat" : 0.1,
    "checkDefaultsOnLoad" : true,
    "focusCheckWidthMax" : 3000,
    "orderScreensLeftToRight" : true
});

S.bnda({
    //pushs
    "right:ctrl;shift;alt;cmd" : S.op("push", { "direction" : "right", "style" : "bar-resize:screenSizeX/2" }),
    "left:ctrl;shift;alt;cmd" : S.op("push", { "direction" : "left", "style" : "bar-resize:screenSizeX/2" }),
    "up:ctrl;shift;alt;cmd" : S.op("push", { "direction" : "top", "style" : "bar-resize:screenSizeY/2" }),
    "down:ctrl;shift;alt;cmd" : S.op("push", { "direction" : "bottom", "style" : "bar-resize:screenSizeY/2" }),

    //corners
    "u:ctrl;shift;alt;cmd" : S.op("corner", { "direction" : "top-left" , "width" : "screenSizeX/2", "height" : "screenSizeY/2"}),
    "o:ctrl;shift;alt;cmd" : S.op("corner", { "direction" : "top-right" , "width" : "screenSizeX/2", "height" : "screenSizeY/2"}),
    "n:ctrl;shift;alt;cmd" : S.op("corner", { "direction" : "bottom-left" , "width" : "screenSizeX/2", "height" : "screenSizeY/2"}),
    ".:ctrl;shift;alt;cmd" : S.op("corner", { "direction" : "bottom-right" , "width" : "screenSizeX/2", "height" : "screenSizeY/2"}),

    // Window Hints
    "esc:ctrl;shift;alt;cmd" : S.op("hint"),
    
    // Grid
    "esc:ctrl" : S.op("grid")
});

