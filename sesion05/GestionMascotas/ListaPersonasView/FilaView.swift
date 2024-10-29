//
//  FilaView.swift
//  GestionMascotas
//
//  Created by Aula03 on 29/10/24.
//
import SwiftUI

struct FilaView: View {
    @EnvironmentObject var vm: ViewModel
    var persona: PersonaEntity
    var body: some View {
        HStack {
            if let mascotas = persona.mascotasRelation?.allObjects
                as? [MascotaEntity]
            {
                VStack {
                    Text("\(mascotas.count) mascotas")
                    ForEach(mascotas) { mascota in
                        HStack {
                            Text(mascota.raza!)
                            Text(mascota.nombre!)
                            Text("\(mascota.edad)")
                            Spacer()
                            Image(systemName: "minus.circle")
                                .font(.headline)
                                .foregroundColor(.red)
                                .onTapGesture {
                                    vm.deleteMascota(mascota: mascota)
                                }

                        }
                    }
                }

            }
        }
    }

}
