//
//  ColorNotification.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 04.02.2022.
//

import UIKit
let colorNotification = Notification.Name("colorNotification")
class ColorNotification: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(colorChange(color:)), name: colorNotification, object: nil)
    }
    @objc func colorChange(color: Notification) {
        self.view.backgroundColor = .yellow
        }
    
    @IBAction func colorChanges(_ sender: Any) {
        NotificationCenter.default.post(name: colorNotification, object: nil)
    }
    deinit {
        NotificationCenter.default.removeObserver(self, name: colorNotification, object: nil)
    }
}
