//
//  CellReminder.swift
//  Workouts
//
//  Created by MR9U2 on 10/27/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import UIKit

class CellReminder: UICollectionViewCell {
    class var reuseIdentifier: String {
        return "CellReminder"
    }
    class var nibName: String {
        return "CellReminder"
    }
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var lblDay: UILabel!
    @IBOutlet weak var viewCell: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        viewCell.layer.borderWidth = 0.5
        viewCell.layer.borderColor = UIColor(red: 0.16, green: 0.53, blue: 1.00, alpha: 1.00).cgColor
        viewCell.layer.cornerRadius = 10
        // Initialization code
    }

}
