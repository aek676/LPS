//
//  VistaFila.swift
//  GestionAmigosApp
//
//  Created by Aula03 on 11/10/24.
//

import SwiftUI

struct VistaFila: View {
    @EnvironmentObject private var modeloDatos: ModeloDatos
    @State var amigoCurrent: Amigo
    var index: Int {
        modeloDatos.arrAmigos.firstIndex(where: { $0.id == amigoCurrent.id })!
    }
    var body: some View {
        HStack {
            amigoCurrent.imagen
                .resizable()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .shadow(color: Color.red, radius: 1)
            VStack(alignment: .leading) {
                Text(amigoCurrent.nombre)
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(Color.green)
                Text(amigoCurrent.telefono)
                    .font(.caption2)
                    .fontWeight(.medium)
            }
            Spacer()
            Image(
                systemName: modeloDatos.arrAmigos[index].favorito
                    ? "star.fill" : "star"
            )
            .foregroundColor(
                modeloDatos.arrAmigos[index].favorito ? .yellow : .gray)
        }

    }
}

#Preview {
    List(ModeloDatos().arrAmigos) {
        VistaFila(amigoCurrent: $0).environmentObject(ModeloDatos())
    }
}
