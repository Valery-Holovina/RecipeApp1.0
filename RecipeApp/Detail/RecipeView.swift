//
//  RecipeView.swift
//  RecipeApp
//
//  Created by Valery on 13.07.2025.
//

import SwiftUI

enum ThemeColor: String, CaseIterable {
    case pink
    case green
    case blue
    case yellow
    case white
    case orange
    case beige
    case purple

    var color: Color {
        switch self {
        case .pink:
            return Color("myPink")
        case .green:
            return Color("myGreen")
        case .blue:
            return Color("myBlue")
        case .yellow:
            return Color("myYellow")
        case .white:
            return Color.white
        case .orange:
            return Color("myOrange")
        case .beige:
            return Color("myBeige")
        case .purple:
            return Color("myPurple")
        }
    }
}

struct RecipeView: View {
    var recipe: Recipe

    // Computed property for background color
    var categoryColor: ThemeColor {
        switch recipe.category {
        case Category.salat.rawValue:
            return .green
        case Category.main.rawValue:
            return .yellow
        case Category.soup.rawValue:
            return .blue
        case Category.breakfast.rawValue:
            return .pink
        case Category.snack.rawValue:
            return .orange
        case Category.drink.rawValue:
            return .beige
        case Category.dessert.rawValue:
            return .purple
        default:
            return .white
        }
    }
    
 

    
    var body: some View {
        
        
        ScrollView {
            VStack {
                if !recipe.name.isEmpty {
                    Text(recipe.name)
                        .font(.title)
                        .bold()
                        .multilineTextAlignment(.center)
                        .padding(.top, 130)
                        .padding()
                        .foregroundStyle(.black)
                }

                VStack(spacing: 25) {
                    if ((recipe.image?.isEmpty) != nil){
                        Image(recipe.image ?? "AddPhoto")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 300, alignment: .top)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .shadow(color: .white, radius: 5)
                            .padding(.top, 20)
                    }else if (recipe.loadedImage != nil){
                        Image(uiImage: recipe.loadedImage ?? .addPhoto )
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 300, alignment: .top)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .shadow(color: .white, radius: 5)
                            .padding(.top, 20)
                    }else{
                        Image("AddPhoto" )
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 300, alignment: .top)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .shadow(color: .white, radius: 5)
                            .padding(.top, 20)
                    }

                    HStack {
                        if !recipe.category.isEmpty {
                            Text(recipe.category)
                        }

                            

                        Spacer()
                        if !recipe.datePublished.isEmpty {
                            Text(recipe.datePublished)
                        }
                    }
                    .foregroundStyle(.black)
                    .padding(.horizontal, 20)
                    .font(.headline)

                    if !recipe.description.isEmpty {
                        Text(recipe.description)
                            .padding()
                            .background(.thickMaterial)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            .frame(width: 400, alignment: .top)
                            .multilineTextAlignment(.center)
                    }
                     
                }

                VStack(alignment: .leading, spacing: 15) {
                    if !recipe.ingredients.isEmpty {
                        Text("Ingredients")
                            .font(.title2)
                            .bold()

                        Text(recipe.ingredients)
                    }
                }
                .padding()
                .background(.thickMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .padding(20)

                VStack(alignment: .leading, spacing: 15) {
                    if !recipe.directions.isEmpty {
                        Text("Directions")
                            .font(.title2)
                            .bold()

                        Text(recipe.directions)
                    }
                }
                .padding()
                .background(.thickMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .padding(.horizontal, 20)
                .padding(.bottom, 100)
            }
            .background(categoryColor.color)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    RecipeView(recipe: Recipe.all[6])
}
