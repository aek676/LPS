import UIKit

func funcionEjercicio01(
    valor: Int, accion1: (Int) -> String, accion2: (Int) -> String
) {
    for i in 1...valor {
        print("Iteración \(i)", "Acción 1", accion1(i), separator: " -> ")
        print("Iteración \(i)", "Acción 2", accion2(i), separator: " -> ")
    }
}

funcionEjercicio01(
    valor: 5,
    accion1: { numero in
        if numero % 2 != 0 {
            return "Numero \(numero) es impar"
        } else {
            return "Numero \(numero) no es impar"
        }
    },
    accion2: { numero in
        if numero % 2 == 0 {
            return "Numero \(numero) es par"
        } else {
            return "Numero \(numero) no es par"
        }
    }
)

funcionEjercicio01(valor: 5) {
    numero in
    if numero % 2 != 0 {
        return "Numero \(numero) es impar"
    } else {
        return "Numero \(numero) no es impar"
    }
} accion2: { numero in
    if numero % 2 == 0 {
        return "Numero \(numero) es par"
    } else {
        return "Numero \(numero) no es par"
    }
}
