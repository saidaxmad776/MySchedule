//
//  OptionHTC.swift
//  MySchedule
//
//  Created by Test on 22/08/22.
//

import UIKit

class OptionHTC: UITableViewHeaderFooterView {
    
    let headerLabel = UILabel(text: "Header", font: UIFont(name: "GillSans-Bold", size: 15), alignment: .left, color: .black)
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        
        setupView()
        setConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        
        addView(headerLabel)
       
    }
    
    func headerConfigure(nameArray: [String], section: Int) {
         headerLabel.text = nameArray[section]
    }
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([

            headerLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25),
            headerLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            
        ])
    }
}
