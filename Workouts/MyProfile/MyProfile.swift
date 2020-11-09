//
//  MyProfile.swift
//  Workouts
//
//  Created by MR9U2 on 10/14/20.
//  Copyright © 2020 MR9U2. All rights reserved.
//

import UIKit
import CoreData
class MyProfile: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableViewReminder: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableViewReminder.separatorStyle = .none
 
        let nib = UINib(nibName: "CellReminderr", bundle: nil)
        tableViewReminder.register(nib, forCellReuseIdentifier: "CellReminderr")
        print(reminderData.count)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reminderData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellReminderr.reuseIdentifier, for: indexPath) as! CellReminderr
        
        return cell
    }
    
    fileprivate func aler(){
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .alert)
        let contentViewController = AlertCD()
        contentViewController.preferredContentSize = contentViewController.view.bounds.size
               alertController.setValue(contentViewController, forKey: "contentViewController")
        
        present(alertController, animated: true, completion:{
            alertController.view.superview?.isUserInteractionEnabled = true
                  alertController.view.superview?.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.dismissOnTapOutside)))
        })
        
    }
    @objc func dismissOnTapOutside(){
          self.dismiss(animated: true, completion: nil)
       }


    @IBAction func addCell(_ sender: Any) {
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .alert)
        let contentViewController = AlertReminder()
        contentViewController.preferredContentSize = contentViewController.view.bounds.size
               alertController.setValue(contentViewController, forKey: "contentViewController")
        
        present(alertController, animated: true, completion:{
            alertController.view.superview?.isUserInteractionEnabled = true
                  alertController.view.superview?.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.dismissOnTapOutside)))
        })
    }
    
    @IBAction func btnForm(_ sender: Any) {
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .alert)
        let contentViewController = AlertForm()
        contentViewController.preferredContentSize = contentViewController.view.bounds.size
               alertController.setValue(contentViewController, forKey: "contentViewController")
        
        present(alertController, animated: true, completion:{
            alertController.view.superview?.isUserInteractionEnabled = true
                  alertController.view.superview?.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.dismissOnTapOutside)))
        })
        
          
    }
    
    @IBAction func btnCountDown(_ sender: Any) {
        
        aler()
    }
 
   
    @IBAction func btnGenenal(_ sender: Any) {
        
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .alert)
        let contentViewController = AlertGenenal()
        contentViewController.preferredContentSize = contentViewController.view.bounds.size
               alertController.setValue(contentViewController, forKey: "contentViewController")
        
        present(alertController, animated: true, completion:{
            alertController.view.superview?.isUserInteractionEnabled = true
                  alertController.view.superview?.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.dismissOnTapOutside)))
        })
        
    }
}

