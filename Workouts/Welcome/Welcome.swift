//
//  Welcome.swift
//  Workouts
//
//  Created by MR9U2 on 9/21/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import Foundation
import UIKit
class Welcome:UIView, UICollectionViewDataSource, UICollectionViewDelegate {
    var lable = ["Belly","Butt","arm","Leg"]
    var image = [UIImage(named: "Component 1 – 1"),UIImage(named: "Path 541"),UIImage(named: "Path 538"),UIImage(named: "Component 4 – 1")]
    
    var background = [UIColor(red: 0.64, green: 0.83, blue: 1.00, alpha: 1.00),UIColor(red: 0.78, green: 1.00, blue: 0.80, alpha: 1.00),UIColor(red: 1.00, green: 0.81, blue: 0.81, alpha: 1.00),UIColor(red: 1.00, green: 0.96, blue: 0.81, alpha: 1.00)]
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet var viewYourHeight: UIView!
    @IBOutlet var viewWelcome: UIView!
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
        initCollectionView()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
        initCollectionView()
    }
    func commonInit(){
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
    func initCollectionView(){
        let nib = UINib(nibName: "Cell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "Cell")
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return lable.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cell.reuseIdentifier, for: indexPath) as! Cell
        cell.configue(text: lable[indexPath.row], image: image[indexPath.row],background: background[indexPath.row])
        return cell
    }
    @IBAction func nextBtn(_ sender: Any) {
        
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
