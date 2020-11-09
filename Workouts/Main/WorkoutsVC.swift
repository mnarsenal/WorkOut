//
//  WorkoutsVC.swift
//  Workouts
//
//  Created by MR9U2 on 9/21/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import UIKit

class WorkoutsVC: UIViewController {
    

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
    
    @IBAction func setUpBtn(_ sender: Any) {
        let vc = WelcomeVC(nibName: "WelcomeVC", bundle: nil)
       // if let nav = self.navigationController {
          //  nav.pushViewController(vc, animated: true)
      //  }
        navigationController?.pushViewController(vc, animated: true)
        //self.present(vc, animated: true, completion: nil)
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
