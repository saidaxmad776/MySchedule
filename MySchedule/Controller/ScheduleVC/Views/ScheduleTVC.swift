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
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) { [self] in
            setConstraints()
        }
        
        setupView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        
        
        addView(lessonName)
        addView(teacherName)
    }
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            lessonName.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            lessonName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            lessonName.widthAnchor.constraint(equalToConstant: frame.width / 2 - 10),
            lessonName.heightAnchor.constraint(equalToConstant: 25),
            
            teacherName.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            teacherName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            teacherName.widthAnchor.constraint(equalToConstant: frame.width / 2 - 10),
            teacherName.heightAnchor.constraint(equalToConstant: 25),
        ])
    }
    
}
