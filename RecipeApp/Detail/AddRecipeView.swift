//
//  AddRecipeView.swift
//  RecipeApp
//
//  Created by Valery on 16.07.2025.
//

import SwiftUI
import PhotosUI

struct AddRecipeView: View {
    
    @Environment(RecipesViewModel.self) var recipesVM
    
    @State private var name: String = ""
    @State private var category: Category = Category.main
    @State private var description: String = ""
    @State private var ingredients: String = ""
    @State private var directions: String = ""
    
    
    @State private var navigateToNewRecipe = false
    
    @Environment(\.dismiss) var dismiss
    
    // add photo
    @State private var addImage: UIImage?
    @State private var photosPickerItem: PhotosPickerItem?
    
    
    var body: some View {
        NavigationStack{

                Form{
                    //add photo
                    PhotosPicker(selection: $photosPickerItem, matching: .images){
                        if let image = addImage ?? UIImage(named: "AddPhoto") {
                            Image(uiImage: image)
                                .resizable()
                                .scaledToFit()
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                        } else {
                            Color.gray
                        }

                    }
                    Section("Name") {
                        TextField("Recipe name", text: $name)
                    }
                    Section("Category") {
                        Picker("Pick category", selection: $category) {
                            ForEach(Category.allCases) { categoryItem in
                                Text(categoryItem.rawValue)
                                    .tag(categoryItem)
                            }
                        }
                        .pickerStyle(.navigationLink)
                    }
                    Section("Description") {
                        TextEditor(text: $description)
                    }
                    Section("Ingredients") {
                        TextEditor(text: $ingredients)
                    }
                    Section("Directions") {
                        TextEditor(text: $directions)
                    }
                }
                .toolbar(content: {
                    ToolbarItem(placement: .topBarLeading) {
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "xmark.circle")
                                .foregroundStyle(.red)
                            
                            
                        }
                        
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        NavigationLink(isActive: $navigateToNewRecipe) {
                            RecipeView(recipe: recipesVM.recipes.sorted{
                                $0.datePublished>$1.datePublished}[0])
                            .navigationBarBackButtonHidden(true)
                        } label: {
                            Button {
                                saveRecipe()
                                navigateToNewRecipe.toggle()
                            } label: {
                                Image(systemName: "checkmark.circle")
                                    .foregroundStyle(name.isEmpty ? .gray : .green)
                                
                                
                            }
                           
                        }
                        .disabled(name.isEmpty)
                      
                        
                    }
                })
                .navigationTitle("New Recipe")
                .navigationBarTitleDisplayMode(.inline)

        
        }
        .onChange(of: photosPickerItem) { _, _ in
            Task{
                if let photosPickerItem,
                   let data = try? await photosPickerItem.loadTransferable(type: Data.self){
                    if let image = UIImage(data: data){
                        addImage = image
                    }
                }
            }
        }
    }
    
}

#Preview {
    AddRecipeView()
        .environment(RecipesViewModel())
    
}


extension AddRecipeView{
    
    private func saveRecipe(){
        let now = Date()
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "yyyy-mm-dd"
        
        let datePublished = dateFormater.string(from: now)
        print(datePublished)
        
        
        let recipe = Recipe(name: name, image: nil, loadedImage: addImage, description: description, ingredients: ingredients, directions: directions, category: category.rawValue, datePublished: datePublished)
        recipesVM.addRecipe(recipe: recipe)
       
    }
}
