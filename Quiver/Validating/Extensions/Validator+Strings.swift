//
//  Validator+Strings.swift
//  Quiver
//
//  Created by Heitor Costa on 20/10/17.
//  Copyright © 2017 Heitor Costa. All rights reserved.
//

import Foundation

// Strings
public extension Validator {
    // Strings
    static func length(min: Int = 0, max: Int = Int.max, message: String? = nil) -> Validator {
        return LengthValidator(min: min, max: max).with(message: message)
    }
    
    static func regex(pattern: String, message: String? = nil) -> Validator {
        return RegexValidator(pattern: pattern).with(message: message)
    }
    
    static func email(message: String? = nil) -> Validator {
        return RegexValidator(pattern: "^([a-zA-Z0-9_\\.\\-])+\\@(([a-zA-Z0-9\\-])+\\.)+([a-zA-Z0-9]{2,4})+$").with(message: message)
    }
    
    static func alphabetic(message: String? = nil) -> Validator {
        return RegexValidator(pattern: "^[A-Za-z]+$").with(message: message)
    }
    
    static func numeric(message: String? = nil) -> Validator {
        return RegexValidator(pattern: "^[0-9]+$").with(message: message)
    }
    
    static func alphaNumeric(message: String? = nil) -> Validator {
        return RegexValidator(pattern: "^[a-zA-Z0-9]+$").with(message: message)
    }
}
