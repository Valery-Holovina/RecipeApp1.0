//
//  RecipesViewModel.swift
//  RecipeApp
//
//  Created by Valery on 16.07.2025.
//

import Foundation
import SwiftUI

@Observable class RecipesViewModel{
    private(set) var recipes: [Recipe] = []
    
    init() {
        recipes = Recipe.all
    }
    
    func addRecipe(recipe: Recipe){
        recipes.append(recipe)
    }
}

