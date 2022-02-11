//
//  FirstVC.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 11.02.2022.
//

import UIKit
class FirstVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let session = Session.shared
        session.name = "Вероника"
        session.surname = "Курбанова"
    }
}
