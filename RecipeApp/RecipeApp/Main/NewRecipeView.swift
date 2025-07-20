//
//  NewRecipeView.swift
//  RecipeApp
//
//  Created by Valery on 13.07.2025.
//

import SwiftUI

struct NewRecipeView: View {
    @State private var showAddRecipe = false
    @State var animate: Bool = false
    var body: some View {
        NavigationStack {
            Spacer()
            VStack{
                    Image(systemName: "fork.knife.circle")
                        .font(.system(size: 120))
                        .padding()
                Button(action: {
                    showAddRecipe.toggle()
                }, label: {
                       
                    Text("Add Recipe")
                        .foregroundStyle(.black)
                        .bold()
                        .padding()
                        .padding(.horizontal, animate ? 3: 10)
                        .background(animate ? Color("AddRecipeDarkYellow"): Color.yellow )
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .shadow(color: animate ? Color("yellowShadow"): Color("AddRecipeShadowYellow").opacity(0.4), radius: 6, x: 0  , y: animate ? 10: 20 )
                        .scaleEffect(animate ? 1.0: 1.1)
                        .offset(y: animate ? -6: 0)
                    
                       
                   

                        
                        
                    
                })
                .onAppear(perform: AddAniamtion)
                .navigationTitle("New Recipe")
                .popover(isPresented: $showAddRecipe) {
                    AddRecipeView()
                        .presentationCompactAdaptation(.sheet)
                    
                    
                }
             
            }
            Spacer()
            Spacer()
        }
    }
    
    func AddAniamtion(){
        guard !animate else {return}
        DispatchQueue.main.asyncAfter(deadline: .now()+1.5){
            withAnimation(
                Animation
                    .easeInOut(duration: 2.0)
                    .repeatForever()
            
            ) {
                animate.toggle()
            }
        }
    }
}

#Preview {
    NewRecipeView()
}
