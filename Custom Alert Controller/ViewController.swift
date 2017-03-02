//
//  ViewController.swift
//  Custom Alert Controller
//
//  Created by Nahin Ahmed on 3/2/17.
//  Copyright © 2017 Nahin Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func setupAlertController(){
        
        let alertController = UIAlertController(title: "", message: "", preferredStyle: .alert)
        
        // MARK: - Alert controller text settings
        
        alertController.setValue(NSAttributedString(string: "", attributes: [NSFontAttributeName : UIFont.systemFont(ofSize: 17, weight: UIFontWeightMedium), NSForegroundColorAttributeName : UIColor.white]), forKey: "attributedTitle")
        
        alertController.setValue(NSAttributedString(string: "Are you sure you want to accept this deal and work with Mr. Walter White?", attributes: [NSFontAttributeName : UIFont.systemFont(ofSize: 17, weight: UIFontWeightMedium), NSForegroundColorAttributeName : UIColor.white]), forKey: "attributedMessage")
        
        // MARK: - Changing background color of alert controller
        
        let firstSubview = alertController.view.subviews.first
        let alertContentView = firstSubview?.subviews.first
        for subview in (alertContentView?.subviews)! {
            subview.backgroundColor = UIColor.blue
            subview.layer.cornerRadius = 10
            subview.alpha = 1
            subview.layer.borderWidth = 0
            subview.layer.borderColor = UIColor.blue.cgColor
        }
        
        // MARK: - Alert action text color white
        
        alertController.view.tintColor = UIColor.white
        
        let alertActionYes = UIAlertAction(title: "Yes", style: .default, handler: nil)
        let alertActionNo = UIAlertAction(title: "No", style: .destructive, handler: nil)
        
        alertController.addAction(alertActionYes)
        alertController.addAction(alertActionNo)
        
        self.present(alertController, animated: true, completion: nil)
        
    }

    @IBAction func openAlert(_ sender: UIButton) {
        
         setupAlertController()
    }

}

