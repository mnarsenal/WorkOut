//
//  Title.swift
//  Workouts
//
//  Created by MR9U2 on 9/23/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import Foundation
import UIKit
class Title:UIView{
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var titleText: UILabel!
    var delegate:TileDelegate?
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
         
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
      
    }
    func commonInit(){
        let view = loadNib4()
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
    
 
    @IBAction func btnBack(_ sender: Any) {
        self.delegate?.userButton(into: self)
    }
}
protocol TileDelegate {
    func userButton(into tile:Title)
}
extension UIView {
    /** Loads instance from nib with the same name. */
    func loadNib4() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nibName = type(of: self).description().components(separatedBy: ".").last!
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as! UIView
    }
}
