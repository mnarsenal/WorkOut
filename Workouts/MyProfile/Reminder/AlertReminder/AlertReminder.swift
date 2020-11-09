//
//  AlertReminder.swift
//  Workouts
//
//  Created by MR9U2 on 10/27/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import UIKit

class AlertReminder: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UITextFieldDelegate {
   
    var selectedIndexPath: IndexPath?
    @IBOutlet weak var tftHour: UITextField!
    @IBOutlet weak var tftMin: UITextField!
    @IBOutlet weak var btnAm: UIButton!
    @IBOutlet weak var btnPM: UIButton!
    var lblDay = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]
    var newCell = Reminder()
   
    var isButtonAMtrue = false
    @IBOutlet weak var collectionvView: UICollectionView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        newCell.lblDayReminder = "Monday"
        let nib = UINib(nibName: "CellReminder", bundle: nil)
        collectionvView.register(nib, forCellWithReuseIdentifier: "CellReminder")
        // Do any additional setup after loading the view.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return lblDay.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellReminder.reuseIdentifier, for: indexPath) as! CellReminder
        cell.lblDay.text = lblDay[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! CellReminder
        
         
        cell.imageCell.image = UIImage(named: "Ellipse 41")
        while(selectedIndexPath == indexPath){
            cell.imageCell.image = UIImage(named: "Ellipse 33")
            break
        }
            self.selectedIndexPath = indexPath
            
        
    }

    @IBAction func btnAM(_ sender: Any) {
        isButtonAMtrue = !isButtonAMtrue
        btnAm.setBackgroundImage(UIImage(named: "Rectangle 23"), for: .normal)
        btnAm.setTitleColor(UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00), for: .normal)
        btnPM.setBackgroundImage(UIImage(named: "Path 702"), for: .normal)
        btnPM.setTitleColor(UIColor(red: 0.00, green: 0.53, blue: 1.00, alpha: 1.00), for: .normal)
    }
    @IBAction func btnPM(_ sender: Any) {
        btnPM.setBackgroundImage(UIImage(named: "Rectangle 23"), for: .normal)
        btnPM.setTitleColor(UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00), for: .normal)
        btnAm.setTitleColor(UIColor(red: 0.00, green: 0.53, blue: 1.00, alpha: 1.00), for: .normal)
        btnAm.setBackgroundImage(UIImage(named: "Path 702"), for: .normal)
    }
    func test() {
        if isButtonAMtrue {
            newCell.lblAMorPM = "AM"
        }
        if !isButtonAMtrue{
            newCell.lblAMorPM = "PM"
        }
    }
    @IBAction func btnOK(_ sender: Any) {
        test()
        if(newCell.lblTimeReminder == nil || newCell.lblMinutes == nil || newCell.lblAMorPM == nil){
            print("Saii")
        }
        else{
            
            reminderData.append(newCell)
            print(reminderData.count)
            navigationController?.popViewController(animated: true)
            let vc = self.navigationController?.topViewController as? MyProfile
            
           dismiss(animated: true, completion: nil)
        }
        
        
    }
    // Mark -- UITFDElegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        tftMin.resignFirstResponder()
        tftHour.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        newCell.lblTimeReminder = tftHour.text ?? ""
        newCell.lblMinutes = tftMin.text ?? ""
        tftMin.resignFirstResponder()
        tftHour.resignFirstResponder()
    }

}
