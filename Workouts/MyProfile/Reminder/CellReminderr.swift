//
//  CellReminderr.swift
//  Workouts
//
//  Created by MR9U2 on 11/6/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import UIKit

class CellReminderr: UITableViewCell {
    class var reuseIdentifier: String {
        return "CellReminderr"
    }
    class var nibName: String {
        return "CellReminderr"
    }
    @IBOutlet weak var lblTime: UILabel!
    @IBOutlet weak var lblMinutes: UILabel!
    @IBOutlet weak var lblAMorPM: UILabel!
    @IBOutlet weak var lblDay: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
