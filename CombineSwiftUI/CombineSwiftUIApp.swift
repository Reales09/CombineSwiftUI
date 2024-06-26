//
//  CombineSwiftUIApp.swift
//  CombineSwiftUI
//
//  Created by Reales Rectoro Myles Clarence on 1/04/24.
//

import SwiftUI

@main
struct CombineSwiftUIApp: App {
    var modelo = Modelo()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelo)
        }
    }
}
