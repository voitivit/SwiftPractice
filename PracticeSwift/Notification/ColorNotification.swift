//
//  ColorNotification.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 16.02.2022.
//

import UIKit
let colorNotification = Notification.Name("colorNotification")
class ColorNotification: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        NotificationCenter.default.addObserver(self, selector: #selector(colorChangedNotification(color: )), name: colorNotification, object: nil)
    }
    @objc func colorChangedNotification(color: Notification){
        self.view.backgroundColor = .red
    }
    @IBAction func buttonNotification(_ sender: Any) {
        NotificationCenter.default.post(name: colorNotification, object: nil)
    }
    deinit {
        NotificationCenter.default.removeObserver(self, name: colorNotification, object: nil)
    }
}
