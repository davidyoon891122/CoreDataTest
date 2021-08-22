//
//  TableView.swift
//  CoreDataTest
//
//  Created by David Yoon on 2021/08/21.
//

import UIKit

class TableView: UIView, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "testCell") as! TableViewCell
        
        
        return cell
    }
    
    
    let tableView: UITableView = {
        let table = UITableView()
        table.backgroundColor = .yellow
        table.register(TableViewCell.self, forCellReuseIdentifier: "testCell")
        return table
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(tableView)
        tableView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
