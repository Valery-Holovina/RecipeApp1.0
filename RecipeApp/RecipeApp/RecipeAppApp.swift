//
//  RecipeAppApp.swift
//  RecipeApp
//
//  Created by Valery on 13.07.2025.
//

import SwiftUI

@main
struct RecipeAppApp: App {
    @State var recipesViewModel = RecipesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(recipesViewModel)
        }
    }
}
