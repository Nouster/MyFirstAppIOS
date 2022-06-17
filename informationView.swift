//
//  informationView.swift
//  maVieDeQuartier
//
//  Created by Mohamed Djebali on 13/05/2022.
//

import SwiftUI

struct Information: View {
    @State  var showingSheetMuseum = false
    @State  var showingSheetMuseum2 = false
    @State  var showingSheetEvent1 = false
    @State  var showingSheetEvent2 = false
    
    var body: some View {
        
        VStack(){
            
            NavigationView {
                
                ScrollView(.horizontal){
               
                HStack {
                    
                    Button {
                        
                        showingSheetMuseum.toggle()
                        
                        
                    } label: {
                        
                        Image("chaos")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 250, height: 150, alignment: .trailing)
                            .cornerRadius(20)
                            .sheet(isPresented: $showingSheetMuseum) {
                                MuseumSheet1()
                                
                            }
                        
                        Button {
                            
                            showingSheetMuseum2.toggle()
                            
                        } label: {
                            Image("institut")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 250, height: 150, alignment: .trailing)
                                .cornerRadius(20)
                                .sheet(isPresented: $showingSheetMuseum2) {
                                    MuseumSheet2()
                                }
                            
                        }
                        
                        Button {
                            
                            showingSheetMuseum.toggle()
                            
                            
                        } label: {
                            
                            Image("chaos")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 250, height: 150, alignment: .trailing)
                                .cornerRadius(20)
                                .sheet(isPresented: $showingSheetMuseum) {
                                    MuseumSheet1()
                                    
                                }
                        
                    }
                    }
                    .navigationTitle("Museum")
                    
                }
                }
            }
            NavigationView {
                ScrollView(.horizontal){
                
                HStack {
                    Button {
                        
                    } label: {
                        Image("restaurant1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 250, height: 150, alignment: .trailing)
                            .cornerRadius(20)
                    }
                    
                    
                    Button {
                        
                    } label: {
                        Image("restaurant2")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 250, height: 150, alignment: .trailing)
                            .cornerRadius(20)
                    }
                    
                    Button {
                        
                    } label: {
                        Image("restaurant3")
                            
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(20)
                            .frame(width: 250, height: 150, alignment: .trailing)
                            .padding()
                            
                    }
                    
                    
                    
                    
                
                    .navigationTitle("Restaurants")
                }
                }
                
            }
            NavigationView {
                ScrollView(.horizontal){
                HStack{
                    
                    Button {
                        
                        showingSheetEvent1.toggle()
                        
                    } label: {
                        Image("event3")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 250, height: 150, alignment: .trailing)
                            .cornerRadius(20)
                            .sheet(isPresented: $showingSheetEvent1) {
                                EventView1()
                    }
                    
                    
                    Button {
                        
                        showingSheetEvent2.toggle()
                        
                    } label: {
                        Image("event2")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 250, height: 150, alignment: .trailing)
                            .cornerRadius(20)
                            .sheet(isPresented: $showingSheetEvent2)
                        { EventsView2()
                    }
                        
                    }
                    
                }
                .navigationTitle("Events")
                }
            }
            
        }
        
    }
}
}



struct Information_Previews: PreviewProvider {
    static var previews: some View {
        Information()
    }
}
