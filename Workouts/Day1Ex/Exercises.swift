//
//  Exercises.swift
//  Workouts
//
//  Created by MR9U2 on 10/14/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import UIKit

class Exercises: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    @IBOutlet weak var viewTitle: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var lblDate: UILabel!
    var lblDay = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        viewTitle.layer.cornerRadius = viewTitle.frame.size.width / 10
        initCollectionView()
        lblDate.text = "Day " + lblDay
    }
    init(lblDay: String) {
        super.init(nibName: nil, bundle: nil)
        self.lblDay = lblDay
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
        let nib = UINib(nibName: "ExercisesCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "ExercisesCell")
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 13
     }
     
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ExercisesCell.reuseIdentifier, for: indexPath) as! ExercisesCell
        
        return cell
     }
   
    @IBAction func btnBack(_ sender: Any) {
        _ = Exercise(nibName: "Exercise", bundle: nil)
        navigationController?.popViewController(animated: true)
    }
}
