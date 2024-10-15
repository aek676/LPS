import Foundation

final class ModeloDatos: ObservableObject {
    @Published var arrAmigos: [Amigo] = [
        Amigo(
            nombre: "Alice Johnson", telefono: "1234567890",
            email: "alice.johnson@example.com",
            about: "Alice is a talented artist and loves painting.",
            imagenID: "AliceJohnson",
            latitud: 40.712776, longitud: -74.005974,
            favorito: true),
        Amigo(
            nombre: "Bob Smith", telefono: "0987654321",
            email: "bob.smith@example.com",
            about: "Bob is a software engineer and tech enthusiast.",
            imagenID: "BobSmith",
            latitud: 34.052235, longitud: -118.243683,
            favorito: false),
        Amigo(
            nombre: "Charlie Brown", telefono: "5551234567",
            email: "charlie.brown@example.com",
            about: "Charlie is a writer and loves storytelling.",
            imagenID: "CharlieBrown",
            latitud: 51.507351, longitud: -0.127758,
            favorito: true),
    ]
}
