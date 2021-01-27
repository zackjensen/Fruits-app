//
//  OnboardingView.swift
//  Fructus
//
//  Created by Zachary Jensen on 10/6/20.
//

import SwiftUI

struct OnboardingView: View {
    
    var fruits : [Fruit] = fruitsData
    
    var body: some View {
        TabView{
            ForEach(0..<5){ item in
                FruitCardView(fruit: fruits[item])
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
