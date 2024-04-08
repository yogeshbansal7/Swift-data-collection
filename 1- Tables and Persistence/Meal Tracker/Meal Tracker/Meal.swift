//
//  Meal.swift
//  Meal Tracker
//
//  Created by Student on 04/04/24.
//

import Foundation

struct Meal{
    var name: String
    var food: [Food]
    init(name: String, food: [Food]) {
        self.name = name
        self.food = food
    }
    
}
