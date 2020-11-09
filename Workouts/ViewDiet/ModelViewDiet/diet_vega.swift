//
//  diet_vega.swift
//  Workouts
//
//  Created by MR9U2 on 11/5/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import Foundation
struct diet1{
    var breakfast1:[String]
    var second_breakfast1:[String]
    var lunch1:[String]
    var afternoon_snack1:[String]
    var dinner1:[String]
    init?(JSON: [String : AnyObject]) {
        guard let breakfast1 = JSON["breakfast"] as? [String] else {
            return nil
        }
        guard let second_breakfast1 = JSON["second_breakfast"] as? [String] else {
            return nil
        }
        guard let lunch1 = JSON["lunch"] as? [String] else {
            return nil
        }
        guard let afternoon_snack1 = JSON["afternoon_snack"] as? [String] else {
            return nil
        }
        guard let dinner1 = JSON["dinner"] as? [String] else {
            return nil
        }
        self.breakfast1 = breakfast1
        self.second_breakfast1 = second_breakfast1
        self.lunch1 = lunch1
        self.afternoon_snack1 = afternoon_snack1
        self.dinner1 = dinner1
    }
}
