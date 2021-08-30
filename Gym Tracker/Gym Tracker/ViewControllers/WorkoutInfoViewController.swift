//
//  WorkoutInfoViewController.swift
//  Gym Tracker
//
//  Created by Mehul Tailang on 8/24/21.
//  Copyright © 2021 Mehul Tailang. All rights reserved.
//

import UIKit

class WorkoutInfoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var product : String?
    var exercises : [[String]] = []
    
    @IBOutlet weak var exerciseTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        exerciseTableView.dataSource = self
        exerciseTableView.delegate = self
        self.registerTableViewCells()
        
    }
    @IBAction func addExercise(_ sender: UIBarButtonItem) {
//        let alert = UIAlertController(title: "Add Exercise", message: "Please input the exercise title and reps", preferredStyle: .alert)
//
//        let action = UIAlertAction(title: "Add Exercise", style: .default) { (alertAction) in
//            let titleInputTextField = alert.textFields![0] as UITextField
//            let setsInputTextField = alert.textFields![1] as UITextField
//
//            self.exercises.append([titleInputTextField.text!, setsInputTextField.text!])
//            print(self.exercises)
//            self.exerciseTableView.reloadData()
//        }
//
//        alert.addTextField { (sourceInputTextField) in
//            sourceInputTextField.placeholder = "Workout Title"
//        }
//        alert.addTextField { (sourceInputTextField) in
//            sourceInputTextField.placeholder = "Sets/Reps"
//        }
//        alert.addAction(action)
//        present(alert, animated:true, completion: nil)
        performSegue(withIdentifier: "addExercise", sender: self)
        
    }
    
    private func registerTableViewCells() {
        let textFieldCell = UINib(nibName: "ExerciseTableViewCell",
                                  bundle: nil)
        self.exerciseTableView.register(textFieldCell,
                                        forCellReuseIdentifier: "ExerciseTableViewCell")
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exercises.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = exerciseTableView.dequeueReusableCell(withIdentifier: "ExerciseTableViewCell", for: indexPath) as! ExerciseTableViewCell
        cell.exerciseTitle.text = exercises[indexPath.row][0]
        cell.setRepText.text = exercises[indexPath.row][1]
        
        return cell
    }
    
}
