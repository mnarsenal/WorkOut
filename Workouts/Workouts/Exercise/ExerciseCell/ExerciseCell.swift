//
//  ExerciseCell.swift
//  Workouts
//
//  Created by MR9U2 on 10/12/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import UIKit

class ExerciseCell: UICollectionViewCell {
    class var reuseIdentifier: String {
        return "ExerciseCell"
    }
    class var nibName: String {
        return "ExerciseCell"
    }
    @IBOutlet weak var lblCell: UILabel!
    @IBOutlet weak var viewCell: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        viewCell.layer.borderWidth = 1
        viewCell.layer.cornerRadius = viewCell.frame.size.width / 2
        viewCell.layer.borderColor = UIColor(red: 0.64, green: 0.83, blue: 1.00, alpha: 1.00).cgColor
        // Initialization code
    }
    

}
