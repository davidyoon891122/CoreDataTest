//
//  AddContentView.swift
//  CoreDataTest
//
//  Created by David Yoon on 2021/08/24.
//

import UIKit

class AddContentView: UIView {

    var todoVM = TodoViewModel()
    
    weak var delegate: TodoProtocol?
    
    
    lazy var titletLabel:UILabel = {
        let label = UILabel()
        label.text = "Title: "
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var titleTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Title"
        textField.textColor = .white
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var contentLabel: UILabel = {
        let label = UILabel()
        label.text = "Contents: "
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var contentTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Contents"
        textField.textColor = .white
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var addButton: UIButton = {
        let button = UIButton()
        button.setTitle("ADD", for: .normal)
        button.layer.borderWidth = 2.0
        button.layer.borderColor = UIColor.white.cgColor
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.addTarget(self, action:#selector(addTodo), for: .touchUpInside)
        return button
    }()
    
    
    @objc func addTodo() {
        print("clicked")
        let addedTodo = Todo(title: titleTextField.text ?? "nil", contents: contentTextField.text ?? "nil")
        //todoVM.addTodoList(todo: addedTodo);
        delegate?.addTodo(todo: addedTodo)
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .gray
        addSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func addSubviews() {
        self.addSubview(titletLabel)
        self.addSubview(titleTextField)
        self.addSubview(contentLabel)
        self.addSubview(contentTextField)
        self.addSubview(addButton)
    }
    
    
    
    override func updateConstraints() {
        super.updateConstraints()
        
        titletLabel.topAnchor.constraint(equalTo: self.topAnchor,constant: 20).isActive = true
        titletLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        
        titleTextField.topAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
        titleTextField.leftAnchor.constraint(equalTo: titletLabel.rightAnchor, constant: 5).isActive = true
        
        contentLabel.topAnchor.constraint(equalTo: titletLabel.bottomAnchor, constant: 20).isActive = true
        contentLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        
        contentTextField.topAnchor.constraint(equalTo: titleTextField.bottomAnchor, constant: 20).isActive = true
        contentTextField.leftAnchor.constraint(equalTo: contentLabel.rightAnchor, constant: 5).isActive = true
        
        addButton.topAnchor.constraint(equalTo: contentLabel.bottomAnchor, constant: 20).isActive = true
        addButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 150).isActive = true
        addButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
    }
}
