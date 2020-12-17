//
//  ContentView.swift
//  BinaryConverter
//
//  Created by Елисей on 17.12.2020.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: ViewModel = ViewModel()
    
    var body: some View {
        Form {
            Section(header: Text("Рациональное число").padding(.top)) {
                TextField("Floating point number...", text: $viewModel.floatText, onCommit: {
                    viewModel.convertFloatToBinary()
                })
            }
            
            Section(header: Text("Шестнадцатеричное 4 байтное")) {
                TextField("4 byte hex...", text: $viewModel.binary4Text, onCommit: {
                    viewModel.convert4byteHexToFloat()
                })
            }
            
            Section(header: Text("Шестнадцатеричное 8 байтное")) {
                TextField("8 byte hex...", text:  $viewModel.binary8Text, onCommit: {
                    viewModel.convert8byteHexToFloat()
                }).padding(.bottom)
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
