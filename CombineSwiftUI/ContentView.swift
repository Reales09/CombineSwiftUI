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
            Spacer()
            Text("Contador = \(contador.contador)")

            Button("Reiniciar"){
                //
                contador.contador += 1
            }
            Spacer()
            Vista2()
            Spacer()
            Vista3()
            Spacer()
            Vista4()
            Spacer()
            Vista5()
            Spacer()
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

struct Vista3: View {
    
    @StateObject var contador = Modelo()
    
    var body: some View {
        VStack {
            
            Text("Contador de vista 3(StateObject) = \(contador.contador)")

            Button("Sumar Contador"){
                //
                contador.contador += 1
            }
        }
        .padding()
    }
}

struct Vista4: View {
    
    @EnvironmentObject var contador : Modelo
    
    var body: some View {
        VStack {
            
            Text("Contador de vista 4(EnviromentObject) = \(contador.contador)")

            Button("Sumar Contador"){
                //
                contador.contador += 1
            }
        }
        .padding()
    }
}

struct Vista5: View {
    
    @EnvironmentObject var contador : Modelo

    var body: some View {
        VStack {
            
            Text("Contador de vista 5(EnviromentObject) = \(contador.contador)")

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

