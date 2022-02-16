//
//  UIPractice.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 16.02.2022.
//

import UIKit
class UIPractice: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIButton(frame: .init(x: 150, y: 350, width: 100, height: 50))
        button.backgroundColor = .black
        button.setTitleColor(.red, for: .normal)
        button.setTitle("Нажми", for: .normal)
        button.addTarget(self, action: #selector(buttonTarget(sender: )), for: .touchUpInside)
        view.addSubview(button)
        
    }
    @objc func buttonTarget(sender: UIButton){
        print("Нажал")
    }
}
