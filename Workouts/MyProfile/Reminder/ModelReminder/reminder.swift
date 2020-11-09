//
//  reminder.swift
//  Workouts
//
//  Created by MR9U2 on 11/6/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import Foundation
class Reminder{
    var lblTimeReminder: String?
    var lblDayReminder: String?
    var lblMinutes:String?
    var lblAMorPM:String?
   convenience init(lblTimeReminder: String,lblDayReminder: String,lblMinutes:String,lblAMorPM:String) {
    self.init()
        self.lblAMorPM = lblAMorPM
        self.lblMinutes = lblMinutes
        self.lblDayReminder = lblDayReminder
        self.lblTimeReminder = lblTimeReminder
    }
}
