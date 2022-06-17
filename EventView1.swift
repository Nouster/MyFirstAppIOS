//
//  EventView1.swift
//  maVieDeQuartier
//
//  Created by Mohamed Djebali on 16/05/2022.
//

import SwiftUI

struct EventView1: View {
    @Environment(\.dismiss) var dismiss
    @State private var nbParticipants: Int = 6
    @State var touchInside: Bool = false
    @State var showShareSheet: Bool = false
    
    var body: some View {
        
        
        VStack() {
            
            HStack(){
                
                Text("Rencontre autour d'un verre")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                Button {
                    showShareSheet.toggle()
                } label: {
                    Image(systemName: "square.and.arrow.up")
                        
                        .foregroundColor(.black)
                        .font(.title)
                }
                .sheet(isPresented: $showShareSheet, content:  { ActivityViewController(itemsToShare: [""]) })
                
                
            }
            
            
            
            Image("event6")
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .padding()
            
            Text("""
                 📆 Sam, 28, mai 2022
                 \t\t16:00 – 17:30 \t
                 """)
            .fontWeight(.bold)
            .padding()
            
            Text("Nombre de participants : \(nbParticipants)")
            
            
            
            Button {
                
                touchInside.toggle()
                
                if touchInside {
                    
                    nbParticipants += 1
                    
                    
                } else {
                    
                    nbParticipants -= 1
                }
                
            } label: {
                Image(systemName: touchInside ? "heart.fill" : "heart")
                    .padding()
                    .foregroundColor(.red)
                Text("Je viens !")
                    .foregroundColor(.black)
                
            }
            .buttonStyle(.bordered)
            
            
            Text("""

    Cette journée est conçue pour combiner les forces des professionnels de l’insertion avec les professionnels de la petite enfance. C’est le Combi-Tour, une initiative portée par Pôle-Emploi et la Caf du Rhône avec la participation active de leurs partenaires : Ville de Villeurbanne, Maison métropolitaine pour l’insertion par l’Emploi, Métropole de Lyon.
    📍 234 cours Emile Zola à Villeurbanne
""")
            
            .foregroundColor(.black)
            .multilineTextAlignment(.center)
            Spacer()
            Button(action: {
                dismiss()
            }, label: {
                Image(systemName: "arrow.counterclockwise.circle.fill")
                    .resizable()
                    .frame(width: 60, height: 60)
                
            })
            
            .foregroundColor(.black)
            Spacer()
        }
        
    }
    
}



struct EventView1_Previews: PreviewProvider {
    static var previews: some View {
        EventView1()
    }
}



struct ActivityViewController: UIViewControllerRepresentable {
    var itemsToShare: [Any]
    var servicesToShareItem: [UIActivity]? = nil
    func makeUIViewController(context: UIViewControllerRepresentableContext<ActivityViewController>) -> UIActivityViewController {
        let controller = UIActivityViewController(activityItems: itemsToShare, applicationActivities: servicesToShareItem)
        return controller
    }
    func updateUIViewController(_ uiViewController: UIActivityViewController,
                                context: UIViewControllerRepresentableContext<ActivityViewController>) {}
}
