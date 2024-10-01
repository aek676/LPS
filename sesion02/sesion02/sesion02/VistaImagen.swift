//
//  VistaImagen.swift
//  sesion02
//
//  Created by Aula03 on 1/10/24.
//

import SwiftUI

struct VistaImagen: View {
    @State private var shadowColor: Color = .red
    var body: some View {
        Image("putin")
            .resizable()
            .frame(width: 150, height: 150, alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
            .shadow(color: shadowColor, radius: 9)
            .onTapGesture {
                shadowColor = Color(
                    red: .random(in: 0...1),
                    green: .random(in: 0...1),
                    blue: .random(in: 0...1)
                )
            }
    }
}

#Preview {
    VistaImagen()
}
