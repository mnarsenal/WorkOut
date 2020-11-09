//
//  Completed.swift
//  Workouts
//
//  Created by MR9U2 on 10/17/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import UIKit

class Completed: UIViewController {
    var delegate:CompletedDelegate?
    @IBOutlet weak var lblTitle: UILabel!
    var lblNgay = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        lblTitle.text = "Day " + lblNgay + " completed"
        
    }

    
    @IBAction func btnOk(_ sender: Any) {
        let vc = MealsPlan(nibName: "MealsPlan", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
        delegate?.userBtnOk(into: self)
        
        
    }
   
    @IBAction func btnCanel(_ sender: Any) {
        delegate?.userBtnCanel(into: self)
    }
    
}
protocol CompletedDelegate {
    func userBtnOk(into completed: Completed)
    func userBtnCanel(into completed:Completed)
}
