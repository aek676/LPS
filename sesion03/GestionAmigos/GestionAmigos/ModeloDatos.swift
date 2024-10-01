import Foundation

final class ModeloDatos {
    var arrAmigos: [Amigo] = [
        Amigo(
            nombre: "Laura Martínez", telefono: "654321987",
            email: "laura.martinez@gmailing.com",
            about: "Laura es una apasionada de la fotografía",
            imagenID: "LauraMartinez",
            latitud: 36.841415, longitud: -2.420977,
            favorito: false),
        Amigo(
            nombre: "Carlos Pérez", telefono: "987654321",
            email: "carlos.perez@gmailing.com",
            about: "Carlos es un chef profesional",
            imagenID: "CarlosPerez",
            latitud: 36.845415, longitud: -2.430977,
            favorito: true),
        Amigo(
            nombre: "Ana Gómez", telefono: "123456789",
            email: "ana.gomez@gmailing.com",
            about: "Ana es una ingeniera de software",
            imagenID: "AnaGomez",
            latitud: 36.850415, longitud: -2.440977,
            favorito: false)
    ]
}
