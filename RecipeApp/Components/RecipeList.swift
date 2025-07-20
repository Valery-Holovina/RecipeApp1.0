//
//  RecipeList.swift
//  RecipeApp
//
//  Created by Valery on 13.07.2025.
//

import SwiftUI

struct RecipeList: View {
    var recipes :[Recipe]
    var body: some View {
        VStack{
            HStack {
                Text("\(recipes.count) \(recipes.count>1 ? "recepies" : "recipe")")
                    .font(.headline)
                    .fontWeight(.medium)
                    .opacity(0.7)
                
                Spacer()
            }
            .padding()
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160),spacing: 15)],spacing: 15) {
                ForEach(recipes){recipe in
                    NavigationLink(destination: RecipeView(recipe: recipe)) {
                        RecipeCard(recipe: recipe)
                    }
                
                }
            }
            
        }
        .padding(.horizontal)
    }
}

#Preview {
    ScrollView{
        RecipeList(recipes: Recipe.all)
    }
    
}
