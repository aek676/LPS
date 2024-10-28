//
//  GestionMascotasApp.swift
//  GestionMascotas
//
//  Created by Aula03 on 22/10/24.
//

import SwiftUI

@main
struct GestionMascotasApp: App {
    @StateObject private var vm: ViewModel = ViewModel()
    var body: some Scene {
        WindowGroup {
            ListaPersonasView()
                .environmentObject(vm)
        }
    }
}
