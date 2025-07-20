//
//  ContentView.swift
//  RecipeApp
//
//  Created by Valery on 13.07.2025.
//

import SwiftUI

struct ContentView: View {
    @Environment(RecipesViewModel.self) var recipesVM
    var body: some View {
        TapBarView()
    }
}

#Preview {
    ContentView()
        .environment(RecipesViewModel())
}

