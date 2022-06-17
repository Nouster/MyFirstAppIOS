//
//  EventView2.swift
//  maVieDeQuartier
//
//  Created by Mohamed Djebali on 18/05/2022.
//

import SwiftUI

struct EventsView2: View {
    @Environment(\.dismiss) var dismiss
    @State private var nbParticipants1 = 9
    @State var touchInside:Bool = false
    
    @State private var showShareSheet = false
    
    var body: some View {
       
        
        VStack{
            HStack{
                Spacer()
        Text("Rencontre Nomade à Villeurbanne")
                .fontWeight(.bold)
                .foregroundColor(.black)
                .padding()
                Spacer()
                
                Button{
                    showShareSheet.toggle()
                 
                  
                } label:{
                    Image(systemName: "square.and.arrow.up")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 25, alignment: .topTrailing)
                        .foregroundColor(.black)
                }
                .sheet(isPresented: $showShareSheet, content: { ActivityViewController(itemsToShare: [""]) })
                 
                    Spacer()
                
            }
        Image("event2")
            .resizable()
            .scaledToFit()
            .cornerRadius(20)
      Text( "📆 Le mercredi 25 mai de 16h à 18h")
                .fontWeight(.bold)
            Text("Nombre de Participiants: \(nbParticipants1)")
            Button {
                touchInside.toggle()
                if touchInside{
                    nbParticipants1 += 1 } else {
                        nbParticipants1 -= 1}
                    }
        label: {
            Image(systemName: touchInside ? "heart.fill" : "heart")
                .foregroundColor(.red)
            Text("Je viens")
            }
        .buttonStyle(.bordered)
            Text("""
             👌 RENCONTRE NOMADE 👌
             👉 Mais qu'est ce que c'est exactement ? Les rencontres nomades sont des maraudes de lien social où l'on part en petits groupes, à la rencontre des personnes sans-abris de son quartier.
             Un membre d'Entourage vous accompagnera en vous donnant les clés pour aborder sereinement ces rencontres. 😉
             C'est avant tout un moment d'échange ! Alors venez arpentez les rues de Villeurbanne et répandre de la chaleur humaine 🧡
             
             📍 Où ? Salle Monod - 42 rue Frédéric et Irène Joliot Curie, 69100 Villeurbanne
             
             """)
        .foregroundColor(.black)
        Spacer()
            Button(action: {
                dismiss()
            }, label: {
                Image(systemName: "arrow.counterclockwise.circle.fill")
                    .resizable()
                    .frame(width: 60, height: 60, alignment: .center)
                    .foregroundColor(.black)
                    
            })
        
      
    }
}
}
struct EventsView2_Previews: PreviewProvider {
    static var previews: some View {
        EventsView2()
    }
}
