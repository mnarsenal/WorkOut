//
//  Test.swift
//  Workouts
//
//  Created by MR9U2 on 10/8/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import UIKit

class Test: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let vc = WorkOuts(nibName: "WorkOuts", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
        // Do any additional setup after loading the view.
    }
    

 

}
