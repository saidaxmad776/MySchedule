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
        label.font = UIFont(name: "GillSans-Bold", size: 15)
        label.textAlignment = .left
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    private let teacherName: UILabel = {
        let label = UILabel()
        label.text = "Teacher name"
        label.textColor = .black
        label.font = UIFont(name: "GillSans-Bold", size: 15)
        label.textAlignment = .right
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    private let lessonTime: UILabel = {
        let label = UILabel()
        label.text = "8:00"
        label.textColor = .black
        label.font = UIFont(name: "GillSans-Bold", size: 15)
        label.textAlignment = .left
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    private let typeLabel: UILabel = {
        let label = UILabel()
        label.text = "type:"
        label.textColor = .black
        label.font = UIFont(name: "GillSans-Bold", size: 15)
        label.textAlignment = .right
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    private let lessonType: UILabel = {
        let label = UILabel()
        label.text = "leksiya"
        label.textColor = .black
        label.font = UIFont(name: "GillSans-Bold", size: 15)
        label.textAlignment = .left
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    private let buildingLabel: UILabel = {
        let label = UILabel()
        label.text = "Korpus"
        label.textColor = .black
        label.font = UIFont(name: "GillSans-Bold", size: 15)
        label.textAlignment = .right
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    private let lessonBuilding: UILabel = {
        let label = UILabel()
        label.text = "1"
        label.textColor = .black
        label.font = UIFont(name: "GillSans-Bold", size: 15)
        label.textAlignment = .left
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    private let audLabel: UILabel = {
        let label = UILabel()
        label.text = "Auditoriya"
        label.textColor = .black
        label.font = UIFont(name: "GillSans-Bold", size: 15)
        label.textAlignment = .right
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    private let lessonAud: UILabel = {
        let label = UILabel()
        label.text = "101"
        label.textColor = .black
        label.font = UIFont(name: "GillSans-Bold", size: 15)
        label.textAlignment = .left
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    private var stackViewTop = UIStackView()
    private var stackViewBottom = UIStackView()
    
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
        
        stackViewBottom = UIStackView(arrangedSubviews: [typeLabel, lessonType, buildingLabel,
                                                         lessonBuilding, audLabel, lessonAud],
                                      axis: .horizontal, spacing: 5,
                                      distributiom: .fillProportionally)
        addView(lessonTime)
        addView(stackViewBottom)
    }
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            stackViewTop.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            stackViewTop.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            stackViewTop.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            stackViewTop.heightAnchor.constraint(equalToConstant: 25),
            
            lessonTime.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            lessonTime.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            lessonTime.widthAnchor.constraint(equalToConstant: 100),
            lessonTime.heightAnchor.constraint(equalToConstant: 25),
            
            stackViewBottom.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            stackViewBottom.leadingAnchor.constraint(equalTo: lessonTime.trailingAnchor, constant: 5),
            stackViewBottom.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            stackViewBottom.heightAnchor.constraint(equalToConstant: 25),
            
        ])
    }
    
}
