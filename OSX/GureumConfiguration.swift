//
//  GureumConfiguration.swift
//  OSX
//
//  Created by Jeong YunWon on 2018. 4. 19..
//  Copyright © 2018 youknowone.org. All rights reserved.
//

import Foundation

var CIMLastHangulInputMode = "CIMLastHangulInputMode"

var CIMLeftCommandKeyShortcutBehavior = "CIMLeftCommandKeyShortcutBehavior"
var CIMLeftOptionKeyShortcutBehavior = "CIMLeftOptionKeyShortcutBehavior"
var CIMLeftControlKeyShortcutBehavior = "CIMLeftControlKeyShortcutBehavior"
var CIMRightCommandKeyShortcutBehavior = "CIMRightCommandKeyShortcutBehavior"
var CIMRightOptionKeyShortcutBehavior = "CIMRightOptionKeyShortcutBehavior"
var CIMRightControlKeyShortcutBehavior = "CIMRightControlKeyShortcutBehavior"
var CIMInputModeExchangeKeyModifier = "CIMInputModeExchangeKeyModifier"
var CIMInputModeExchangeKeyCode = "CIMInputModeExchangeKeyCode"
var CIMInputModeHanjaKeyModifier = "CIMInputModeHanjaKeyModifier"
var CIMInputModeHanjaKeyCode = "CIMInputModeHanjaKeyCode"
var CIMInputModeEnglishKeyModifier = "CIMInputModeEnglishKeyModifier"
var CIMInputModeEnglishKeyCode = "CIMInputModeEnglishKeyCode"
var CIMInputModeKoreanKeyModifier = "CIMInputModeKoreanKeyModifier"
var CIMInputModeKoreanKeyCode = "CIMInputModeKoreanKeyCode"
var CIMOptionKeyBehavior = "CIMOptionKeyBehavior"
var CIMHangulCombinationModeComposing = "CIMHangulCombinationModeComposing"
var CIMHangulCombinationModeCommiting = "CIMHangulCombinationModeCommiting"

var CIMSharedInputManager = "CIMSharedInputManager"
var CIMAutosaveDefaultInputMode = "CIMAutosaveDefaultInputMode"
var CIMRomanModeByEscapeKey = "CIMRomanModeByEscapeKey"
var CIMShowsInputForHanjaCandidates = "CIMShowsInputForHanjaCandidates"


@objc class GureumConfiguration: UserDefaults {

    @objc public var lastHangulInputMode: String? {
        get {
            return self.string(forKey: CIMLastHangulInputMode)
        }

        set {
            return self.set(newValue, forKey: CIMLastHangulInputMode)
        }
    }

    @objc public var optionKeyBehavior: Int {
        get {
            return self.integer(forKey: CIMOptionKeyBehavior)
        }
    }

    @objc public var showsInputForHanjaCandidates: Int {
        get {
            return self.integer(forKey: CIMShowsInputForHanjaCandidates)
        }
    }

    @objc public var hangulCombinationModeCommiting: Int {
        get {
            return self.integer(forKey: CIMHangulCombinationModeCommiting)
        }
    }

    @objc public var hangulCombinationModeComposing: Int {
        get {
            return self.integer(forKey: CIMHangulCombinationModeComposing)
        }
    }

    public var inputModeHanjaKey: (Int, Int) {
        get {
            return (self.inputModeHanjaKeyModifier, self.inputModeHanjaKeyCode)
        }
    }

    @objc public var inputModeHanjaKeyModifier: Int {
        get {
            return self.integer(forKey: CIMInputModeHanjaKeyModifier)
        }
    }

    @objc public var inputModeHanjaKeyCode: Int {
        get {
            return self.integer(forKey: CIMInputModeHanjaKeyCode)
        }
    }

    @objc public var romanModeByEscapeKey: Int {
        get {
            return self.integer(forKey: CIMRomanModeByEscapeKey);
        }
    }

    @objc public var autosaveDefaultInputMode: Int {
        get {
            return self.integer(forKey: CIMAutosaveDefaultInputMode);
        }
    }
}
