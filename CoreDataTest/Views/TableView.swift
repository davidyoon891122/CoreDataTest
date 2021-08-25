//
//  TableView.swift
//  CoreDataTest
//
//  Created by David Yoon on 2021/08/21.
//

import UIKit

class TableView: UIView, UITableViewDelegate, UITableViewDataSource, TodoProtocol{
    
    var todoList = [Todo]() {
        didSet {
            tableView.reloadData()
            for todo in todoList {
                print(todo.title)
            }
        }
    }
    
    let testLabel: UILabel = {
        let label = UILabel()
        label.text = "Test"
        label.textAlignment = .center
        label.textColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
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
    
    
    var addContentView = AddContentView()
    
    
    
    init() {
        super.init(frame: .zero)
        
        addContentView.delegate = self
        addSubviews()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func addSubviews() {
        addSubview(testLabel)
        addSubview(tableView)
        addSubview(addContentView)
    }
    
    
    
    override func updateConstraints() {
        super.updateConstraints()
        
        testLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
        testLabel.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 16).isActive = true
        testLabel.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: -16).isActive = true
        
        addContentView.translatesAutoresizingMaskIntoConstraints = false
        addContentView.topAnchor.constraint(equalTo: testLabel.bottomAnchor, constant: 5).isActive = true
        addContentView.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor).isActive = true
        addContentView.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor).isActive = true
        addContentView.heightAnchor.constraint(equalToConstant: 146).isActive = true
        
        tableView.topAnchor.constraint(equalTo: addContentView.bottomAnchor, constant: 5).isActive = true
        tableView.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 16).isActive = true
        tableView.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: -16).isActive = true
        tableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -16).isActive = true

    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "testCell") as! TableViewCell
        cell.titleLabel.text = todoList[indexPath.row].title
        cell.contentLabel.text = todoList[indexPath.row].title
        
        return cell
    }

    func addTodo(todo: Todo) {
        todoList.append(todo)
    }
    
    
    
    
}
