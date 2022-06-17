//
//  commentView.swift
//  maVieDeQuartier
//
//  Created by Mohamed Djebali on 12/05/2022.
//

import SwiftUI

struct CommentView: View {
    @State var commentUser: String = ""
    @State var rating = 4
    @State private var yourName: String = ""
    
    var body: some View {
        ZStack {
            VStack(){
                Text("Commentaires")
                    .font(.largeTitle)
                
            ScrollView(.vertical) {
                
                VStack(spacing: 20) {
                    
                    
                    
                    ExtractedView5(icon: "avatar11", name: "Francisco", coms: "Quartier calme mais avec tous les services utiles à proximité.")
                    
                    
                    ExtractedView5(icon: "avatar12", name:"Lise" , coms: "J’aime mon quartier car avoir tous les avantages de la ville, mais être au calme est un vrai luxe👍.")
                    
                    ExtractedView5(icon: "avatar13", name: "Maxime", coms: "Les meilleurs bars et restaurants et tout ça à 5 minutes, c'est vraiment pratique.")
                    
                    ExtractedView5(icon: "avatar11", name: "Carole", coms: "je me suis fait voler mon vélo deux fois de suite 🥹...")
                    
                    ExtractedView5(icon: "avatar12", name: "Louise", coms: "Pas assez de borne pour recycler le verre mais quartier agréable")
                    
                    ExtractedView5(icon: "avatar14", name: "Elisa", coms: "Super quartier, animé tous les soirs, on ne s’ennuie jamais 🎉😁.")
                    
                    
                    ExtractedView5(icon: "avatar11", name: "\(yourName)", coms: commentUser)
                    
                    
                    
                }
                    
                }
            }
            
            Spacer()
            VStack {
                
                
                Spacer()
                ZStack {
                    
                    Rectangle()
                        .cornerRadius(10)
                        .frame(width: 375, height: 50)
                        .opacity(0.4)
                    
                    
                    TextField("Laisse un commentaire", text: $commentUser)
                        .statusBar(hidden: true)
                        .opacity(0.9)
                        .frame(width: 360, height: 50)
                }
            }
        }
    }
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        CommentView()
    }
}


struct ExtractedView5: View {
    let icon: String
    let name: String
    let coms: String
    @State var rating = 4
    
    var body: some View {
        VStack {
            
            HStack() {
                
                Image(icon)
                
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                Text(name)
                    .font(.title2)
                
                RatingView(rating: $rating)
                
                Spacer()
                
                
                
                
                
                Spacer()
                
                
                
                
            }
            
            ZStack(alignment: .leading) {
                Rectangle()
                    .cornerRadius(20)
                
                    .background(LinearGradient(gradient: Gradient(colors: [.white, .gray]), startPoint: .top, endPoint: .bottom))
                
                    .cornerRadius(20)
                    .frame(width: 360, height: 70)
                    .opacity(0.2)
                
                
                Text(coms)
                    .frame(width: 350, height: 70)
                
            }
        }
    }
}




