//
//  Menu.swift
//  Workouts
//
//  Created by MR9U2 on 9/22/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import Foundation
import UIKit
class Menu: UIView,UICollectionViewDataSource,UICollectionViewDelegate {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var viewMenu: UIView!
    @IBOutlet weak var colectionview: UICollectionView!
    var image = [UIImage(named: "Image"),UIImage(named: "Image1")]
    var background = [UIColor(red: 0.64, green: 0.83, blue: 1.00, alpha: 1.00),UIColor(red: 1.00, green: 0.96, blue: 0.81, alpha: 1.00)]
     override init(frame: CGRect) {
           super.init(frame: frame)
           commonInit()
            initCollectionView()
        layoutviewMenu()
       }
       required init?(coder aDecoder: NSCoder) {
           super.init(coder: aDecoder)
           commonInit()
         initCollectionView()
        layoutviewMenu()
       }
       func commonInit(){
           let view = loadNib2()
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
    func layoutviewMenu(){
        viewMenu.layer.cornerRadius = 50
        imageView.layer.cornerRadius = 20
    }
    func initCollectionView(){
        let nib = UINib(nibName: "MenuCell", bundle: nil)
        colectionview.register(nib, forCellWithReuseIdentifier: "MenuCell")
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return image.count
     }
     
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MenuCell.reuseIdentifier, for: indexPath) as! MenuCell
        cell.configue(image: image[indexPath.row], background: background[indexPath.row])
        return cell
     }
}
extension UIView {
    /** Loads instance from nib with the same name. */
    func loadNib2() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nibName = type(of: self).description().components(separatedBy: ".").last!
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as! UIView
    }
}

