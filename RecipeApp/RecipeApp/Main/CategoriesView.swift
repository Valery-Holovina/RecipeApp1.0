//
//  CategoriesView.swift
//  RecipeApp
//
//  Created by Valery on 13.07.2025.
//

import SwiftUI

struct CategoriesView: View {
    @Environment(RecipesViewModel.self) var recipesVM
    var body: some View {
        NavigationStack {
            List{
                ForEach(Category.allCases){category in
                    NavigationLink {
                        ScrollView {
                            RecipeList(recipes: recipesVM.recipes.filter{$0.category == category.rawValue})
                        }
                        .navigationTitle(category.rawValue + "s")
                    } label: {
                        Text(category.rawValue + "s")
                    }

               
                }
                
            }
            
            
                .navigationTitle("Categories")
        }
    }
}

#Preview {
    CategoriesView()
        .environment(RecipesViewModel())
}
