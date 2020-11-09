//
//  MealsPlan.swift
//  Workouts
//
//  Created by MR9U2 on 10/8/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import UIKit

class MealsPlan: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource, TileDelegate {
  
    
   
  
    var selectedIndexPath: IndexPath?
    var lbl = ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29"]
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var viewTitle: Title!
    var dataDiet = [diet]()
    var dataDiet_vega = [diet1]()
    override func viewDidLoad() {
        super.viewDidLoad()
        initCollectionView()
        configureView()
        viewTitle.delegate = self
        fetchingInformation()
        diet_vega()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    func fetchingInformation(){
    
        guard let path = Bundle.main.path(forResource: "diet_vega", ofType: "json") else {
            return
        }
        let url = URL(fileURLWithPath: path)
        do{
            let data = try  Data(contentsOf: url)
            let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
            let dataJSON = json as? NSDictionary
            if let catJSON = dataJSON?["diet"] as? [[String:AnyObject]]{
                for catOject in catJSON{
                    if let cat = diet(JSON: catOject){
                        self.dataDiet.append(cat)
                       
                    }
                }
               
            }
            
            
        }
        catch{
            print("ERROR")
        }
    }
    func diet_vega(){
        
            guard let path = Bundle.main.path(forResource: "diet", ofType: "json") else {
                return
            }
            let url = URL(fileURLWithPath: path)
            do{
                let data = try  Data(contentsOf: url)
                let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
                let dataJSON = json as? NSDictionary
                if let catJSON = dataJSON?["diet"] as? [[String:AnyObject]]{
                    for catOject in catJSON{
                        if let cat = diet1(JSON: catOject){
                            self.dataDiet_vega.append(cat)
                            print(cat)
                        }
                    }
               
                }
                
                
            }
            catch{
                print("ERROR")
            }
    }
    func initCollectionView(){
       let nib = UINib(nibName: "CellMP", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "CellMP")
    }
    func configureView()  {
        self.view.addSubview(viewTitle)
        viewTitle.image.image = UIImage(named: "mealplan")
        viewTitle.titleText.text = "MEALS PLAN"
    }
    func test(){
        
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return lbl.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellMP.reuseIdentifier, for: indexPath) as! CellMP
        cell.lbCell.text = lbl[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        _ = collectionView.cellForItem(at: indexPath) as! CellMP
        let diet1 = [dataDiet[indexPath.row].breakfast,dataDiet[indexPath.row].second_breakfast,dataDiet[indexPath.row].lunch,dataDiet[indexPath.row].afternoon_snack,dataDiet[indexPath.row].dinner]
        let diet2 = [dataDiet_vega[indexPath.row].breakfast1,dataDiet_vega[indexPath.row].second_breakfast1,dataDiet_vega[indexPath.row].lunch1,dataDiet_vega[indexPath.row].afternoon_snack1,dataDiet_vega[indexPath.row].dinner1]
        let lblTitleView = lbl[indexPath.row]
       
        
        let vc = ViewDiet(lblDiet: diet1, lblDiet1: diet2,lblTitleView: lblTitleView)
       
        
        navigationController?.pushViewController(vc, animated: true)
    
        self.selectedIndexPath = indexPath
    }
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        _ = collectionView.cellForItem(at: indexPath) as! CellMP
       
        
        
        self.selectedIndexPath = nil
    }
    func userButton(into tile: Title) {
        _ = WorkOuts(nibName: "WorkOuts", bundle: nil)
        navigationController?.popViewController(animated: true)
    }
    
}

