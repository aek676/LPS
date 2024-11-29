//
//  HeaderView.swift
//  GestionMascotas
//
//  Created by Aula03 on 29/10/24.
//
import SwiftUI

struct HeaderView: View {
    @EnvironmentObject var vm: ViewModel
    var persona: PersonaEntity

    @State private var isAddMascotaViewPresented = false
    @State private var nombreMascota: String = ""
    @State private var edadMascota: Int16 = 0
    @State private var tipoMascota: String = "Perro"

    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            if let fotoData = persona.foto,
               let uiImage = UIImage(data: fotoData)
            {
                Image(uiImage: uiImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .onTapGesture {
                        isAddMascotaViewPresented = true // Abre la hoja modal
                    }
            } else {
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.gray)
                    .onTapGesture {
                        isAddMascotaViewPresented = true // Abre la hoja modal si no hay foto
                    }
            }

            Text(persona.nombre ?? "")
                .font(.headline)
                .foregroundColor(.primary)

            Spacer()
        }
        .padding()
        .sheet(isPresented: $isAddMascotaViewPresented) {
            AddMascotaView(
                nombreMascota: $nombreMascota,
                edadMascota: $edadMascota,
                tipoMascota: $tipoMascota,
                isPresented: $isAddMascotaViewPresented
            )
            .onDisappear {
                if !nombreMascota.isEmpty {
                    // Agregar la mascota si el usuario presionó aceptar
                    vm.addMascota(persona: persona, nombre: nombreMascota, edad: edadMascota, raza: tipoMascota)
                }
            }
        }
    }
}
