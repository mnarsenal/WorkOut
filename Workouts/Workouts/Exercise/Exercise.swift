//
//  Exercise.swift
//  Workouts
//
//  Created by MR9U2 on 10/12/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import UIKit

class Exercise: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource, TileDelegate {
    
    
    @IBOutlet weak var viewTitle: Title!
    @IBOutlet weak var viewTron: UIView!
    @IBOutlet weak var colecitonView: UICollectionView!
    @IBOutlet weak var week2: UICollectionView!
    @IBOutlet weak var week3: UICollectionView!
    @IBOutlet weak var week4: UICollectionView!
    var selectedIndexPath: IndexPath?
    var titlebtn = ["1","2","3","4","5","6","7"]
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewTitle()
        viewTitle.delegate = self
        // Do any additional setup after loading the view.
        initCollectionView()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    func configureViewTitle(){
        viewTitle.image.image = UIImage(named: "Image")
        viewTitle.image.contentMode = UIImageView.ContentMode.scaleAspectFill
        self.view.addSubview(viewTitle)
    }
    func initCollectionView(){
       let nib = UINib(nibName: "ExerciseCell", bundle: nil)
        colecitonView.register(nib, forCellWithReuseIdentifier: "ExerciseCell")
        week2.register(nib, forCellWithReuseIdentifier: "ExerciseCell")
        week3.register(nib, forCellWithReuseIdentifier: "ExerciseCell")
        week4.register(nib, forCellWithReuseIdentifier: "ExerciseCell")
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return titlebtn.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ExerciseCell.reuseIdentifier, for: indexPath) as! ExerciseCell
        cell.lblCell.text = titlebtn[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        _ = collectionView.cellForItem(at: indexPath) as! ExerciseCell
        let lblDay = ["01","02","03","04","05","06","07"]
        let vc = Exercises(lblDay: lblDay[indexPath.row])
        
        navigationController?.pushViewController(vc, animated: true)
        self.selectedIndexPath = indexPath
    }
    func userButton(into tile: Title) {
        _ = WorkOuts(nibName: "WorkOuts", bundle: nil)
        navigationController?.popViewController(animated: true)
    }
}
