//
//  DelegateViewController.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 04.02.2022.
//

import UIKit
class DelegateViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
    }
    
    @IBAction func buttonDelegate(_ sender: Any) {
        let segue = storyboard?.instantiateViewController(withIdentifier: "Data") as! DataViewController
        segue.colorDelegate = self
        present(segue, animated: true, completion: nil)
    }
}
extension DelegateViewController: ColorDelegate {
    func colorChanges(color: UIColor?) {
        view.backgroundColor = color
    }
}
