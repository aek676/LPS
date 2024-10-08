import MapKit
import SwiftUI

struct VistaMapa: View {
    @State var latitud: Double
    @State var longitud: Double
    @State private var region = MKCoordinateRegion()
    var body: some View {
        Map(coordinateRegion: $region).onAppear {
            region = MKCoordinateRegion(
                center: CLLocationCoordinate2D(
                    latitude: latitud, longitude: longitud),
                span: MKCoordinateSpan(
                    latitudeDelta: 0.02, longitudeDelta: 0.02))
        }.mapStyle(.hybrid)
        //recordad el uso de $ → dirección de la variable region
    }

}

struct VistaMapa_Previews: PreviewProvider {
    static var previews: some View {
        VistaMapa(latitud: 36.84025642271092, longitud: -2.4755970936659115)
    }
}

#Preview {
    VistaMapa(latitud: 36.84025642271092, longitud: -2.4755970936659115)
}
