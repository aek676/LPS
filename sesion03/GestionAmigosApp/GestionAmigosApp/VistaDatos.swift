import SwiftUI

struct VistaDatos: View {
    @State var amigoCurrent: Amigo
    var body: some View {
        VStack {
            Text(amigoCurrent.nombre)
                .font(.title)
                .foregroundColor(.white)
            Label(amigoCurrent.telefono, systemImage: "iphone")
                .font(.body)
            Link(
                destination: URL(string: "mailto:\(amigoCurrent.email)")!,
                label: {
                    Image(systemName: "livephoto")
                        .frame(width: 20, height: 20, alignment: .center)
                    Text(amigoCurrent.email)
                })
            Divider()
            Text("About \(amigoCurrent.nombre)")
                .font(.title2)
            Text(amigoCurrent.about)
                .font(.footnote)
            Spacer()
        }.background(Color.green)
    }

}

#Preview {
    VistaDatos(amigoCurrent: Amigo(
        nombre: "Mat Fraser", telefono: "3084545452",
        email: "matfraser@gmailing.com",
        about: "Mat Fraser is the best athlete of the world",
        imagenID: "MatFraser",
        latitud: 36.83041530329687, longitud: -2.4059776820622836,
        favorito: true))
}
