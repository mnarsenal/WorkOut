//
//  MoreApp.swift
//  Workouts
//
//  Created by MR9U2 on 10/15/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import UIKit

class MoreApp: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    @IBOutlet weak var collectionview: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        initCollectionView()
        // Do any additional setup after loading the view.
    }
    func initCollectionView(){
        let nib = UINib(nibName: "MoreAppCell", bundle: nil)
        collectionview.register(nib, forCellWithReuseIdentifier: "MoreAppCell")
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
     }
     
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MoreAppCell.reuseIdentifier, for: indexPath) as! MoreAppCell
        
        return cell
     }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
