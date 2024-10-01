//
//  VistaDetalle.swift
//  sesion02
//
//  Created by Aula03 on 1/10/24.
//

import SwiftUI

struct VistaDetalle: View {
    var body: some View {
        VStack {
            VistaMapa().frame(height: 250)
            VistaImagen().offset(y: -110).padding(.bottom, -110)
            VistaDatos()
        }
    }
}

#Preview {
    VistaDetalle()
}
