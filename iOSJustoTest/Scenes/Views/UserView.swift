//
//  UserView.swift
//  iOSJustoTest
//
//  Created by Alan Muñoz on 14/07/22.
//

import UIKit


class UserView: UIView {
    
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.rowHeight = 100.0
        return tableView
    }()
    
    
    override init(frame: CGRect) {
        //tableView = UITableView()
        
        super.init(frame: frame)
        
        initComponents()
        initConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initComponents() {
        addSubviewWithAutoLayout(tableView)
    }
    func initConstraints() {
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.topAnchor.constraint(equalTo: topAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor)
            ])
        
    }
    
}
