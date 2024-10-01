//
//  VistaDatos.swift
//  sesion02
//
//  Created by Aula03 on 1/10/24.
//

import SwiftUI

struct VistaDatos: View {
    var body: some View {
        VStack {
            Text("Mat Fraser")
                .font(.title)
                .foregroundColor(.white)
            Label("655-555-555", systemImage: "iphone")
                .font(.body)
            Link(
                destination: URL(string: "mailto:matfraser@gmailing.com")!,
                label: {
                    Image(systemName: "livephoto")
                        .frame(width: 20, height: 20, alignment: .center)
                    Text("matfraser@gmailing.com")
                })
            Divider()
            Text("About Mat Fraser")
                .font(.title2)
            Text("Texto descriptivo de este amigo")
                .font(.footnote)
            Spacer()
        }.background(Color.green)
    }

}

#Preview {
    VistaDatos()
}
