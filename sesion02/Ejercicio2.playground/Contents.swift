import UIKit

func getMessage(lugar: String, accion: (Int, String) -> String) -> String {
    return accion(Int.random(in: 1...3), lugar)
}

var mensaje: String = getMessage(lugar: "Londres") {
    (tipoViaje, lugar) -> String in
    switch tipoViaje {
    case 1:
        return "me voy de marcha a \(lugar)"
    case 2:
        return "me voy a trabajar a \(lugar) "
    case 3:
        return "me voy a estudiar a \(lugar)"
    default:
        return "me voy a \(lugar) "
    }
}

print(mensaje)

mensaje = getMessage(lugar: "Londres") {
    switch $0 {
    case 1:
        return "me voy de marcha a \($1)"
    case 2:
        return "me voy a trabajar a \($1)"
    case 3:
        return "me voy a estudiar a \($1)"
    default:
        return "me voy a \($1)"
    }
}

print(mensaje)
