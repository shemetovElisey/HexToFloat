//
//  ViewModel.swift
//  BinaryConverter
//
//  Created by Елисей on 17.12.2020.
//

import Foundation
import Combine

class ViewModel: ObservableObject {
    @Published var floatText   = ""
    @Published var binary4Text = ""
    @Published var binary8Text = ""
    
    public func convertFloatToBinary() {
        if let k = Float(floatText) {
            let bytes = k.bitPattern
            binary4Text = String(format: "%#08x", bytes)
        }
        
        if let k = Double(floatText) {
            let bytes = k.bitPattern
            binary8Text = String(format: "%#08lx", bytes)
        }
    }
    
    public func convert4byteHexToFloat() {
        floatText = String(binary4Text.hexToFloat() ?? 0.0)
        convertFloatToBinary()
    }
    
    public func convert8byteHexToFloat() {
        floatText = String(binary8Text.hexToDouble() ?? 0.0)
        convertFloatToBinary()
    }
}
