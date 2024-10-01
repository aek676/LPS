import MapKit
import SwiftUI

struct VistaMapa: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 36.84025642271092,
            longitude: -2.4755970936659115),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    var body: some View {
        Map(coordinateRegion: $region)  //recordad el uso de $ → dirección de la variable region
    }

}

struct VistaMapa_Previews: PreviewProvider {
    static var previews: some View {
        VistaMapa()
    }
}

#Preview {
    VistaMapa()
}
