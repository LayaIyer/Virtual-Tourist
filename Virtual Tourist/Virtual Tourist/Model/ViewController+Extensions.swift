//
//  ViewController+Extensions.swift
//  Virtual Tourist
//
//  Created by Laya Iyer on 4/3/18.
//  Copyright © 2018 Udacity. All rights reserved.
//

import UIKit

extension UIViewController {
    var appDelegate: AppDelegate{
        return UIApplication.shared.delegate as! AppDelegate
    }
    
    func save() {
        do {
            try DataController.shared().saveContext()
        } catch {
            showErrorInfo(title: "Error", message: "Error while saving Pin location: \(error)")
        }
    }
    
    func showErrorInfo(title: String = "Info", message: String, action: (() -> Void)? = nil) {
        performUIUpdatesOnMain {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {(alertAction) in action?()}))
            
            self.present(alert, animated: true)
        }
    }
    
    func performUIUpdatesOnMain(_ updates: @escaping () -> Void) {
        DispatchQueue.main.async {
            updates()
        }
    }
}
