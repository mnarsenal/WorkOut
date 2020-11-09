//
//  WorkOuts.swift
//  Workouts
//
//  Created by MR9U2 on 10/12/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import UIKit

class WorkOuts: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,MenuViewDelegete {
   
    
 

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var collectionVIewABS: UICollectionView!
    @IBOutlet weak var collectionVIewLEG: UICollectionView!
    @IBOutlet weak var collectionVIewARM: UICollectionView!
    @IBOutlet weak var collectionVIewBUTT: UICollectionView!
   
    @IBOutlet weak var viewMain: UIView!
    var selectedIndexPath: IndexPath?
    
    @IBOutlet weak var leadingMenu: NSLayoutConstraint!
    @IBOutlet weak var topMenu: NSLayoutConstraint!
    @IBOutlet weak var heightMenu: NSLayoutConstraint!
    @IBOutlet weak var widthMenu: NSLayoutConstraint!
    @IBOutlet weak var viewMenu: MenuView!
    // 28 days Challenge
    var image = [UIImage(named: "Image"),UIImage(named: "Image1")]
    var background = [UIImage(named: "Rectangle 121"),UIImage(named: "ABS back yelow")]
    var lbl = ["Full body 7x4","ABS 7x4"]
    // ABS
    var imageABS = [UIImage(named: "ABS1"),UIImage(named: "ABS2"),UIImage(named: "ABS3")]
    var backgroundABS = [UIImage(named: "ABS back"),UIImage(named: "ABS back red"),UIImage(named: "ABS back yelow"),UIImage(named: "ABS back red")]
    var lblABS = ["ABS beginner","ABS intermediate","ABS advanced"]
    // LEG
    var imageLEG = [UIImage(named: "LEG1"),UIImage(named: "LEG2"),UIImage(named: "LEG3")]
    var backgroundLEG = [UIImage(named: "ABS back"),UIImage(named: "ABS back red"),UIImage(named: "ABS back yelow"),UIImage(named: "ABS back red")]
    var lbllEG = ["LEG beginner","LEG intermediate","LEG advanced"]
    // ARM
    var imageARM = [UIImage(named: "ARM1"),UIImage(named: "ARM2"),UIImage(named: "ARM3")]
    var backgroundARM = [UIImage(named: "ABS back"),UIImage(named: "ABS back red"),UIImage(named: "ABS back yelow"),UIImage(named: "ABS back red")]
    var lblARM = ["ARM beginner","ARM intermediate","ARM advanced"]
    // BUTT
    var imageBUTT = [UIImage(named: "But1"),UIImage(named: "But2"),UIImage(named: "But3")]
    var backgroundBUTT = [UIImage(named: "ABS back"),UIImage(named: "ABS back red"),UIImage(named: "ABS back yelow"),UIImage(named: "ABS back red")]
    var lblBUTT = ["BUTT beginner","BUTT intermediate","BUTT advanced"]
    var showMenu = false
    override func viewDidLoad() {
        super.viewDidLoad()
        initCollectionView()
        viewMenu.delegate = self
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

    func initCollectionView(){
        let nib = UINib(nibName: "MenuCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "MenuCell")
        collectionVIewABS.register(nib, forCellWithReuseIdentifier: "MenuCell")
        collectionVIewLEG.register(nib, forCellWithReuseIdentifier: "MenuCell")
        collectionVIewARM.register(nib, forCellWithReuseIdentifier: "MenuCell")
        collectionVIewBUTT.register(nib, forCellWithReuseIdentifier: "MenuCell")
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionView{
            return image.count
        }
        else if collectionView == self.collectionVIewABS{
            return imageABS.count
        }
        else if collectionView == self.collectionVIewLEG{
            return imageLEG.count
        }
        else if collectionView == self.collectionVIewARM{
            return imageARM.count
        }
        else{
            return imageBUTT.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MenuCell.reuseIdentifier, for: indexPath) as! MenuCell
        if collectionView == self.collectionView{
            cell.configue(image: image[indexPath.row], background: background[indexPath.row], text: lbl[indexPath.row])
            return cell
        }
        else if collectionView == self.collectionVIewABS{
            cell.configue(image: imageABS[indexPath.row], background: backgroundABS[indexPath.row], text: lblABS[indexPath.row])
            return cell
        }
        else if collectionView == self.collectionVIewLEG{
            cell.configue(image: imageLEG[indexPath.row], background: backgroundLEG[indexPath.row], text: lbllEG[indexPath.row])
            return cell
        }
        else if collectionView == self.collectionVIewARM{
            cell.configue(image: imageARM[indexPath.row], background: backgroundARM[indexPath.row], text: lblARM[indexPath.row])
            return cell
        }
        else{
            cell.configue(image: imageBUTT[indexPath.row], background: backgroundBUTT[indexPath.row], text: lblBUTT[indexPath.row])
            return cell
        }
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        _ = collectionView.cellForItem(at: indexPath) as!MenuCell
        let vc = Exercise(nibName: "Exercise", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
        
        self.selectedIndexPath = indexPath
    }
   
    @IBAction func btnMenu(_ sender: Any) {
        showMenu = !showMenu
        viewMain.backgroundColor = UIColor(red: 0.01, green: 0.01, blue: 0.01, alpha: 1.00)
        viewMain.alpha = 0.1
        self.view.addSubview(viewMenu)
        self.heightMenu.isActive = true
        self.widthMenu.isActive = true
        self.leadingMenu.isActive = true
        self.topMenu.isActive = true
        
    }
    func userBtnWorkOut(into menu: MenuView) {
        let vc = WorkOuts(nibName: "WorkOuts", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    func userBtnMP(into menu: MenuView) {
        let vc = MealsPlan(nibName: "MealsPlan", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
       
    }
    
    func userbtnRP(into menu: MenuView) {
        let vc = Exercise(nibName: "Exercise", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
       
    }
    
    func userBtnMyProfile(into menu: MenuView) {
        let vc = MyProfile(nibName: "MyProfile", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    func userBtnMoreApp(into menu: MenuView) {
        let vc = MoreApp(nibName: "MoreApp", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
        
    }
}
