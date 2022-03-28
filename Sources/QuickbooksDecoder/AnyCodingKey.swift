//
//  File.swift
//  
//
//  Created by Rajamohan S, Independent Software Engineer on 28/03/22.
//  Copyright (c) __YEAR__ Rajamohan S. All rights reserved.
//
//	See https://rajamohan0s.github.io/ for developer information.
//
 

import Foundation
 
public struct AnyCodingKey : CodingKey {
    
    public var stringValue: String
    public var intValue: Int?
    
    public init(_ base: CodingKey) {
        self.init(stringValue: base.stringValue, intValue: base.intValue)
    }
    
    public init(stringValue: String) {
        self.stringValue = stringValue
    }
    
    public init(intValue: Int) {
        self.stringValue = "\(intValue)"
        self.intValue = intValue
    }
    
    public init(stringValue: String, intValue: Int?) {
        self.stringValue = stringValue
        self.intValue = intValue
    }
}

public extension JSONDecoder.KeyDecodingStrategy {
    
    static var convertFromUpperCamelCase: JSONDecoder.KeyDecodingStrategy {
        return .custom { codingKeys in
            
            var key = AnyCodingKey(codingKeys.last!)
            
            // lowercase first letter
            if let firstChar = key.stringValue.first {
                let i = key.stringValue.startIndex
                key.stringValue.replaceSubrange(
                    i ... i, with: String(firstChar).lowercased()
                )
            }
            return key
        }
    }
}
