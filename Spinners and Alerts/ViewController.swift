//
//  ViewController.swift
//  Spinners and Alerts
//
//  Created by Vladislav Fedotovskiy on 30.11.16.
//  Copyright © 2016 Vladislav Fedotovskiy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var activityIndicator = UIActivityIndicatorView()
    
    @IBAction func createAlert(_ sender: AnyObject) {
        
        let alertController = UIAlertController(title: "HELLO!", message: "Are you sure?", preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
            
            print("OK button pressed")
            
            self.dismiss(animated: true, completion: nil)
            
            
        }))
        
        alertController.addAction(UIAlertAction(title: "NO", style: .default, handler: { (action) in
            
            print(" NO button pressed")
            
            self.dismiss(animated: true, completion: nil)
            
            
        }))

        
        self.present(alertController, animated: true, completion: nil)
        
        
    }
    
    
    @IBAction func pauseApp(_ sender: AnyObject) {
        
        activityIndicator = UIActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        
        activityIndicator.center = self.view.center
        
        activityIndicator.hidesWhenStopped = true
        
        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.gray
        
        view.addSubview(activityIndicator)
        
        activityIndicator.startAnimating()
        
        
    }
    
    
    @IBAction func restoreApp(_ sender: AnyObject) {
        
        activityIndicator.stopAnimating()
        
    }
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

