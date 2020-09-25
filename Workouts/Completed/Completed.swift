//
//  Completed.swift
//  Workouts
//
//  Created by MR9U2 on 9/23/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import Foundation
import UIKit
class Completed:UIView{
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
         
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
      
    }
    func commonInit(){
        let view = loadNib3()
        addSubview(view)
        view.frame = bounds
       
        view.translatesAutoresizingMaskIntoConstraints = false
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[childView]|",
                                                      options: [],
                                                      metrics: nil,
                                                      views: ["childView": view]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[childView]|",
                                                      options: [],
                                                      metrics: nil,
                                                      views: ["childView": view]))
    }
}
extension UIView {
    /** Loads instance from nib with the same name. */
    func loadNib3() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nibName = type(of: self).description().components(separatedBy: ".").last!
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as! UIView
    }
}
