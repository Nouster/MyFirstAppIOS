//
//  FiltersView.swift
//  maVieDeQuartier
//
//  Created by Mohamed Djebali on 12/05/2022.
//

import SwiftUI

struct FiltersView: View {
    
    @State  var cleanness:Double = 0
    @State  var incivilities:Double = 0
    @State  var pollution:Double = 0
    @State  var noise:Double = 0
    @State  var averageAge:Double = 0
    @State  var qualityOfLife:Double = 0
    
    var countOfFilter:Double {
        incivilities + cleanness + pollution + averageAge + noise + qualityOfLife
    }
    
    func reset() {
        
        incivilities = 0
        cleanness = 0
        pollution = 0
        noise = 0
        averageAge = 0
        qualityOfLife = 0
    }
    
    
    
    var body: some View {
        
        NavigationView {
            
            VStack(spacing: 70){
                
                Text("Note l'importance de tes critères :")
                    .fontWeight(.bold)
                
                ScrollView{
                    
                    
                    
                    
                    
                    Text("Incivilités : \(incivilities, specifier: "%.0f") ")
                    
                    
                    
                    
                    
                    Slider(value: $incivilities, in: 0...10)
                        .accentColor(.yellow)
                        .padding()
                        .frame(width: 350, height: 50, alignment: .top)
                    
                    
                    
                    
                    Text("Pollution : \(pollution, specifier: "%.0f") ")
                    
                    Slider(value: $pollution, in: 0...10)
                        .padding()
                        .frame(width: 350, height: 50, alignment: .top)
                        .accentColor(.yellow)
                    Text("Nuisance Sonore : \(noise, specifier: "%.0f") ")
                    Slider(value: $noise, in: 0...10)
                        .accentColor(.yellow)
                        .padding()
                        .frame(width: 350, height: 50, alignment: .top)
                    Text("Âge Moyen : \(averageAge, specifier: "%.0f") ")
                    Slider(value: $averageAge, in: 0...10)
                        .accentColor(.yellow)
                        .padding()
                        .frame(width: 350, height: 50, alignment: .top)
                    
                    Text("Qualité De Vie : \(qualityOfLife, specifier: "%.0f") ")
                    Slider(value: $qualityOfLife, in: 0...10)
                        .accentColor(.yellow)
                        .padding()
                        .frame(width: 350, height: 50, alignment: .top)
                    
                    
                    
                    
                }
                
            }
            .navigationTitle("Filtres:")
            
            .toolbar{
                ToolbarItemGroup(placement: .navigationBarLeading){
                    Button {
                        reset()
                    } label: {
                        Text("Reset")
                        
                    }
                    .buttonStyle(.bordered)
                    .foregroundColor(.black)
                    
                }
                ToolbarItemGroup(placement: .navigationBarTrailing){
                    Button {
                        
                    } label: {
                        
                        NavigationLink("Save"){
                            if countOfFilter <= 15 {
                                LaurentBonnevayView()
                                
                            } else if countOfFilter <= 30{
                                CharpennesView()
                                
                            } else if countOfFilter >= 31 {
                                RepubliqueView()
                            }
                        }
                    }
                    
                    
                    .buttonStyle(.bordered)
                    .foregroundColor(.black)
                }
                
                
            }
            
        }
    }
}
struct FiltersView_Previews: PreviewProvider {
    static var previews: some View {
        FiltersView()
    }
}
