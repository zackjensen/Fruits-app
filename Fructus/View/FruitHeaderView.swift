//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Zachary Jensen on 11/20/20.
//

import SwiftUI

struct FruitHeaderView: View {
    
    var fruit: Fruit
    
    
    @State private var isAnimatingImage = false
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
            
            
        }// end of z stack
        .frame(height: 440)
        
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)){
                isAnimatingImage = true
            }
        })
        
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData.first!)
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
