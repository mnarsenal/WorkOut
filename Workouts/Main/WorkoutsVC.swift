//
//  WorkoutsVC.swift
//  Workouts
//
//  Created by MR9U2 on 9/21/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import UIKit

class WorkoutsVC: UIViewController {

    @IBOutlet weak var view123: Menu!
    @IBOutlet var viewWelcome: Welcome!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(view123)
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func setUpBtn(_ sender: Any) {
        self.view.addSubview(view123)
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
