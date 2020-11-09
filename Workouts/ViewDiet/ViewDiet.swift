//
//  ViewDiet.swift
//  Workouts
//
//  Created by MR9U2 on 10/9/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import UIKit
import Alamofire
class ViewDiet: UIViewController, CompletedDelegate,UITableViewDelegate,UITableViewDataSource, TileDelegate {
    func userButton(into tile: Title) {
        let vc = MealsPlan(nibName: "MealsPlan", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
   
    let contentViewController = Completed()
    let vc1 = MealsPlan()
    @IBOutlet weak var viewTitle: Title!

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var btnS: UIButton!
    @IBOutlet weak var btnV: UIButton!
    var lblTitle = ["Breakfast","Second Breakfast","Lunch","Afternoon Snack","Dinner"]
    
    var image = [UIImage(named: "Component 9 – 1"),UIImage(named: "Component 9 – 1"),UIImage(named: "Component 10 – 1"),UIImage(named: "Component 11 – 1"),UIImage(named: "Component 12 – 1")]
  private var dataDiet = [diet]()
    var lblDiet = [[""],[""],[""],[""],[""]]
    var lblDiet1 = [[""],[""],[""],[""],[""]]
    var lblTitleView = ""
    var showTableViewDiet = false
    var showTableViewDiet_vega = false
    init(lblDiet: [[String]],lblDiet1: [[String]],lblTitleView: String) {
        self.lblTitleView = lblTitleView
        self.lblDiet = lblDiet
        self.lblDiet1 = lblDiet1
        super.init(nibName: nil , bundle: nil)
    }
    
  
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewTitle.delegate = self
        contentViewController.delegate = self
       
        configureView()
        tableView.estimatedRowHeight = 50
     tableView.rowHeight = UITableView.automaticDimension
       
        btnS.setBackgroundImage(UIImage(named: "Rectangle 23"), for: .normal)
        btnS.setTitleColor(UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00), for: .normal)
        
        let nib = UINib(nibName: "CellViewDiet", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "CellViewDiet")
        // Do any additional setup after loading the view.
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
    
    func configureView()  {
        self.view.addSubview(viewTitle)
        viewTitle.image.image = UIImage(named: "mealplan")
        viewTitle.titleText.text = "Day" + lblTitleView
    }
    func fetchingInformation(){
        if showTableViewDiet_vega{
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
                self.tableView.reloadData()
            }
            
            
        }
        catch{
            print("ERROR")
        }
        }
        
    
    }
    
    func diet_vega(){
        //if showTableViewDiet{
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
                        if let cat = diet(JSON: catOject){
                            self.dataDiet.append(cat)
                            print(cat)
                        }
                    }
                    self.tableView.reloadData()
                }
                
                
            }
            catch{
                print("ERROR")
            }
     //   }
    }
    
    
    
 func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
      return UITableView.automaticDimension
   }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lblTitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellViewDiet.reuseIdentifier, for: indexPath) as! CellViewDiet
        cell.configure(image: image[indexPath.row], lblTitle: lblTitle[indexPath.row])
        if(indexPath.row == 0){
            
            cell.configureMain(lblmain: lblDiet[0])
        }
        if(indexPath.row == 1){
            cell.configureMain(lblmain: lblDiet[1])
        }
        if(indexPath.row == 2){
            cell.configureMain(lblmain: lblDiet[2])
        }
        if(indexPath.row == 3){
            cell.configureMain(lblmain: lblDiet[3])
        }
        if(indexPath.row == 4){
            cell.configureMain(lblmain: lblDiet[4])
        }
        if showTableViewDiet {
             if(indexPath.row == 0){
                 cell.configureMain(lblmain: lblDiet1[0])
             }
             if(indexPath.row == 1){
                 cell.configureMain(lblmain: lblDiet1[1])
             }
             if(indexPath.row == 2){
                 cell.configureMain(lblmain: lblDiet1[2])
             }
             if(indexPath.row == 3){
                 cell.configureMain(lblmain: lblDiet1[3])
             }
             if(indexPath.row == 4){
                 cell.configureMain(lblmain: lblDiet1[4])
             }
         }
      
            return cell
    }

    @IBAction func btnStandard(_ sender: Any) {
        btnS.setBackgroundImage(UIImage(named: "Rectangle 23"), for: .normal)
        btnS.setTitleColor(UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00), for: .normal)
       
        btnV.setBackgroundImage(UIImage(named: "Path 702"), for: .normal)
        btnV.setTitleColor(UIColor(red: 0.58, green: 0.61, blue: 0.74, alpha: 1.00), for: .normal)
        showTableViewDiet = !showTableViewDiet
        tableView.reloadData()
       //showTableViewDiet_vega = !showTableViewDiet_vega
        //tableView.refreshControl?.beginRefreshing()
        //fetchingInformation()
    }
    @IBAction func btnVegetaran(_ sender: Any) {
        //var indexPathToReload = [IndexPath]()
        btnV.setBackgroundImage(UIImage(named: "Rectangle 23"), for: .normal)
        btnS.setBackgroundImage(UIImage(named: "Path 702"), for: .normal)
        btnV.setTitleColor(UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00), for: .normal)
        btnS.setTitleColor(UIColor(red: 0.58, green: 0.61, blue: 0.74, alpha: 1.00), for: .normal)
        showTableViewDiet = !showTableViewDiet
        tableView.reloadData()
        //diet_vega()
    }
    @IBAction func btnOK(_ sender: Any) {
        completed()
    }
    fileprivate func completed(){
        
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .alert)
        contentViewController.lblNgay = lblTitleView
        contentViewController.preferredContentSize = contentViewController.view.bounds.size
               alertController.setValue(contentViewController, forKey: "contentViewController")
        present(alertController, animated: true, completion: nil)
    }
    fileprivate func completed1(){
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .alert)
        contentViewController.preferredContentSize = contentViewController.view.bounds.size
               alertController.setValue(contentViewController, forKey: "contentViewController")
        dismiss(animated: true, completion: nil)
    }
    func userBtnOk(into completed: Completed) {
        let vc = MealsPlan(nibName: "MealsPlan", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
        completed1()
    }
    
    func userBtnCanel(into completed: Completed) {
         completed1()
    }
    
   

}
