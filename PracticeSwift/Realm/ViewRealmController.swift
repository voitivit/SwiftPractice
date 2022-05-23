//
//  ViewRealmController.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 30.03.2022.
//

import UIKit
//https://www.youtube.com/watch?v=VKQ5CACt0_I
// Остановился 24:07




class ViewRealmController: UIViewController {
    let userTest = TestUser()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //KVC
       
        //Теперь добавим KVO (то есть key value observer) по сути это наблюдатель за объектом
        // options: [.new, .old] - это значения которые будем отслеживать (новый и старые данные)
        //userTest.addObserver(self, forKeyPath: #keyPath(TestUser.name), options: [.new, .old], context: nil)
        userTest.addObserver(self, forKeyPath: #keyPath(TestUser.name), options: [.old, .new], context: nil)
        
        
        
        userTest.setValue("Emil", forKey: "name")
        
        //можно использовать  #keyPath(TestUser.age) - для того, чтобы не писать и не вспоминать в классе свойства
        userTest.setValue("35", forKey: #keyPath(TestUser.age))
        
        print(userTest)
}
    //Убираем подписку обсервера
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        userTest.removeObserver(self, forKeyPath: #keyPath(TestUser.name))
    }
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        guard keyPath == #keyPath(TestUser.name) else {return}
        
        print("valueNew: \(change?[.newKey])")
        print("valueOld: \(change?[.oldKey])")
        
        
        
    }
    
    
    
    
    /*
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        // Здесь мы делаем проверку на то, что именно хотим искать по изменениям, в данном случае name
        //если так не сделать, он будет искать любое другое изменения
        guard keyPath == #keyPath(TestUser.name) else {return}
        print("newValue: \(change?[.newKey])")
        print("oldValue: \(change?[.oldKey])")
    }*/
}
