//
//  CellViewDiet.swift
//  Workouts
//
//  Created by MR9U2 on 10/25/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import UIKit

class CellViewDiet: UITableViewCell {


    @IBOutlet weak var lblMain: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var imagecell: UIImageView!
    class var reuseIdentifier: String {
        return "CellViewDiet"
    }
    class var nibName: String {
        return "CellViewDiet"
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    func configure(image:UIImage?,lblTitle:String){
        self.imagecell.image = image
        self.lblTitle.text = lblTitle
       
    }
    func configureMain(lblmain:[String]){
        var data = ""
        for string in lblmain {
            data = data + "." + string + "\n"
        }
        self.lblMain.text = data
    }
}
