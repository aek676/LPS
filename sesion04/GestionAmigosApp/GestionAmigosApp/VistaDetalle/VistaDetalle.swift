import SwiftUI

struct VistaDetalle: View {
    @EnvironmentObject private var amigoVM: AmigoViewModel
    @State var amigoCurrent: Amigo
    var body: some View {
        ScrollView {
            VistaMapa(
                latitud: amigoCurrent.latitud, longitud: amigoCurrent.longitud
            ).frame(height: 250)
            VistaImagen(imagenID: amigoCurrent.imagenID).offset(y: -110)
                .padding(.bottom, -110)
            VistaDatos(amigoCurrent: amigoCurrent).environmentObject(amigoVM)
        }.navigationTitle(amigoCurrent.nombre)
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    VistaDetalle(
        amigoCurrent: Amigo(
            nombre: "Alice Johnson", telefono: "1234567890",
            email: "alice.johnson@example.com",
            about: "Alice is a talented artist and loves painting.",
            imagenID: "AliceJohnson",
            latitud: 40.712776, longitud: -74.005974,
            favorito: true)).environmentObject(AmigoViewModel())
}
