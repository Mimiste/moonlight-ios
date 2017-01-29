//
//  keyboard_translation.m
//  Moonlight
//
//  Created by Mimiste on 05/10/2016.
//  Copyright © 2016 Moonlight Stream. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "keyboard_translation.h"

struct translatedKeycode translateKeycode(short keyCode) {
    struct translatedKeycode translatedKeycodeStructure;
    
    translatedKeycodeStructure.modifier = 0;
    translatedKeycodeStructure.keycode = 0;
    
    //Letters uppercase
    if (keyCode >= 65 && keyCode <= 90){
        translatedKeycodeStructure.keycode = keyCode;
        translatedKeycodeStructure.modifier = 0x01;
    }
    
    //Numbers
    if (keyCode >= 48 && keyCode <= 57){
        translatedKeycodeStructure.keycode = keyCode;
        //translatedKeycodeStructure.modifier = 0x01;
    }
    
    //Letters lowercase
    if (keyCode >= 97 && keyCode <= 122){
        translatedKeycodeStructure.keycode = keyCode - 32;
    }
    
    //Other keycode translation, don't hesitate to contribute to the list if you know more keycodes... :)
    switch (keyCode){
        case 32 : // Space
            translatedKeycodeStructure.keycode = 0x20; //Confirmed : Space
            translatedKeycodeStructure.modifier = 0;
            break;
        case 45 : // -
            translatedKeycodeStructure.keycode = 0x6d; //Confirmed : -
            translatedKeycodeStructure.modifier = 0x01;
            break;
        case 47 : // /
            translatedKeycodeStructure.keycode = 0xbf; //Confirmed : /
            //translatedKeycodeStructure.modifier = 0x01;
            translatedKeycodeStructure.modifier = 0;
            break;
        case 58 :
            // :
            translatedKeycodeStructure.keycode = 186;
            translatedKeycodeStructure.modifier = 0x01;
            break;
        case 59 :
            // :
            translatedKeycodeStructure.keycode = 186;
            translatedKeycodeStructure.modifier = 0;
            break;
        case 40 :
            // (
            translatedKeycodeStructure.keycode = 57;
            translatedKeycodeStructure.modifier = 0x01;
            break;
        case 41 : // )
            translatedKeycodeStructure.keycode = 48; //Confirmed : )
            //translatedKeycodeStructure.keycode = 0xdb; //Confirmed : )
            translatedKeycodeStructure.modifier = 0x01;
            break;
        case 8364 :
            break;
        case 38 :
            // &
            translatedKeycodeStructure.keycode = 55;
            translatedKeycodeStructure.modifier = 0x01;
            break;
        case 64 :
            translatedKeycodeStructure.keycode = 50;
            translatedKeycodeStructure.modifier = 0x01;
            break;
        case 34 :
            // " (normally keycode 34 sends a left click action)
            translatedKeycodeStructure.keycode = 222;
            translatedKeycodeStructure.modifier = 0x01;
            break;
        case 46 : // .
            translatedKeycodeStructure.keycode = 0xbe; //Confirmed : .
            translatedKeycodeStructure.modifier = 0;
            //translatedKeycodeStructure.modifier = 0x01;
            break;
        case 44 :
            // ,
            translatedKeycodeStructure.keycode = 188;
            translatedKeycodeStructure.modifier = 0;
            break;
        case 63 :
            translatedKeycodeStructure.keycode = 0xbf; //Confirmed : ?
            translatedKeycodeStructure.modifier = 0x01;
            break;
        case 191 :
            translatedKeycodeStructure.keycode = 0xbf; //Confirmed : ¿ (currently sends question mark)
            translatedKeycodeStructure.modifier = 0x01;
            break;
        case 33 :
            // sends PAGE UP, but needs to be exclamation point
            translatedKeycodeStructure.keycode = 49;
            translatedKeycodeStructure.modifier = 0x01;
            break;
        case 39 :
            // ' (but sends right arrow)
            translatedKeycodeStructure.keycode = 222;
            translatedKeycodeStructure.modifier = 0;
            break;
        case 91 :
            // [
            translatedKeycodeStructure.keycode = 219;
            translatedKeycodeStructure.modifier = 0;
            break;
        case 93 :
            // ] (but 93 is keycode for right click)
            translatedKeycodeStructure.keycode = 221;
            translatedKeycodeStructure.modifier = 0;
            break;
        case 123 :
            // {
            translatedKeycodeStructure.keycode = 219;
            translatedKeycodeStructure.modifier = 0x01;
            break;
        case 125 :
            // }
            translatedKeycodeStructure.keycode = 221;
            translatedKeycodeStructure.modifier = 0x01;
            break;
        case 35 :
            // #
            translatedKeycodeStructure.keycode = 51;
            translatedKeycodeStructure.modifier = 0x01;
            break;
        case 37 :
            // % (currently this is the left arrow as code 37)
            translatedKeycodeStructure.keycode = 53;
            translatedKeycodeStructure.modifier = 0x01;
            break;
        case 94 :
            // ^
            translatedKeycodeStructure.keycode = 54;
            translatedKeycodeStructure.modifier = 0x01;
            break;
        case 42 :
            // *
            translatedKeycodeStructure.keycode = 56;
            translatedKeycodeStructure.modifier = 0x01;
            break;
        case 43 :
            // +
            translatedKeycodeStructure.keycode = 187;
            translatedKeycodeStructure.modifier = 0x01;
            break;
        case 61 :
            // =
            translatedKeycodeStructure.keycode = 187;
            translatedKeycodeStructure.modifier = 0;
            break;
        case 95 :
            // _
            translatedKeycodeStructure.keycode = 189;
            translatedKeycodeStructure.modifier = 0;
            break;
        case 92 :
            // \ (Windows Key as keycode 92)
            translatedKeycodeStructure.keycode = 220;
            translatedKeycodeStructure.modifier = 0;
            break;
        case 124 :
            // |
            translatedKeycodeStructure.keycode = 220;
            translatedKeycodeStructure.modifier = 0x01;
            break;
        case 126 :
            // ~
            translatedKeycodeStructure.keycode = 192;
            translatedKeycodeStructure.modifier = 0;
            break;
        case 60 :
            // < (sending left arrow with keycode 37)
            translatedKeycodeStructure.keycode = 37;
            translatedKeycodeStructure.modifier = 0;
            break;
        case 62 :
            // > (sending right arrow with keycode 39)
            translatedKeycodeStructure.keycode = 39;
            translatedKeycodeStructure.modifier = 0;
            break;
        case 36 :
            translatedKeycodeStructure.keycode = 52;
            translatedKeycodeStructure.modifier = 0x01;
            break;
        case 163 :
            // CTRL
            
            break;
        case 165 :
            // ALT
            break;
        case 188 :
            break;
        case 12290 :
            // 。(hold 0 key -- but is sending windows key instead)
            translatedKeycodeStructure.keycode = 92;
            translatedKeycodeStructure.modifier = 0;
            break;
        case 8226 :
            // bullet (but sending keycode for right click)
            translatedKeycodeStructure.keycode = 91;
            translatedKeycodeStructure.modifier = 0;
            break;
        case 8212 :
            // -- (but used for escape key)
            translatedKeycodeStructure.keycode = 27;
            translatedKeycodeStructure.modifier = 0;
            break;
    }
    
    //Return the original keycode if not found in the previous list
    if (translatedKeycodeStructure.keycode == 0){
        translatedKeycodeStructure.keycode = keyCode;
    }
    
    return translatedKeycodeStructure;
}
