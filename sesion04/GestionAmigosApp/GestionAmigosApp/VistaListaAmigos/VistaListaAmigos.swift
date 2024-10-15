//
//  VistaListaAmigos.swift
//  GestionAmigosApp
//
//  Created by Aula03 on 11/10/24.
//

import SwiftUI

struct BusquedaView: View {
    @Binding var text: String
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            TextField("Buscar...", text: $text)
            Button {
                text = ""
            } label: {
                Image(systemName: "x.circle")
            }
        }.foregroundColor(text.isEmpty
                          ? Color(UIColor.gray).opacity(0.4)
                          : Color(UIColor.gray).opacity(0.9))
    }
}

struct VistaListaAmigos: View {
    @EnvironmentObject var amigoVM: AmigoViewModel
    @State var soloFavoritos = false
    @State var query: String = ""
    @State var enEdicion: Bool = false

    var body: some View {
        NavigationView {
            VStack {
                BusquedaView(text: $query)
                List {
                    Toggle(isOn: $soloFavoritos) {
                        Text("Mostrar solo los favoritos")
                    }
                    ForEach(amigoVM.arrAmigos) { amigo in
                        if !soloFavoritos || amigo.favorito {
                            NavigationLink(
                                destination: VistaDetalle(amigoCurrent: amigo)
                                    .environmentObject(amigoVM)
                            ) {
                                VistaFila(amigoCurrent: amigo)
                            }
                        }
                    }
                }.navigationTitle("Amigos")
            }

        }
    }

}

#Preview {
    VistaListaAmigos()
        .environmentObject(AmigoViewModel())
}
