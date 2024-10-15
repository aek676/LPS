import SwiftUI

struct VistaDatos: View {
    @EnvironmentObject private var modeloDatos: ModeloDatos
    @State var amigoCurrent: Amigo
    @State private var textoOpinion: String = ""
    var index: Int {
        modeloDatos.arrAmigos.firstIndex(where: { $0.id == amigoCurrent.id })!
    }
    var body: some View {
        VStack {
            HStack {
                Text(modeloDatos.arrAmigos[index].nombre)
                    .font(.title)
                    .foregroundColor(.white)
                Button {
                    print(modeloDatos.arrAmigos[index].favorito.toggle())
                } label: {
                    Image(
                        systemName:
                            modeloDatos.arrAmigos[index].favorito
                            ? "star.fill" : "star"
                    )
                    .foregroundColor(
                        modeloDatos.arrAmigos[index].favorito ? .yellow : .gray)
                }
            }
            Label(modeloDatos.arrAmigos[index].telefono, systemImage: "iphone")
                .font(.body)
            Link(
                destination: URL(
                    string: "mailto:\(modeloDatos.arrAmigos[index].email)")!,
                label: {
                    Image(systemName: "livephoto")
                        .frame(width: 20, height: 20, alignment: .center)
                    Text(modeloDatos.arrAmigos[index].email)
                })
            Divider()
            TextEditor(text: $textoOpinion)
                .frame(width: 350, height: 300)
                .overlay(Rectangle().stroke(Color.gray, lineWidth: 2))
                .onAppear {
                    textoOpinion = modeloDatos.arrAmigos[index].about
                }
                .onChange(of: textoOpinion) {
                    if textoOpinion.count > 150 {
                        textoOpinion = String(textoOpinion.prefix(150))
                    }
                    modeloDatos.arrAmigos[index].about = textoOpinion
                }
                .font(.footnote)
                .scrollContentBackground(.hidden)
            let characterCount: Int = Int(textoOpinion.count)
            ProgressView(
                "Número de caracteres: \(characterCount)/150",
                value: min(Double(characterCount), 150), total: 150
            )
            .progressViewStyle(LinearProgressViewStyle())
            .accentColor(characterCount >= 100 ? .red : .blue)
            .frame(width: 300)
            Spacer()
        }.background(Color.green)
    }

}

#Preview {
    VistaDatos(
        amigoCurrent: Amigo(
            nombre: "Mat Fraser", telefono: "3084545452",
            email: "matfraser@gmailing.com",
            about: "Mat Fraser is the best athlete of the world",
            imagenID: "MatFraser",
            latitud: 36.83041530329687, longitud: -2.4059776820622836,
            favorito: true)
    ).environmentObject(ModeloDatos())
}
