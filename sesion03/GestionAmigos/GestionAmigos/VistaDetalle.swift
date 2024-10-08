//
//  VistaDetalle.swift
//  sesion02
//
//  Created by Aula03 on 1/10/24.
//

import SwiftUI

struct VistaDetalle: View {
    @State var amigoCurrent: Amigo
    var body: some View {
        ScrollView {
            VistaMapa(latitud: amigoCurrent.latitud, longitud: amigoCurrent.longitud).frame(height: 250)
            VistaImagen(imagenID: amigoCurrent.imagenID).offset(y: -110).padding(.bottom, -110)
            VistaDatos(amigoCurrent: amigoCurrent)
        }.navigationTitle(amigoCurrent.nombre)
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    VistaDetalle(amigoCurrent: Amigo(
        nombre: "Laura Martínez", telefono: "654321987",
        email: "laura.martinez@gmailing.com",
        about: "Laura es una apasionada de la fotografía",
        imagenID: "LauraMartinez",
        latitud: 36.841415, longitud: -2.420977,
        favorito: false))
}

