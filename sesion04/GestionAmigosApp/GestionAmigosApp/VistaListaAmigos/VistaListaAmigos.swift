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
                .foregroundColor(
                    text.isEmpty
                        ? Color(UIColor.gray).opacity(0.4)
                        : Color(UIColor.gray).opacity(0.9))
            TextField("Buscar...", text: $text)
                .foregroundColor(.primary)
            if !text.isEmpty {
                Button(action: {
                    text = ""
                }) {
                    Image(systemName: "x.circle")
                        .foregroundColor(Color(UIColor.gray).opacity(0.9))
                }
            }
        }
        .padding(8)
        .background(Color(.systemGray6))
        .cornerRadius(8)
        .padding(.horizontal)
        .animation(.default, value: text)

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
                    ForEach(
                        amigoVM.arrAmigos.filter { amigo in
                            (!soloFavoritos || amigo.favorito)
                                && (query.isEmpty
                                    || amigo.nombre.lowercased().contains(
                                        query.lowercased()))
                        }
                    ) { amigo in
                        NavigationLink(
                            destination: VistaDetalle(amigoCurrent: amigo)
                                .environmentObject(amigoVM)
                        ) {
                            VistaFila(amigoCurrent: amigo)
                        }
                        .transition(.slide)
                    }.onDelete { indexSet in
                        amigoVM.arrAmigos.remove(atOffsets: indexSet)
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
