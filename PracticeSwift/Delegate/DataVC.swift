//
//  DataVC.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 16.02.2022.
//

import UIKit
protocol DelegateColor: AnyObject {
    func colorChanged(color: UIColor?)
}
class DataVC: UIViewController {
    weak var deleagteColor: DelegateColor!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func dataButton(_ sender: Any) {
        deleagteColor.colorChanged(color: .red)
        dismiss(animated: true, completion: nil)
    }
}
