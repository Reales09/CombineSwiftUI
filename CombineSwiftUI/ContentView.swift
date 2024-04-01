//
//  ContentView.swift
//  CombineSwiftUI
//
//  Created by Reales Rectoro Myles Clarence on 1/04/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var contador = Modelo()
    @State private var titulo = ""
    
    
    var body: some View {
        VStack {
            Text(titulo).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Text("Contador = \(contador.contador)")

            Button("Sumar Contador"){
                //
                contador.contador += 1
            }
            Button("Titulo"){
                //
                titulo = "Nuevo titulo"
            }
            Vista2()
        }
        .padding()
    }
}

struct Vista2: View {
    
    @ObservedObject var contador = Modelo()
    
    var body: some View {
        VStack {
            
            Text("Contador de vista 2(ObservedObject) = \(contador.contador)")

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

