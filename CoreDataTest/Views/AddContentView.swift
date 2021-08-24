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
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var titletTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Title"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .blue
        addSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func addSubviews() {
        self.addSubview(titletLabel)
        self.addSubview(titletTextField)
    }
    
    
    
    override func updateConstraints() {
        super.updateConstraints()
        
        titletLabel.topAnchor.constraint(equalTo: self.topAnchor,constant: 10).isActive = true
        titletLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        
        titletTextField.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        titletTextField.leftAnchor.constraint(equalTo: titletLabel.rightAnchor, constant: 5).isActive = true
        
    }
}
