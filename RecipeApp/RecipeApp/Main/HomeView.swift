//
//  HomeView.swift
//  RecipeApp
//
//  Created by Valery on 13.07.2025.
//

import SwiftUI

struct HomeView: View {
    
    @Environment(RecipesViewModel.self) var recipesVM
    
    var body: some View {
        NavigationStack {
            ScrollView{
                RecipeList(recipes: recipesVM.recipes)
                  
            }
            .navigationTitle("My Recipes")

          
        }
     
       
    }
}

#Preview {
    HomeView()
        .environment(RecipesViewModel())
}
