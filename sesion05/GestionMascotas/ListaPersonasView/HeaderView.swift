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
                        vm.addMascota(persona: persona, nombre: "\(persona.nombre!)\(Int.random(in: 1000...2000))", edad: 3, raza: "gato")
                    }

            } else {
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.gray)
            }

            Text(persona.nombre ?? "")
                .font(.headline)
                .foregroundColor(.primary)

            Spacer()
        }.padding()

    }
}
