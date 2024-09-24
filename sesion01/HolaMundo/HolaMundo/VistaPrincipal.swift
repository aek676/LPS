//
//  ContentView.swift
//  HolaMundo
//
//  Created by Aula03 on 24/9/24.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var surnames: String = ""
    var body: some View {
        ZStack {
            Color.orange
            VStack {
                Image("Logotipo UAL")
                SaludoText(username, surnames)
                VStack {
                    HStack {
                        Text("Nombre: ").bold()
                        TextField("Introduzca su nombre", text: $username)
                    }
                    
                }
                VStack {
                    HStack {
                        Text("Apellidos: ").bold()
                        TextField("Introduzca sus apellidos", text: $surnames)
                    }
                    
                }
                Button("Reset") {
                    username = ""
                }
            }
            .padding()
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.light)
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}


#Preview {
    ContentView()
}
