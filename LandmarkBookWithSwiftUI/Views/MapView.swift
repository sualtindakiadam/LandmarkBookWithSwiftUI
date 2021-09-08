//
//  MapView.swift
//  LandmarkBookWithSwiftUI
//
//  Created by Semih Kalaycı on 8.09.2021.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate : CLLocationCoordinate2D
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated:true)
    }
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: landmarkArray[0].locationCoordinate)
    }
}
