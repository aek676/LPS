import SwiftUI

struct VistaDetalle: View {
    @State var amigoCurrent: Amigo
    var body: some View {
        VStack {
            VistaMapa(latitud: amigoCurrent.latitud, longitud: amigoCurrent.longitud).frame(height: 250)
            VistaImagen(imagenID: amigoCurrent.imagenID).offset(y: -110).padding(.bottom, -110)
            VistaDatos(amigoCurrent: amigoCurrent)
        }
    }
}

#Preview {
    VistaDetalle(amigoCurrent: Amigo(
        nombre: "Mat Fraser", telefono: "3084545452",
        email: "matfraser@gmailing.com",
        about: "Mat Fraser is the best athlete of the world",
        imagenID: "MatFraser",
        latitud: 36.83041530329687, longitud: -2.4059776820622836,
        favorito: true))
}
