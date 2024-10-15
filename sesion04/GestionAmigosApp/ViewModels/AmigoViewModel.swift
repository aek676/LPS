import Foundation

final class AmigoViewModel: ObservableObject {
    @Published var arrAmigos: [Amigo] = [
        Amigo(
            id: UUID().uuidString,
            nombre: "Alice Johnson",
            telefono: "1234567890",
            email: "alice.johnson@example.com",
            about: "Alice is a talented artist and loves painting.",
            imagenID: "AliceJohnson",
            latitud: 40.712776,
            longitud: -74.005974,
            favorito: true,
            mensajes: [
                Mensaje(
                    date: Date(), texto: "Hola, Alice", contestacion: false),
                Mensaje(
                    date: Date(), texto: "Nos vemos pronto", contestacion: true),
            ]
        ),
        Amigo(
            id: UUID().uuidString,
            nombre: "Bob Smith",
            telefono: "0987654321",
            email: "bob.smith@example.com",
            about: "Bob is a software engineer and tech enthusiast.",
            imagenID: "BobSmith",
            latitud: 34.052235,
            longitud: -118.243683,
            favorito: false,
            mensajes: [
                Mensaje(date: Date(), texto: "Hola, Bob", contestacion: false),
                Mensaje(
                    date: Date(), texto: "¿Cómo va tu nuevo proyecto?",
                    contestacion: true),
            ]
        ),
        Amigo(
            id: UUID().uuidString,
            nombre: "Charlie Brown",
            telefono: "5551234567",
            email: "charlie.brown@example.com",
            about: "Charlie is a writer and loves storytelling.",
            imagenID: "CharlieBrown",
            latitud: 51.507351,
            longitud: -0.127758,
            favorito: true,
            mensajes: [
                Mensaje(
                    date: Date(), texto: "Hola, Charlie", contestacion: false),
                Mensaje(
                    date: Date(), texto: "Escribe algo nuevo pronto",
                    contestacion: true),
            ]
        ),
    ]
}
