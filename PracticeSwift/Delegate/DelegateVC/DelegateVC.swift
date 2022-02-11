//
//  DelegateVC.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 11.02.2022.
//

import UIKit
class DelegateVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
    }
    
    @IBAction func buttonColorDelegate(_ sender: Any) {
        let segue = storyboard?.instantiateViewController(withIdentifier: "Data") as! DataVC
        segue.colorDelegate = self
        present(segue, animated: true, completion: nil)
    }
}
extension DelegateVC: ColorDelegate {
    func colorChange(color: UIColor?) {
        self.view.backgroundColor = color
    }
    
    
}
