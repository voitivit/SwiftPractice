//
//  DataViewController.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 09.03.2022.
//

import UIKit
protocol DelegateColor: AnyObject {
    func getColor(color: UIColor?)
}
class DataViewController: UIViewController {
    weak var delegateColor: DelegateColor!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func buttonData(_ sender: Any) {
        self.delegateColor.getColor(color: .yellow)
        dismiss(animated: true, completion: nil)
    }
}

