//
//  VistaFila.swift
//  GestionAmigosApp
//
//  Created by Aula03 on 11/10/24.
//

import SwiftUI

struct VistaFila: View {
    @EnvironmentObject private var amigoVM: AmigoViewModel
    @State var amigoCurrent: Amigo
    var index: Int {
        amigoVM.arrAmigos.firstIndex(where: { $0.id == amigoCurrent.id })!
    }
    var body: some View {
        HStack {
            Image(amigoCurrent.imagenID)
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
                systemName: amigoVM.arrAmigos[index].favorito
                    ? "star.fill" : "star"
            )
            .foregroundColor(
                amigoVM.arrAmigos[index].favorito ? .yellow : .gray)
        }

    }
}

#Preview {
    List(AmigoViewModel().arrAmigos) {
        VistaFila(amigoCurrent: $0).environmentObject(AmigoViewModel())
    }
}
