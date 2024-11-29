import SwiftUI

struct AddMascotaView: View {
    @Binding var nombreMascota: String
    @Binding var edadMascota: Int16
    @Binding var tipoMascota: String
    @Binding var isPresented: Bool
    
    @State private var edadTemporal: Double = 0 // Usamos esto para el Slider (Double)

    let tiposMascota = ["Perro", "Gato"]

    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                // Campo de texto para el nombre de la mascota
                TextField("Nombre de la mascota", text: $nombreMascota)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .font(.title2)
                
                Divider()
                
                // Slider para la edad de la mascota
                VStack(alignment: .leading) {
                    Text("Edad: \(Int(edadTemporal)) años")
                        .font(.headline)
                    Slider(value: $edadTemporal, in: 0...20, step: 1)
                        .onChange(of: edadTemporal) { newValue in
                            edadMascota = Int16(newValue) // Convertimos Double a Int16
                        }
                }
                
                Divider()
                
                // Picker para seleccionar entre "Perro" y "Gato"
                Picker("Tipo de Mascota", selection: $tipoMascota) {
                    ForEach(tiposMascota, id: \.self) { tipo in
                        Text(tipo)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())

                Spacer()
                
                // Botones para aceptar o cancelar
                HStack {
                    Button(action: {
                        // Acción de cancelar
                        isPresented = false
                    }) {
                        Label("Cancelar", systemImage: "hand.raised.fill")
                            .foregroundColor(.red)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        // Acción de aceptar
                        isPresented = false
                    }) {
                        Label("Aceptar", systemImage: "hand.thumbsup.fill")
                            .foregroundColor(.blue)
                    }
                }
                .padding()
            }
            .padding()
            .navigationTitle("Agregar Mascota")
        }
    }
}
