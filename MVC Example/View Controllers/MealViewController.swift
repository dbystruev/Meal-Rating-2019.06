//
//  MealViewController.swift
//  MVC Example
//
//  Created by Denis Bystruev on 04/06/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

class MealViewController: UIViewController {
    // Tied with view
    @IBOutlet weak var mealList: UITableView!
    
    let cellController = CellController()
    
    // Tied with model
    var meals = [Meal]()
}

// MARK: - Navigation
extension MealViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "MealDetailSegue" else { return }
        guard let row = mealList.indexPathForSelectedRow?.row else { return }
        let destination = segue.destination as! MealDetailViewController
        let meal = meals[row]
        destination.meal = meal
    }
}

// MARK: - UIViewController
extension MealViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        meals = DataController.shared.loadMeals()
        mealList.dataSource = self
    }
}

// MARK: - UITableViewDataSource
extension MealViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mealList.dequeueReusableCell(withIdentifier: "MealCell")!
        let meal = meals[indexPath.row]
        cellController.configure(cell, with: meal)
        return cell
    }
}
