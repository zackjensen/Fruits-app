//
//  FructusApp.swift
//  Fructus
//
//  Created by Zachary Jensen on 10/6/20.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            
            if isOnboarding{
                OnboardingView()
            }else{
                ContentView()
            }
            
        }
    }
}
