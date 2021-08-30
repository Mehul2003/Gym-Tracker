//
//  ExerciseListViewController.swift
//  Gym Tracker
//
//  Created by Mehul Tailang on 8/25/21.
//  Copyright © 2021 Mehul Tailang. All rights reserved.
//

import UIKit

class ExerciseListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var exerciseListTableView: UITableView!
    
    var chestExercises = ["Cable chest fly","Cable chest press","Cable crossover","Close grip bench press","Decline barbell bench press","Decline dumbbell bench press","Dip machine","Dumbbell chest fly","Dumbbell floor press","Dumbbell pullover","Flat barbell bench press","Flat dumbbell bench press","Flat machine bench press","Guillotine (neck) press","Incline barbell bench press","Incline dumbbell bench press","Incline machine bench press","Pec dec","Weighted dips"]
    var backExercises = ["Barbell chest supported rows","Barbell shrugs","Bent over rows","Chin-ups","Dumbbell chest supported rows","Dumbbell Romanian deadlifts","Dumbbell shrugs","Hyperextensions","Lat pulldowns – wide & narrow grip","Pendley rows","Pull-ups","Romanian deadlift","Seated rows – wide & narrow grip","Single-arm rows","Standard deadlift","Standing push down","Sumo deadlift","T-bar rows","Trap bar deadlift"]
    var shoulderExercises = ["Arnold press","Cable face pulls","Cable front raise","Cable lat raise","Cable reverse fly","Cuban press","Dumbbell front raises","Dumbbell lateral raises","Dumbbell reverse flys","Machine lat raise","Machine shoulder press","Push press","Seated barbell shoulder press","Seated dumbbell shoulder press","Single-arm dumbbell press","Standing barbell shoulder press","Standing dumbbell shoulder press"]
    var bicepExercises = ["Barbell bicep curl","Barbell preacher curl","Bicep machine curl","Cable bicep curl","Concentration curl","Dumbbell bicep curl","E-Z bar bicep curl","Hammer curls","Incline bench dumbbell curl"]
    var tricepExercises = ["Cable tricep pushdown","Close-grip bench press","Dips","Machine tricep kickbacks","Seated overhead extension","Skull crushers","Standing overhead extension","Tricep kickbacks"]
    var trapExercises = ["Barbell Shrug","Dumbbell Shrug"]
    var quadExercises = ["Back Squat","Barbell Lunge","Bulgarian Split Squat","Dumbbell Lunge","Front Squat","Goblet Squat","Leg Extension","Leg Press","Split Squat","Squat Jump"]
    var hamstringExercises = ["Barbell Romanian Deadlift","Dumbbell Romanian Deadlift","Hamstring Curl"]
    var gluteExercises = ["Barbell Hip Thrust", "Glute Bridge"]
    var calfExercises = ["Barbell Calf Raise","Calf Raise Machine","Dumbbell Calf Raise"]
    var abExercises = ["Ab crunches","Barbell ab rollouts","Cable crunches","Farmers walk","Knee raises","Leg raises","Plank hold","Russian twists","Side bends,Side plank hold","Sit up machine"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        exerciseListTableView.dataSource = self
        exerciseListTableView.delegate = self
        self.registerTableViewCells()
    }
    
    private func registerTableViewCells() {
        let textFieldCell = UINib(nibName: "ExerciseListTableView",
                                  bundle: nil)
        self.exerciseListTableView.register(textFieldCell,
                                        forCellReuseIdentifier: "ExerciseListTableView")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chestExercises.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = exerciseListTableView.dequeueReusableCell(withIdentifier: "ExerciseTableViewCell", for: indexPath) as! ExerciseTableViewCell
        cell.exerciseTitle.text = chestExercises[indexPath.row]
        
        return cell
    }


}
