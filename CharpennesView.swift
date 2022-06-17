//
//  CharpennesView.swift
//  maVieDeQuartier
//
//  Created by Mohamed Djebali on 18/05/2022.
//

import SwiftUI

import MapKit

struct CharpennesView: View {
    
    @State private var regionsCharpennes =
    MKCoordinateRegion(center: CLLocationCoordinate2D (latitude: 45.770583, longitude: 4.863708), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    let markers = [Marker(location: MapMarker(coordinate: CLLocationCoordinate2D (latitude: 45.770583, longitude: 4.863708), tint: .red))]
    
    
    
    var body: some View {
        ZStack{
            
            
            Map(coordinateRegion: $regionsCharpennes, showsUserLocation: true,
                annotationItems: markers) { marker in
                marker.location
            }
            
                .edgesIgnoringSafeArea(.top)
            
            Circle()
            
                .frame(width: 200, height: 200, alignment: .center)
                .foregroundColor(.red)
                .cornerRadius(30)
                .opacity(0.1)
        }
        
    }
}

struct CharpennesView_Previews: PreviewProvider {
    static var previews: some View {
        CharpennesView()
    }
}
