//
//  SecondVC.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 11.02.2022.
//

import UIKit
class SecondVC: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let session = Session.shared
        nameLabel.text = session.name
        surnameLabel.text = session.surname
    }
}
