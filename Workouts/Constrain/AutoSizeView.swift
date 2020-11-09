//
//  AutoSizeView.swift
//  Workouts
//
//  Created by MR9U2 on 9/23/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import Foundation
import UIKit
class AutoSizeView: UIView {
    override func didMoveToSuperview(){
        self.layer.cornerRadius = 20
        self.layer.borderWidth = 0.5
        self.layer.borderColor = UIColor(red: 0.64, green: 0.83, blue: 1.00, alpha: 1.00).cgColor
    }
}
