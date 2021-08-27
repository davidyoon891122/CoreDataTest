//
//  TableView.swift
//  CoreDataTest
//
//  Created by David Yoon on 2021/08/21.
//

import UIKit

class TableView: UIView, UITableViewDelegate, UITableViewDataSource, TodoProtocol{
    var todoVM = TodoViewModel() {
        didSet{
            tableView.reloadData()
        }
    }
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    private var todoLists = [TodoListItem]()
    
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
        getAllItem()
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
        return todoLists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "testCell") as! TableViewCell
        cell.titleLabel.text = todoLists[indexPath.row].title
        cell.contentLabel.text = todoLists[indexPath.row].contents
        
        return cell
    }
    
    
    func addTodo(todo: Todo) {
        self.creatItem(title: todo.title, contents: todo.contents)
    }
    
    
    // CoreData
    
    func getAllItem() {
        do{
            todoLists = try context.fetch(TodoListItem.fetchRequest())
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func creatItem(title: String, contents: String) {
        let newItem = TodoListItem(context: context)
        newItem.title = title
        newItem.contents = contents
        
        do {
            try context.save()
            getAllItem()
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func deleteItem(item: TodoListItem) {
        context.delete(item)
        do {
            try context.save()
            getAllItem()
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func updateItem(item: TodoListItem, newTitle: String, newContents: String) {
        item.title = newTitle
        item.contents = newContents
        
        do {
            try context.save()
            getAllItem()
        } catch {
            print(error.localizedDescription)
        }
    }
    
    
}
