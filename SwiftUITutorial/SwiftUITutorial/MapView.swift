//
//  MapView.swift
//  SwiftUITutorial
//
//  Created by Jeisson Chacón on 8/23/23.
//

import SwiftUI
import MapKit






struct MapView: UIViewRepresentable {
    
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coodinate = CLLocationCoordinate2D(latitude: 40.438638, longitude: -3.7495762)
        let span = MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10)
        let region = MKCoordinateRegion(center: coodinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}







struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
