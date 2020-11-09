//
//  Diet.swift
//  Workouts
//
//  Created by MR9U2 on 11/1/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import Foundation
struct diet{
    var breakfast:[String]
    var second_breakfast:[String]
    var lunch:[String]
    var afternoon_snack:[String]
    var dinner:[String]
    init?(JSON: [String : AnyObject]) {
        guard let breakfast = JSON["breakfast"] as? [String] else {
            return nil
        }
        guard let second_breakfast = JSON["second_breakfast"] as? [String] else {
            return nil
        }
        guard let lunch = JSON["lunch"] as? [String] else {
            return nil
        }
        guard let afternoon_snack = JSON["afternoon_snack"] as? [String] else {
            return nil
        }
        guard let dinner = JSON["dinner"] as? [String] else {
            return nil
        }
        self.breakfast = breakfast
        self.second_breakfast = second_breakfast
        self.lunch = lunch
        self.afternoon_snack = afternoon_snack
        self.dinner = dinner
    }
}
