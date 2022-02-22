//
//  DataViewController.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 22.02.2022.
//

import UIKit
protocol DelegateColor: AnyObject {
    func changedColor(color: UIColor?)
}
class DataViewController: UIViewController {
    weak var delegateColor: DelegateColor!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func dataButton(_ sender: Any) {
        self.delegateColor.changedColor(color: .red)
        dismiss(animated: true, completion: nil)
    }
}
