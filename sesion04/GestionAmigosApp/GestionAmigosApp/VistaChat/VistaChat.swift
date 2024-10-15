//
//  VistaChat.swift
//  GestionAmigosApp
//
//  Created by Aula03 on 15/10/24.
//
import SwiftUI

func formatDate(date: Date) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .short
    dateFormatter.timeStyle = .short
    dateFormatter.locale = Locale(identifier: "es")
    return dateFormatter.string(from: date)
}

struct VistaChat: View {
    @EnvironmentObject var amigoVM: AmigoViewModel
    var body: some View {
        List {
            ForEach(amigoVM.arrAmigos) { amigo in
                Section(
                    header: VistaHeader(
                        nombre: amigo.nombre, imagenID: amigo.imagenID),
                    footer: Text(
                        "\(amigo.mensajes.count) mensaje\(amigo.mensajes.count == 1 ? "" : "s")"
                    )
                ) {
                    ForEach(amigo.mensajes, id: \.self) { mensajeStr in
                        HStack {
                            Image(
                                systemName: mensajeStr.contestacion
                                    ? "arrow.right.to.line.circle"
                                    : "arrow.left.to.line.circle"
                            )
                            .foregroundColor(
                                mensajeStr.contestacion
                                    ? Color.red : Color.green)
                            Text(mensajeStr.texto)
                            Spacer()
                            Text(formatDate(date: mensajeStr.date))
                                .font(.caption2)
                                .fontWeight(.thin)
                                .foregroundColor(Color.gray)
                                .padding([.top, .leading])
                        }
                    }
                }
            }
        }
    }
}
