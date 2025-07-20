//
//  FavoritesView.swift
//  RecipeApp
//
//  Created by Valery on 13.07.2025.
//

import SwiftUI

struct FavoritesView: View {
    
    @Environment(RecipesViewModel.self) var recipesVM
    
    var body: some View {
        NavigationStack {
            
          
                
                    
                   Text("You have nothing in your favorites")
             
       
            
            
            
            .navigationTitle("Favorites")
        }
        
    }
}


#Preview {
    FavoritesView()
        .environment(RecipesViewModel())
}
