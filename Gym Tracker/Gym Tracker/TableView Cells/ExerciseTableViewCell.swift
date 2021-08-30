//
//  ExerciseTableViewCell.swift
//  Gym Tracker
//
//  Created by Mehul Tailang on 8/24/21.
//  Copyright © 2021 Mehul Tailang. All rights reserved.
//

import UIKit

class ExerciseTableViewCell: UITableViewCell {

    @IBOutlet weak var exerciseTitle: UILabel!
    @IBOutlet weak var setRepText: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
