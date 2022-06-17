//
//  maVieDeQuartierApp.swift
//  maVieDeQuartier
//
//  Created by Mohamed Djebali on 11/05/2022.
//

import SwiftUI

@main

struct maVieDeQuartierApp: App {
    
    
    
    var body: some Scene {
        WindowGroup {
            
            TabView {
                
                FirstPage()
                    .tabItem {
                        HStack{
                            Image(systemName: "person.circle")
                            
                            
                            Text("Profil")
                        }
                        
                    }
                
                
                SecondPage()
                    .tabItem {
                        HStack{
                            
                            Image(systemName: "map")
                            
                            
                            Text("Map")
                        }
                    }
             
                CommentView()
                    .tabItem {
                        HStack{
                            Image(systemName: "message.fill")
                            
                            
                            Text("Commentaires")
                        }
                        
                    }
                Information()
                    .tabItem{
                        HStack{
                    Image(systemName: "newspaper.fill")
                                
                            Text("Event")
                }
                    
                
                
            }
            
        }.accentColor(.black)
    }
}
}
