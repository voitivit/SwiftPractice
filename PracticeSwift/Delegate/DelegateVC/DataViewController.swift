//
//  DataViewController.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 04.02.2022.
//

import UIKit
protocol ColorDelegate: AnyObject {
    func colorChanges(color: UIColor?)
}
class DataViewController: UIViewController {
    weak var colorDelegate: ColorDelegate!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func dataButton(_ sender: Any) {
        self.colorDelegate.colorChanges(color: .red)
        dismiss(animated: true, completion: nil)
    }
}
