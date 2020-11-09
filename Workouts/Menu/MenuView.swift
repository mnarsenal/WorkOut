//
//  MenuView.swift
//  Workouts
//
//  Created by MR9U2 on 10/27/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import Foundation
import UIKit
class MenuView: UIView {
    var delegate:MenuViewDelegete?
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    private func commonInit(){
        let view = loadNib()
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
    @IBAction func btnWorkOut(_ sender: Any) {
        delegate?.userBtnWorkOut(into: self)
    }
    @IBAction func btnMeals(_ sender: Any) {
        delegate?.userBtnMP(into: self)
    }
    @IBAction func btnReport(_ sender: Any) {
        delegate?.userbtnRP(into: self)
    }
    @IBAction func btnProfile(_ sender: Any) {
        delegate?.userBtnMyProfile(into: self)
    }
    @IBAction func btnMoreApp(_ sender: Any) {
        delegate?.userBtnMoreApp(into: self)
    }
}

extension UIView {
    /** Loads instance from nib with the same name. */
    func loadNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nibName = type(of: self).description().components(separatedBy: ".").last!
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as! UIView
    }
}
protocol MenuViewDelegete {
    func userBtnWorkOut(into menu:MenuView)
    func userBtnMP(into menu:MenuView)
    func userbtnRP(into menu:MenuView)
    func userBtnMyProfile(into menu:MenuView)
    func userBtnMoreApp(into menu:MenuView)
}
