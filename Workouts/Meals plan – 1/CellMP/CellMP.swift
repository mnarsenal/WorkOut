//
//  CellMP.swift
//  Workouts
//
//  Created by MR9U2 on 10/8/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import UIKit

class CellMP: UICollectionViewCell {

    class var reuseIdentifier: String {
        return "CellMP"
    }
    class var nibName: String {
        return "CellMP"
    }
    @IBOutlet weak var lbCell: UILabel!
    @IBOutlet weak var viewCell: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
       
    }

}
