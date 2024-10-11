//
//  VistaListaAmigos.swift
//  GestionAmigosApp
//
//  Created by Aula03 on 11/10/24.
//

import SwiftUI

struct VistaListaAmigos: View {
    @State var soloFavoritos = false
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $soloFavoritos) {
                    Text("Mostrar solo los favoritos")
                }
                ForEach(ModeloDatos().arrAmigos) { amigo in
                    if !soloFavoritos || amigo.favorito {
                        NavigationLink(destination: VistaDetalle(amigoCurrent: amigo)) {
                            VistaFila(amigoCurrent: amigo)
                        }
                    }
                }
            }.navigationTitle("Amigos")
        }
    }

}

#Preview {
    VistaListaAmigos()
}
