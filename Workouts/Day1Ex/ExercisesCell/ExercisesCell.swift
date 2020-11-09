//
//  ExercisesCell.swift
//  Workouts
//
//  Created by MR9U2 on 10/14/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import UIKit

class ExercisesCell: UICollectionViewCell {

    class var reuseIdentifier: String {
        return "ExercisesCell"
    }
    class var nibName: String {
        return "ExercisesCell"
    }
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var exerciseName: UILabel!
    @IBOutlet weak var x30: UILabel!
    @IBOutlet weak var btn: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        btn.layer.cornerRadius = btn.frame.size.width / 2
        view.layer.cornerRadius = 15
        view.layer.borderWidth = 0.5
        view.layer.borderColor = UIColor(red: 0.64, green: 0.83, blue: 1.00, alpha: 1.00).cgColor
        // Initialization code
    }

}
