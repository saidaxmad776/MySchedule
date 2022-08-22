//
//  TasksTVC.swift
//  MySchedule
//
//  Created by Test on 22/08/22.
//

import UIKit

class TasksTVC: UITableViewCell {
    
    
    private let tasksName = UILabel(text: "Lesson",
                                    font: UIFont(name: "GillSans-Bold", size: 15), alignment: .left, color: .black)
    
    private let tasksDescription = UILabel(text: "Name tasks",
                                           font: UIFont(name: "GillSans-Bold", size: 15), alignment: .left, color: .black)
    
    private let readyButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(systemName: "chevron.down.circle"), for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: #selector(readyButtonTap), for: .touchUpInside)
        return button
    }()
    
    private var stackViewLabel = UIStackView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupView()
        setConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func readyButtonTap() {
        
    }
    
    private func setupView() {
        
        contentView.addView(readyButton)
        
        stackViewLabel = UIStackView(arrangedSubviews: [tasksName, tasksDescription],
                                     axis: .vertical, spacing: 10, distributiom: .fillEqually)
        addView(stackViewLabel)
    }
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            
            readyButton.centerYAnchor.constraint(equalTo: centerYAnchor),
            readyButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            readyButton.heightAnchor.constraint(equalToConstant: 40),
            readyButton.widthAnchor.constraint(equalToConstant: 40),
            
            stackViewLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            stackViewLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            stackViewLabel.trailingAnchor.constraint(equalTo: readyButton.leadingAnchor, constant: 20),
            
        ])
    }
    
}
