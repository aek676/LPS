import Foundation

final class ModeloDatos {
    var arrAmigos: [Amigo] = [
        Amigo(
            nombre: "Mat Fraser", telefono: "3084545452",
            email: "matfraser@gmailing.com",
            about: "Mat Fraser is the best athlete of the world",
            imagenID: "MatFraser",
            latitud: 36.83041530329687, longitud: -2.4059776820622836,
            favorito: true),
        Amigo(
            nombre: "RaiNao", telefono: "749523423",
            email: "rainao@gmailing.com",
            about: "RaiNao…", imagenID: "Rainao",
            latitud: 36.8389157611977, longitud: -2.40714076462062,
            favorito: false),
        Amigo(
            nombre: "Tim Robbins", telefono: "743523223",
            email: "timrobbins@gmailing.com",
            about: "Tim is an ordinary actor", imagenID: "TimRobbins",
            latitud: 36.85764033530464,
            longitud: -2.452192838957072, favorito: true),
    ]
}
