//
//  Meal.swift
//  MVC Example
//
//  Created by Denis Bystruev on 04/06/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

class Meal {
    var name: String
    var photo: UIImage?
    var notes: String
    var rating: Int
    var timestamp: Date
    
    init(name: String, photo: String, notes: String, rating: Int) {
        self.name = name
        self.photo = UIImage(named: photo)
        self.notes = notes
        self.rating = rating
        self.timestamp = Date()
    }
}

// MARK: - Formatting
extension Meal {
    var date: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        dateFormatter.locale = Locale.current
        return dateFormatter.string(from: timestamp)
    }
    
    var ratingBar: String {
        return String(repeating: "⭐️", count: rating)
    }
}
