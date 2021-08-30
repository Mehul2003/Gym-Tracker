//
//  ExerciseListTableViewCell.swift
//  Gym Tracker
//
//  Created by Mehul Tailang on 8/25/21.
//  Copyright © 2021 Mehul Tailang. All rights reserved.
//

import UIKit

class ExerciseListTableViewCell: UITableViewCell {

    @IBOutlet weak var exerciseLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
