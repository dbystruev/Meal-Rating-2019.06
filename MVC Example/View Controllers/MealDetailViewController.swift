//
//  MealDetailViewController.swift
//  MVC Example
//
//  Created by Denis Bystruev on 04/06/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

class MealDetailViewController: UIViewController {
    @IBOutlet weak var mealStackView: UIStackView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var mealRatingLabel: UILabel!
    @IBOutlet weak var mealNotesLabel: UILabel!
    @IBOutlet weak var mealDateLabel: UILabel!
    
    var meal: Meal!
}

// MARK: - UI
extension MealDetailViewController {
    func updateUI(size: CGSize) {
        let isVertical = size.width < size.height
        mealStackView.axis = isVertical ? .vertical : .horizontal
        
        imageView.image = meal.photo
        title = meal.name
        mealRatingLabel.text = meal.ratingBar
        mealNotesLabel.text = meal.notes
        mealDateLabel.text = meal.date
    }
}

// MARK: - UIViewController
extension MealDetailViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(size: view.bounds.size)
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        updateUI(size: size)
    }
}
