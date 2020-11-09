//
//  WelcomeVC.swift
//  Workouts
//
//  Created by MR9U2 on 10/7/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import UIKit

class WelcomeVC:  UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var lable = ["Belly","Butt","arm","Leg"]
    var imageBackground = [UIImage(named: "Rectangle 121"),UIImage(named: "ABS back"),UIImage(named: "ABS back red"),UIImage(named: "ABS back yelow")]
        
    var image = [UIImage(named: "Component 1 – 1"),UIImage(named: "Path 541"),UIImage(named: "Path 538"),UIImage(named: "Component 4 – 1")]
    override func viewDidLoad() {
        super.viewDidLoad()
        initCollectionView()
        // Do any additional setup after loading the view.
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
       let nib = UINib(nibName: "Cell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "Cell")
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return lable.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cell.reuseIdentifier, for: indexPath) as! Cell
        cell.configue(text: lable[indexPath.row], image: image[indexPath.row], background: imageBackground[indexPath.row])
        return cell
    }
    @IBAction func btnNext(_ sender: Any) {
        let vc = Height(nibName: "Height", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
  

}
