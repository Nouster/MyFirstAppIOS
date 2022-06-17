//
//  MuseumSheet2.swift
//  maVieDeQuartier
//
//  Created by Mohamed Djebali on 13/05/2022.
//

import SwiftUI

struct MuseumSheet2: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        VStack(spacing: 90){
                
          Text("Découverte de l'institut des arts aquatiques")
                .fontWeight(.bold)
                .font(.title2)
                .foregroundColor(.black)
                .padding(.top)
            Image("institut")
                .resizable()
                .scaledToFit()
                
            
            Text("La Demeure du Chaos est un ancien relais de poste du XVIIᵉ siècle, situé à Saint-Romain-au-Mont-d'Or, entièrement transformé et déstructuré sous l'impulsion de Thierry Ehrmann, son actuel propriétaire. Cette transformation a fait l'objet de nombreuses controverses qui ont également pris un tournant judiciaire. La Demeure du Chaos est un ancien relais de poste du XVIIᵉ siècle, situé nt judiciaire. La Demeure du Chaos est un ancien relais de poste du XVIIᵉ siècle, situé à judiciaire.")
                .foregroundColor(.black)
                .padding()
            
            Button {
                dismiss()
                
            } label: {
                Image(systemName: "checkmark.circle")
                    .resizable()
                    .frame(width: 70, height: 60)
                    .foregroundColor(.black)
                    
            }

        }
    }
}

struct MuseumSheet2_Previews: PreviewProvider {
    static var previews: some View {
        MuseumSheet2()
            .previewInterfaceOrientation(.portrait)
    }
}

