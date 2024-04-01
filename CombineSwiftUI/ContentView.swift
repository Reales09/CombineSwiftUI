//
//  ContentView.swift
//  CombineSwiftUI
//
//  Created by Reales Rectoro Myles Clarence on 1/04/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var contador = Modelo()
    
    var body: some View {
        VStack {
            
            Text("Contador = \(contador.contador)")

            Button("Sumar Contador"){
                //
                contador.contador += 1
            }
        }
        .padding()
    }
}


#Preview {
    ContentView()
}

