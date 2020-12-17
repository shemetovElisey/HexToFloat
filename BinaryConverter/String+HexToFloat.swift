//
//  String+HexToFloat.swift
//  BinaryConverter
//
//  Created by Елисей on 17.12.2020.
//

import Foundation

extension String {
    func hexToFloat() -> Float? {
        var toInt = Int(strtol(self, nil, 16))
        var float: Float?
        memcpy(&float, &toInt, MemoryLayout.size(ofValue: float))
        return float
    }
    
    func hexToDouble() -> Double? {
        var toInt = strtoul(self, nil, 16)
        var double: Double?
        memcpy(&double, &toInt, MemoryLayout.size(ofValue: double))
        return double
    }
}
