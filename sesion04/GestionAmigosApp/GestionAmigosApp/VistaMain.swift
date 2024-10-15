//
//  VistaMain.swift
//  GestionAmigosApp
//
//  Created by Aula03 on 15/10/24.
//
import SwiftUI

struct VistaMain: View {
    @EnvironmentObject var amigoVM: AmigoViewModel
    @State var seleccion: Int = 0
    
    var body: some View {
        TabView(selection: $seleccion) {
            VistaIdentificacion()
                .tabItem {
                    Image(systemName: "signature")
                    Text("Identificación")
                }
                .tag(0)
            
            VistaListaAmigos()
                .environmentObject(amigoVM)
                .tabItem {
                    Image(systemName: "bell")
                    Text("Lista de Amigos")
                }
                .tag(1)
            
            VistaChat()
                .environmentObject(amigoVM)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Chat")
                }
                .tag(2)
        }
    }
}
