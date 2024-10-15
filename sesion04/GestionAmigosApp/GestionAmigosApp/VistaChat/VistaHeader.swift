//
//  VistaHeader.swift
//  GestionAmigosApp
//
//  Created by Aula03 on 15/10/24.
//

import SwiftUI

struct VistaHeader: View {
    var nombre: String
    var imagenID: String

    var body: some View {
        HStack {
            Image(imagenID)
                .resizable()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .shadow(color: Color.red, radius: 1)
            Text(nombre)
                .font(.headline)
                .foregroundColor(.blue)
            Spacer()
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
            Image(systemName: "envelope.fill")
                .foregroundColor(.gray)
            Image(systemName: "phone.fill")
                .foregroundColor(.green)
        }
        .padding()
    }
}
