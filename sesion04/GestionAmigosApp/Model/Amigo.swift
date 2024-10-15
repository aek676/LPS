import Foundation
import SwiftUI

struct Amigo: Identifiable {
    var id = UUID().uuidString
    var nombre: String
    var telefono: String = "000000000"
    var email: String = "nuevo@gmail.com"
    var about: String = "Tu opinión"
    var imagenID: String
    var latitud: Double = 0.0
    var longitud: Double = 0.0
    var favorito: Bool = false
    var mensajes: [Mensaje] = []//este atributo es nuevo...
}
