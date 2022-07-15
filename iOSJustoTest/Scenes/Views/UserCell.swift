//
//  UserCell.swift
//  iOSJustoTest
//
//  Created by Alan Muñoz on 14/07/22.
//

import UIKit

class UserCell: UITableViewCell {
    
    static let cellId = "UserCell"
    
    let userNameLabel: UILabel = {
        let firstNameLabel = UILabel()
        firstNameLabel.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        firstNameLabel.numberOfLines = 0
        return firstNameLabel
    }()
    
    let userLastNameLabel: UILabel = {
        let lastNameLabel = UILabel()
        lastNameLabel.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        lastNameLabel.numberOfLines = 0
        return lastNameLabel
    }()
    
    let userImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy private var stackView: UIStackView = {
       let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.addArrangedSubview(userNameLabel)
        stackView.addArrangedSubview(userLastNameLabel)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private struct ViewProperties {
        static let margin: CGFloat = 14.0
    }
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .clear
        layer.masksToBounds = false
        layer.shadowOpacity = 0.23
        layer.shadowRadius = 4
        layer.shadowOffset = CGSize(width: 0, height: 0)
        layer.shadowColor = UIColor.black.cgColor
    
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 8
        
        initComponents()
        initConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initComponents() {
        contentView.addSubviewWithAutoLayout(userImage)
        contentView.addSubviewWithAutoLayout(stackView)
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        if isSelected {
            contentView.backgroundColor = .clear
            backgroundColor = .clear
        }
    }
    
    func initConstraints() {
        NSLayoutConstraint.activate([
            userImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,
                                               constant: 10),
            userImage.topAnchor.constraint(equalTo: contentView.topAnchor,
                                           constant: 10),
            userImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,
                                              constant: -10),
            userImage.widthAnchor.constraint(equalToConstant: 60),
            userImage.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: userImage.trailingAnchor,
                                               constant: 10),
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor,
                                           constant: 15),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,
                                              constant: -15),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 10)
        ])
        
        
        
    }
    
}
