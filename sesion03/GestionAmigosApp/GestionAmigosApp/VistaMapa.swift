import MapKit
import SwiftUI

struct VistaMapa: View {
    var latitud: Double
    var longitud: Double
    @State private var region = MKCoordinateRegion()
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                region = MKCoordinateRegion(
                    center: CLLocationCoordinate2D(
                        latitude: latitud, longitude: longitud),
                    span: MKCoordinateSpan(
                        latitudeDelta: 0.01, longitudeDelta: 0.01))
            }
    }

}

struct VistaMapa_Previews: PreviewProvider {
    static var previews: some View {
        VistaMapa(latitud: 36.84025642271092, longitud: -2.4755970936659115)
    }
}
