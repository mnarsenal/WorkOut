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
  
    @IBOutlet weak var imageBackground: UIImageView!
    @IBOutlet weak var lable: UILabel!
    @IBOutlet weak var image: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.image.contentMode = .scaleAspectFill
    }
    func configue(text:String,image:UIImage?,background: UIImage?){
        self.image.image = image
        self.lable.text = text
        self.imageBackground.image = background
    }
    

}
