//
//  RecipeCard.swift
//  RecipeApp
//
//  Created by Valery on 13.07.2025.
//

import SwiftUI

struct RecipeCard: View {
    
    var recipe: Recipe
    
    var body: some View {
       
            VStack {
             
                if ((recipe.image?.isEmpty) != nil){
                    Image(recipe.image ?? "AddPhoto")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                }else if (recipe.loadedImage != nil){
                    Image(uiImage: recipe.loadedImage ?? .addPhoto)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                        
                }
               
                    Text(recipe.name)
                        .font(.caption)
                        .foregroundStyle(Color("myGray"))


                Spacer()

                   

                }
            .frame(width: 152, height: 210,alignment: .top)
            .background(.thinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .shadow(color: Color.secondary, radius: 3)
     
      

  
    }
}

#Preview {
    RecipeCard(recipe: Recipe.all[0])
}
