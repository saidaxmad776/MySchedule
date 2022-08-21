//
//  ScheduleTVC.swift
//  MySchedule
//
//  Created by Test on 21/08/22.
//

import UIKit

class ScheduleTVC: UITableViewCell {
    
    private let lessonName: UILabel = {
        let label = UILabel()
        label.text = "Lesson name"
        label.textColor = .black
        label.backgroundColor = .red
        label.font = UIFont(name: "GillSans-Bold", size: 15)
        label.textAlignment = .left
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    private let teacherName: UILabel = {
        let label = UILabel()
        label.text = "Teacher name"
        label.textColor = .black
        label.backgroundColor = .red
        label.font = UIFont(name: "GillSans-Bold", size: 15)
        label.textAlignment = .right
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    private var stackViewTop = UIStackView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupView()
        setConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        
        stackViewTop = UIStackView(arrangedSubviews: [lessonName, teacherName],
                                axis: .horizontal, spacing: 10, distributiom: .fillEqually)
        addView(stackViewTop)
    }
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            stackViewTop.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            stackViewTop.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            stackViewTop.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            stackViewTop.heightAnchor.constraint(equalToConstant: 25),
            
        ])
    }
    
}
