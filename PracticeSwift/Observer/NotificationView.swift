//
//  NotificationView.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 09.02.2022.
//

import UIKit

let colorNotification = Notification.Name("colorNotification")
class ColorNotification: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        NotificationCenter.default.addObserver(self, selector: #selector(colorChanges(color:)), name: colorNotification, object: nil)
        
    }
    @objc func colorChanges(color: Notification) {
        view.backgroundColor = .red
    }
    
    @IBAction func buttonColor(_ sender: Any) {
        NotificationCenter.default.post(name: colorNotification, object: nil)
    }
    deinit {
        NotificationCenter.default.removeObserver(self, name: colorNotification, object: nil)
    }
}
