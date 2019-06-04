//
//  DataController.swift
//  MVC Example
//
//  Created by Denis Bystruev on 04/06/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

class DataController {
    static let shared = DataController()
    
    private init() {}
    
    func saveMeals(meals: [Meal]) {
        // TODO: - Implement save meals
    }
    
    func loadMeals() -> [Meal] {
        let meals = [
            Meal(name: "Суп", photo: "Soup", notes: "Вкусный", rating: 10),
            Meal(name: "Второе", photo: "MainDish", notes: "Неплохо", rating: 7),
            Meal(name: "Компот", photo: "Drink", notes: "Так себе", rating: 4),
        ]
        return meals
    }
}
