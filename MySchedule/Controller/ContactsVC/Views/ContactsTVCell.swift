//
//  ContactsTVCell.swift
//  MySchedule
//
//  Created by Test on 23/08/22.
//

import UIKit

class ContactsTVCell: UITableViewCell {
    
    let contactImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "person")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let phoneImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "phone.fill.badge.plus")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let mailImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "envelope.badge")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let nameLabel = UILabel(text: "Name Person",
                            font: UIFont(name: "GillSans-Bold", size: 15), alignment: .left, color: .black)
    let phoneNumber = UILabel(text: "+9989 901114100",
                            font: UIFont(name: "GillSans-Bold", size: 15), alignment: .left, color: .black)
    let mailLabel = UILabel(text: "name@gmail.com",
                            font: UIFont(name: "GillSans-Bold", size: 15), alignment: .left, color: .black)
    
    private var stackViewLabel = UIStackView()
    
    override func layoutIfNeeded() {
        super.layoutIfNeeded()
        
        contactImageView.layer.cornerRadius = contactImageView.frame.height / 2
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupView()
        setConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
    private func setupView() {
        selectionStyle = .none
        
        addView(contactImageView)
        addView(nameLabel)
        
        stackViewLabel = UIStackView(arrangedSubviews: [phoneImageView, phoneNumber, mailImageView, mailLabel], axis: .horizontal, spacing: 3, distributiom: .equalSpacing)
        
        addView(stackViewLabel)
    }
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            
            contactImageView.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            contactImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            contactImageView.widthAnchor.constraint(equalToConstant: 70),
            contactImageView.heightAnchor.constraint(equalToConstant: 70),
            
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 15),
            nameLabel.leadingAnchor.constraint(equalTo: contactImageView.trailingAnchor, constant: 10),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            nameLabel.heightAnchor.constraint(equalToConstant: 21),
            
            stackViewLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            stackViewLabel.leadingAnchor.constraint(equalTo: contactImageView.trailingAnchor, constant: 10),
            stackViewLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            stackViewLabel.heightAnchor.constraint(equalToConstant: 21),
            
        ])
    }
    
}
