//
//  FruitModel.swift
//  Fructus
//
//  Created by Zachary Jensen on 11/18/20.
//

import SwiftUI

// MARK: - Fruits data model

struct Fruit: Identifiable{
    
    var id = UUID()
    var title : String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
    
}
