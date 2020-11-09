//
//  Height.swift
//  Workouts
//
//  Created by MR9U2 on 10/8/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import UIKit

class Height: UIViewController {
    var userDeleaut = UserDefaults.standard

    @IBOutlet weak var tftHeight: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       
      
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
   

    @IBAction func btnNext(_ sender: Any) {
        let vc = Width(nibName: "Width", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
        
    }
   

}
