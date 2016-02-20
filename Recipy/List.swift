//
//  List.swift
//  Recipy
//
//  Created by Ben Swift on 2/19/16.
//  Copyright © 2016 Ben Swift. All rights reserved.
//

import Foundation

struct List {
    var foodName = String()
    var foodType = String()
    var foodImage = String()
    var rating = Double()
    var indgredientsArray = [String]()
    var recipeArray = [String]()
    
    init(foodName: String, foodType: String, rating: Double, indgredientsArray: [String], recipeArray: [String], foodImage: String) {
        
        self.foodName = foodName
        self.foodType = foodType
        self.rating = rating
        self.indgredientsArray = indgredientsArray
        self.recipeArray = recipeArray
        self.foodImage = foodImage
        
    }
    
}
