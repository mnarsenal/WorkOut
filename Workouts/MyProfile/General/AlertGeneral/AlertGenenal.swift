//
//  AlertGenenal.swift
//  Workouts
//
//  Created by MR9U2 on 10/19/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import UIKit

class AlertGenenal: UIViewController {

    @IBOutlet weak var btnVietnamese: UIButton!
    @IBOutlet weak var btnEnglish: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        btnEnglish.contentMode = UIView.ContentMode.scaleAspectFill
        btnVietnamese.contentMode = UIView.ContentMode.scaleAspectFill
        // Do any additional setup after loading the view.
    }
    @IBAction func btnE(_ sender: Any) {
        btnEnglish.setBackgroundImage(UIImage(named: "Rectangle 121"), for: .normal)
        
        btnVietnamese.setBackgroundImage(UIImage(named: "Rectangle 20"), for: .normal)
    }
    
    @IBAction func btnV(_ sender: Any) {
        btnVietnamese.setBackgroundImage(UIImage(named: "Rectangle 121"), for: .normal)
        btnEnglish.setBackgroundImage(UIImage(named: "Rectangle 20"), for: .normal)
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
