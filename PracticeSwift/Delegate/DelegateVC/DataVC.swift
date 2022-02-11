//
//  DataVC.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 11.02.2022.
//

import UIKit
protocol ColorDelegate: AnyObject {
    func colorChange(color: UIColor?)
}
class DataVC: UIViewController {
    weak var colorDelegate: ColorDelegate!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonData(_ sender: Any) {
        self.colorDelegate.colorChange(color: .red)
        dismiss(animated: true, completion: nil)
    }
}
