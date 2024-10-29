import SwiftUI
import UIKit

struct AddPersonaView: View {
    @EnvironmentObject var vm: ViewModel
    @Binding var mostrarAddPersona: Bool
    @State var imagenGeneral: UIImage? = nil
    @State private var mostrarImagePicker: Bool = false
    @State private var nombre: String = ""

    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Button {
                    mostrarImagePicker.toggle()
                } label: {
                    Group {
                        if let imagen = imagenGeneral {
                            Image(uiImage: imagen)
                                .resizable()
                        } else {
                            Image(systemName: "person.crop.square")
                                .resizable()
                                .foregroundColor(.gray)
                        }
                    }
                    .scaledToFit()
                    .frame(width: 90, height: 90)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.white, lineWidth: 2)
                    )
                    .shadow(color: .gray, radius: 5)
                }
                .sheet(isPresented: $mostrarImagePicker) {
                    ImagePicker(sourceType: .photoLibrary) { imageSeleccionada in
                        imagenGeneral = imageSeleccionada
                    }
                }

                TextField("Nombre de la persona...", text: $nombre)
                    .font(.system(size: 18))
                    .padding(10)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                    .foregroundColor(.gray)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                    )
            }
            .padding()

            HStack {
                Spacer()
                Button {
                    let imagenParaGuardar = imagenGeneral ?? UIImage(named: "defaultProfileImage") ?? UIImage(systemName: "person.circle")!
                        
                        // Llama a addPersona con la imagen correspondiente
                        vm.addPersona(nombre: nombre.isEmpty ? "NoName" : nombre, foto: imagenParaGuardar)
                    nombre = ""
                    imagenGeneral = nil
                    mostrarAddPersona = false
                } label: {
                    Image(systemName: "square.and.arrow.down.on.square.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.blue)
                        .shadow(color: .blue.opacity(0.3), radius: 5, x: 0, y: 2)
                }
                .padding()
            }
        }
        .padding()
    }
}

