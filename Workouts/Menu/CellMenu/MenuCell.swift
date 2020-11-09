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
    @IBOutlet weak var imageBackground: UIImageView!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var viewMenuCell: UIView!
    @IBOutlet weak var lbMenuCell:UILabel! 
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        imageBackground.layer.cornerRadius = 19
    }
    func configue(image:UIImage?,background:UIImage?,text:String){
        self.image.image = image
        self.imageBackground.image = background
        self.lbMenuCell.text = text
    }

}
