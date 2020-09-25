//
//  Cell.swift
//  Workouts
//
//  Created by MR9U2 on 9/21/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import UIKit

class Cell: UICollectionViewCell {
    class var reuseIdentifier: String {
        return "Cell"
    }
    class var nibName: String {
        return "Cell"
    }
  
    @IBOutlet weak var viewCell: UIView!
    @IBOutlet weak var lable: UILabel!
    @IBOutlet weak var image: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        configueviewCell()
    }
    func configue(text:String,image:UIImage?,background: UIColor){
        self.image.image = image
        self.lable.text = text
        self.viewCell.backgroundColor = background
    }
    func configueviewCell(){
        viewCell.layer.borderWidth = 0
        viewCell.layer.cornerRadius = 13
    }

}
