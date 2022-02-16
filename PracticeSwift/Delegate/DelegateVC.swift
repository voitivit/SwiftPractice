//
//  DelegateVC.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 16.02.2022.
//

import UIKit
class DelegateVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func delegateButton(_ sender: Any) {
        let segue = storyboard?.instantiateViewController(withIdentifier: "Data") as! DataVC
        segue.deleagteColor = self
        present(segue, animated: true, completion: nil)
    }
}
extension DelegateVC: DelegateColor{
    func colorChanged(color: UIColor?) {
        view.backgroundColor = color
    }
    
    
}
