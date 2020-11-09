//
//  ViewBorder.swift
//  Workouts
//
//  Created by MR9U2 on 10/13/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import Foundation
import UIKit
class ViewBorder:UIView{
    override func didMoveToSuperview(){
        self.layer.cornerRadius = self.frame.size.width / 2
    }
}
