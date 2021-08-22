//
//  TableViewCell.swift
//  CoreDataTest
//
//  Created by David Yoon on 2021/08/21.
//

import UIKit

class TableViewCell: UITableViewCell{
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Title"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let contentLabel: UILabel = {
        let label = UILabel()
        label.text = "Contents"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: "testCell")
        self.addSubview(titleLabel)
        self.addSubview(contentLabel)
        titleLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        
        contentLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor).isActive = true
        contentLabel.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        contentLabel.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
