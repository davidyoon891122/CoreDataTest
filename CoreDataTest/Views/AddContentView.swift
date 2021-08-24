//
//  AddContentView.swift
//  CoreDataTest
//
//  Created by David Yoon on 2021/08/24.
//

import UIKit

class AddContentView: UIView {

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
        
        return button
    }()
    
    
    
    
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
        
    }
}
