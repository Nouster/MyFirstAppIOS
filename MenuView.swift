//
//  MenuView.swift
//  ComposantsSwiftUI
//
//  Created by apprenant44 on 22/03/2022.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        // Menu "simple"
        Menu("Options") {
            Button("Commander maintenant") { }
            
            Button("Ajuster commande") { }
            
            // Menu "complexe"
            Menu {
                Button("Renommer") { }
                
                Button("Délai") { }
            } label: {
                Label("Avancées", systemImage: "swift")
            }
            
            Button("Annuler") { }
        }
    }
}


struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
