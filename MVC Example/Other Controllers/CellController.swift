//
//  CellController.swift
//  MVC Example
//
//  Created by Denis Bystruev on 04/06/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

class CellController {
    func configure(_ cell: UITableViewCell, with meal: Meal) {
        cell.textLabel?.text = meal.name
        cell.detailTextLabel?.text = "\(meal.ratingBar)"
        cell.imageView?.image = meal.photo
    }
}
