//
//  SaludoText.swift
//  HolaMundo
//
//  Created by Aula03 on 24/9/24.
//
import SwiftUI

struct SaludoText: View {
    private var msg:String;
    init(_ username:String, _ surnames:String){
        if username.isEmpty && surnames.isEmpty{
            msg = "Hola, ¿qué tal?"
        }else{
            msg = "Hola, \(username) \(surnames)"
        }
    }
    var body: some View {
        Text(msg)
            .font(.title)
            .fontWeight(.black)
            .foregroundColor(Color.blue)
            .padding()
    }
}
