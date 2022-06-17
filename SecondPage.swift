//
//  SecondPage.swift
//  maVieDeQuartier
//
//  Created by Mohamed Djebali on 11/05/2022.
//

import SwiftUI
import MapKit

struct Marker: Identifiable {
    let id = UUID()
    var location: MapMarker
}

struct SecondPage: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D (latitude: 45.76667, longitude: 4.88333), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    let markers = [Marker(location: MapMarker(coordinate: CLLocationCoordinate2D (latitude: 45.76667, longitude: 4.88333), tint: .red))]
    
    var body: some View {
        
        NavigationView() {
            
            Map(coordinateRegion: $region)
            
            
                .edgesIgnoringSafeArea(.top)
            
                .toolbar{
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        
                        Button {
                            
                        } label: {
                            
                            NavigationLink("Filtres") {
                                
                                FiltersView()
                                
                            }
                        }
                    }
                    
                }
        }
    }
}
struct SecondPage_Previews: PreviewProvider {
    static var previews: some View {
        SecondPage()
    }
}

