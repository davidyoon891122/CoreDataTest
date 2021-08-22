//
//  ViewController.swift
//  CoreDataTest
//
//  Created by David Yoon on 2021/08/21.
//

import UIKit

class ViewController: UIViewController{
    
    
    let tableView = TableView()
    
    
//    let textLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Test"
//        label.textAlignment = .center
//        label.backgroundColor = .red
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//
    

    override func viewDidLoad() {
        super.viewDidLoad()
       // view.addSubview(textLabel)
        view.addSubview(tableView)
        
//        textLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
//        textLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
//        textLabel.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
//
//
        //tableView.topAnchor.constraint(equalTo: textLabel.bottomAnchor).isActive = true
        
        
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
       
    }


}

