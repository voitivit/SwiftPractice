//
//  DelegateVIewController.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 22.02.2022.
//

import UIKit
class DelegateVIewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func delegateButton(_ sender: Any) {
        let segue = storyboard?.instantiateViewController(withIdentifier: "DataView") as! DataViewController
        segue.delegateColor = self
        present(segue, animated: true, completion: nil)
    }
}
extension DelegateVIewController: DelegateColor {
    func changedColor(color: UIColor?) {
        view.backgroundColor = color
    }
    
    
}
