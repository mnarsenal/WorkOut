//
//  MoreAppCell.swift
//  Workouts
//
//  Created by MR9U2 on 10/15/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import UIKit

class MoreAppCell: UICollectionViewCell {
    class var reuseIdentifier: String {
        return "MoreAppCell"
    }
    class var nibName: String {
        return "MoreAppCell"
    }
    @IBOutlet weak var img: NSLayoutConstraint!
    @IBOutlet weak var lbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
