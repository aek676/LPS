//
//  GestionAmigosAppApp.swift
//  GestionAmigosApp
//
//  Created by Aula03 on 11/10/24.
//

import SwiftUI

@main
struct GestionAmigosApp: App {
    @StateObject private var modeloDatos = ModeloDatos()
    var body: some Scene {
        WindowGroup {
            VistaListaAmigos()
                .environmentObject(modeloDatos)
        }
    }
}
