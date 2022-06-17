//
//  FirstPage.swift
//  maVieDeQuartier
//
//  Created by Mohamed Djebali on 11/05/2022.
//

import SwiftUI

struct FirstPage: View {
    @State var choosenOption = ["J'habite le quartier", "Je cherche un quartier"]
    @State private var yourName: String = ""
    @State var table: [UserProfil] = [UserProfil(userName: "", profilPicture: "")]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        
        NavigationView {
            
            
            VStack(spacing: 40) {
                
                
                TextField("Ton nom", text: $yourName)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .font(.headline)
                    .foregroundColor(.black)
                    .shadow(color: .gray, radius: 10.0, x: 10.0, y: 10.0)
                
                
                
                ExtractedViewProfil()
                Spacer()
                
                HStack{
                    Button {
                        print("")
                    } label: {
                        NavigationLink(destination: CommentView()) {
                            HStack(spacing:20){
                                Image(systemName: "house")
                                    .font(.title)
                                    .foregroundColor(.green)
                                Text("J'habite le quartier")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)
                            }}
                        .buttonStyle(.bordered)
                        .frame(width: 200, height: 100, alignment: .center)
                        .cornerRadius(10)
                        .foregroundColor(.gray)
                    }
                    
                    Button {
                        print("")
                    } label: {
                        
                        NavigationLink(destination: FiltersView()) {
                            
                            HStack(spacing:20){
                                
                                Image(systemName: "mappin.and.ellipse")
                                    .font(.title)
                                    .foregroundColor(.red)
                                
                                Text("Je cherche un quartier")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)
                                
                            }}
                        .buttonStyle(.bordered)
                        .frame(width: 200, height: 100, alignment: .center)
                        .cornerRadius(20)
                        .foregroundColor(.gray)
                        .tint(.gray)
                    }
                    
                }
                Spacer()
            } .navigationTitle("Salut \(yourName)")
        }
        
        
    }
    
}



struct FirstPage_Previews: PreviewProvider {
    static var previews: some View {
        
        FirstPage()
        
    }
}


