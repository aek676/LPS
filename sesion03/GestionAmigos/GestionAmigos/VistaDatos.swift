//
//  VistaDatos.swift
//  sesion02
//
//  Created by Aula03 on 1/10/24.
//

import SwiftUI

struct VistaDatos: View {
    @State var amigoCurrent: Amigo
    var body: some View {
        VStack {
            Text(amigoCurrent.nombre)
                .font(.title)
                .foregroundColor(.white)
            Label(amigoCurrent.telefono, systemImage: "iphone")
                .font(.body)
            Link(
                destination: URL(string: "mailto:\(amigoCurrent.email)")!,
                label: {
                    Image(systemName: "livephoto")
                        .frame(width: 20, height: 20, alignment: .center)
                    Text(amigoCurrent.email)
                })
            Divider()
            Text("About \(amigoCurrent.nombre)")
                .font(.title2)
            Text(amigoCurrent.about)
                .font(.footnote)
            Spacer()
        }.background(Color.green)
    }

}

#Preview {
    VistaDatos(amigoCurrent: Amigo(
        nombre: "Laura Martínez", telefono: "654321987",
        email: "laura.martinez@gmailing.com",
        about: "Laura es una apasionada de la fotografía",
        imagenID: "LauraMartinez",
        latitud: 36.841415, longitud: -2.420977,
        favorito: false))
}
