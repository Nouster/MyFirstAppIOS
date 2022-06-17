//
//  GridView.swift
//  maVieDeQuartier
//
//  Created by Mohamed Djebali on 17/05/2022.
//

import SwiftUI
struct GridView: View {
    
    
    var body: some View {
        NavigationView {
            ExtractedViewProfil()
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}

struct ExtractedViewProfil: View {
    
    @State private var scale = 1.0
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    @State var selectedImage: String = ""
    
  
    var body: some View {
        VStack{
        Text("Choisis ton avatar : ")
                
            .underline()
            .fontWeight(.semibold)
            .font(.title)
            .padding()
    
            .padding()
        ScrollView(.horizontal){
    
                
            HStack{
         
                
                ForEach (profilPicture, id: \.self) { profil in
                    
                    Button {
                        
                            selectedImage = profil
                        scale += 0.2
                        
                    } label: {
                        
                         Image(profil)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 160, height: 160)
                            .clipped()
                            .shadow(radius:20)
                            .background(selectedImage == profil ? .black : .white)
                            .cornerRadius(20)
                            .scaleEffect(selectedImage == profil ? scale : 1)
                            .animation(.easeIn, value: scale)
                        
                        
                    }

                   
                            
                    
                    
                }
            }
            
        }
    }
}

}
