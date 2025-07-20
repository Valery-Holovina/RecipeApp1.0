//
//  TapBar.swift
//  RecipeApp
//
//  Created by Valery on 13.07.2025.
//

import SwiftUI

struct TapBarView: View {
    @Environment(RecipesViewModel.self) var recipesVM
    var body: some View {
        TabView{
           
            Tab("Home", systemImage: "house.circle") {
                HomeView()
              }

            Tab("Categories",systemImage: "list.star"){
                CategoriesView()
            }

            Tab("New Recipe", systemImage: "plus.app.fill"){
                NewRecipeView()
            }
            Tab("Favorites", systemImage: "frying.pan"){
                FavoritesView()
            }
            Tab("Settings", systemImage: "gear.circle"){
                SettingsView()
            }

        }
    }
}

#Preview {
    TapBarView()
        .environment(RecipesViewModel())
}
