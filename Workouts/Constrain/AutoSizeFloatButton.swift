//
//  AutoSizeFloatButton.swift
//  OnePay
//
//  Created by Quang Anh on 1/2/18.
//  Copyright © 2018 Quang Anh. All rights reserved.
//

import UIKit
class AutoSizeFloatButton: UIButton {
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        let ratio = UIScreen.main.bounds.width/375
        if ratio < 1.0 {
            self.frame.size = CGSize(width: self.frame.size.width*ratio, height: self.frame.size.height*ratio)
        }
    }
}
