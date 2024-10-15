//
//  VistaIndentifiacion.swift
//  GestionAmigosApp
//
//  Created by Aula03 on 15/10/24.
//
import SwiftUI

struct VistaIdentificacion: View {
    @AppStorage("userName") var userName: String?
    @State var currentUserName = ""
    @State var cambiarNombre: Bool = false
    var body: some View {
        VStack {
            Image("LogoLPS")
                .resizable()
                .frame(width: 300, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 50))
                .overlay(
                    RoundedRectangle(cornerRadius: 50).stroke(
                        Color.white, lineWidth: 2)
                )
                .shadow(color: Color.gray, radius: 39)
            HStack {
                Text("Hola, \(userName ?? "desconocido/a/e")")
                    .font(.title)
                    .foregroundColor(.black)
                Button {
                    withAnimation {
                        cambiarNombre.toggle()
                    }
                } label: {
                    Image(systemName: "keyboard")
                        .foregroundColor(.red)
                }

            }
            if cambiarNombre {
                TextField("¿Cuál es tu nombre?", text: $currentUserName)
            }
        }.onAppear {
            var currentUserName = userName ?? "desconocido/a/e"
        }.onDisappear {
            // Al salir de la vista, guardamos o eliminamos el nombre del usuario
            if currentUserName.isEmpty {
                userName = nil
            } else {
                userName = currentUserName
            }
        }
    }
}
