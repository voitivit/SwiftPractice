//
//  ColorNotification.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 10.03.2022.
//

import UIKit
let colorNotification = Notification.Name("colorNotification")
class NotificationColor: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        NotificationCenter.default.addObserver(self, selector: #selector(colorChoise(color:)), name: colorNotification, object: nil)
        
    }
    
    @objc func colorChoise(color: Notification) {
        self.view.backgroundColor = .yellow
    }
    
    @IBAction func buttonNotification(_ sender: Any) {
        NotificationCenter.default.post(name: colorNotification, object: nil)
    }
    deinit {
        NotificationCenter.default.removeObserver(self, name: colorNotification, object: nil)
    }
    
    
}
