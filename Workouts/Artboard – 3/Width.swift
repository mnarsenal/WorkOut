//
//  Width.swift
//  Workouts
//
//  Created by MR9U2 on 10/8/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import UIKit

class Width: UIViewController {
    
    @IBOutlet weak var tftWeigh: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
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
   
    @IBAction func btnFinish(_ sender: Any) {
        let vc = WorkOuts(nibName: "WorkOuts", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
        
    }
    


}
