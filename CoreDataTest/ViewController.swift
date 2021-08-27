//
//  ViewController.swift
//  CoreDataTest
//
//  Created by David Yoon on 2021/08/21.
//

import UIKit
import CoreData

class ViewController: UIViewController{

    var container: NSPersistentContainer!
    
    lazy var mainView = TableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        setLayouts()
        
    }
    
        
    
    func addSubviews() {
        view.addSubview(mainView)
    }
    
    func setLayouts() {
        mainView.translatesAutoresizingMaskIntoConstraints = false
        mainView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        mainView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        mainView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        mainView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
    }
    
    
    


}

