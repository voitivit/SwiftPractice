//
//  FirstViewController.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 04.02.2022.
//

import UIKit
class FirstViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let session = Session.shared
        session.name = "Вероника"
        session.surname = "Курбанова"
    }
}
