import SwiftUI

struct ListaPersonasView: View {
    @EnvironmentObject var vm: ViewModel
    @State var mostrarAddPersona: Bool = false
    var body: some View {
        NavigationView {
            VStack {
                if mostrarAddPersona {
                    AddPersonaView(mostrarAddPersona: $mostrarAddPersona)
                }
                List {
                    ForEach(vm.personasArray) { persona in
                        Section(
                            header: HeaderView(persona: persona)
                                .environmentObject(vm)
                        ) {
                            FilaView(persona: persona).environmentObject(vm)
                        }
                    }
                    .onDelete(perform: vm.deletePersona)
                }
                .navigationTitle("Personas")
                .navigationBarItems(
                    trailing:
                        Button {
                            mostrarAddPersona.toggle()
                        } label: {
                            Image(systemName: "plus.circle")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .shadow(color: .pink, radius: 14, x: 5, y: 5)
                                .shadow(color: .gray, radius: 14, x: -5, y: -5)
                        }
                )
            }
        }
    }
}

struct HeaderView: View {
    @EnvironmentObject var vm: ViewModel
    var persona: PersonaEntity
    var body: some View {
        Image(uiImage: UIImage(data: persona.foto!)!)
        Text("Hello Header")
    }
}

struct FilaView: View {
    @EnvironmentObject var vm: ViewModel
    var persona: PersonaEntity
    var body: some View {
        Text("Hello Section")
    }
}
struct AddPersonaView: View {
    @EnvironmentObject var vm: ViewModel
    @Binding var mostrarAddPersona: Bool
    var body: some View {
        Text("Hello Add Persona")
    }
}
struct ListaPersonasView_Previews: PreviewProvider {
    static var previews: some View {
        ListaPersonasView()
            .environmentObject(ViewModel())
    }
}
