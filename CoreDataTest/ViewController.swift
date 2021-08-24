//
//  ViewController.swift
//  CoreDataTest
//
//  Created by David Yoon on 2021/08/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "testCell")
        tableView.rowHeight = 70
        tableView.estimatedRowHeight = UITableView.automaticDimension
        return tableView
    }()
    
    lazy var mainView: UIView = {
        return TableView(tableView: self.tableView)
    }()

    
    var todoVM = TodoViewModel()



    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        setLayouts()
        
        self.view.layoutIfNeeded()
            


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
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "testCell") as! TableViewCell
        return cell
    }


}

