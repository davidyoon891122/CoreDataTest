//
//  TableView.swift
//  CoreDataTest
//
//  Created by David Yoon on 2021/08/21.
//

import UIKit

class TableView: UIView {
    

    let testLabel: UILabel = {
        let label = UILabel()
        label.text = "Test"
        label.textAlignment = .center
        label.textColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var tableView: UITableView!
    
    
    init(tableView: UITableView) {
        super.init(frame: .zero)
        self.tableView = tableView
        addSubviews()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func addSubviews() {
        addSubview(testLabel)
        addSubview(tableView)
    }
    
    
    
    override func updateConstraints() {
        super.updateConstraints()
        
        testLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
        testLabel.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 16).isActive = true
        testLabel.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: -16).isActive = true
        
        tableView.topAnchor.constraint(equalTo: testLabel.bottomAnchor, constant: 5).isActive = true
        tableView.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 16).isActive = true
        tableView.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: -16).isActive = true
        tableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -16).isActive = true

    }
    
    
}
