//
//  ViewController.swift
//  Gym Tracker
//
//  Created by Mehul Tailang on 7/16/21.
//  Copyright © 2021 Mehul Tailang. All rights reserved.
//

import UIKit

class WorkoutsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var workoutInfo : [String] = []
    
    @IBOutlet var workoutsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        workoutsTableView.dataSource = self
        workoutsTableView.delegate = self
        self.registerTableViewCells()
        
    }
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "Add Workout", message: "Please input the workout title and description", preferredStyle: .alert)

        let action = UIAlertAction(title: "Add Workout", style: .default) { (alertAction) in
            let titleInputTextField = alert.textFields![0] as UITextField

            self.workoutInfo.append(titleInputTextField.text!)
            print(self.workoutInfo)
            self.workoutsTableView.reloadData()
        }

        alert.addTextField { (sourceInputTextField) in
            sourceInputTextField.placeholder = "Workout Title"
        }
        alert.addAction(action)
        present(alert, animated:true, completion: nil)
    }
    
    
    // Set up Table View
    private func registerTableViewCells() {
        let textFieldCell = UINib(nibName: "WorkoutTableViewCell",
                                  bundle: nil)
        self.workoutsTableView.register(textFieldCell,
                                        forCellReuseIdentifier: "WorkoutTableViewCell")
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return workoutInfo.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = workoutsTableView.dequeueReusableCell(withIdentifier: "WorkoutTableViewCell", for: indexPath) as! WorkoutTableViewCell
        cell.titleLabel.text = workoutInfo[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showdetail", sender: self)
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? WorkoutInfoViewController {
            destination.product = workoutInfo[(workoutsTableView.indexPathForSelectedRow?.row)!]
            workoutsTableView.deselectRow(at: workoutsTableView.indexPathForSelectedRow!, animated: true)
        }
    }
    
    

}

