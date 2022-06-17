//
//  MuseumSheet1.swift
//  maVieDeQuartier
//
//  Created by Mohamed Djebali on 13/05/2022.
//

import SwiftUI

struct MuseumSheet1: View {
    @Environment(\.dismiss) var dismiss
    @State var nbPerson: Int = 6
    @State var touchInside: Bool = false
    
    var body: some View {

        VStack(spacing: 90){
                
          Text("Sortie au Musée du Chaos")
                .fontWeight(.bold)
                .font(.title2)
                .foregroundColor(.black)
                .padding(.top)
            Image("chaos")
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                
            Button {
                
                touchInside.toggle()
                
                if touchInside {
                    
                    nbPerson += 1
                   
        
                } else {
                    
                   nbPerson -= 1
                }
                
            } label: {
                Image(systemName: touchInside ? "heart.fill" : "heart")

                    .foregroundColor(.red)
                Text("Nombre de participants : \(nbPerson)")
                    .foregroundColor(.black)
            }

            
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

struct MuseumSheet1_Previews: PreviewProvider {
    static var previews: some View {
        MuseumSheet1()
            .previewInterfaceOrientation(.portrait)
    }
}
