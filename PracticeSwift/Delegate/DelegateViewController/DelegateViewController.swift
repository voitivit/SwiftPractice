//
//  DelegateViewController.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 09.03.2022.
//

import UIKit
class DelegateViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
    
    @IBAction func buttonDelegate(_ sender: Any) {
        let segue = storyboard?.instantiateViewController(withIdentifier: "Delegate") as! DataViewController
        segue.delegateColor = self
        present(segue, animated: true, completion: nil)
        
    }
}

extension DelegateViewController: DelegateColor {
    func getColor(color: UIColor?) {
        self.view.backgroundColor = color
    }
    
    
}
