//
//  MenuCell.swift
//  Workouts
//
//  Created by MR9U2 on 9/22/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import UIKit

class MenuCell: UICollectionViewCell {
    class var reuseIdentifier: String {
        return "MenuCell"
    }
    class var nibName: String {
        return "MenuCell"
    }
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var viewMenuCell: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        viewMenuCell.layer.cornerRadius = 19
    }
    func configue(image:UIImage?,background:UIColor){
        self.image.image = image
        self.viewMenuCell.backgroundColor = background
    }

}
