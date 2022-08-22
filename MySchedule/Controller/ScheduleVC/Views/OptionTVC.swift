//
//  OptionTVC.swift
//  MySchedule
//
//  Created by Test on 22/08/22.
//

import UIKit

class OptionTVC: UITableViewCell {
    
    let backgroundViewCell: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray2
        view.layer.cornerRadius = 10
        return view
    }()
    
    let repeatSwitch: UISwitch = {
        let swich = UISwitch()
        swich.isOn = true
        swich.isHidden = true
        swich.onTintColor = .red
        swich.addTarget(self, action: #selector(swichChange(paramTarget:)), for: .valueChanged)
        return swich
    }()
    
    let nameCellLabel = UILabel(text: "", font: UIFont(name: "GillSans-Bold", size: 15), alignment: .center, color: .black)
    
    let cellNameArray = [["Date", "Time"],
                         ["Name", "Type", "Building", "Audience"],
                         ["Teacher Name"],
                         ["", ""],
                         ["Repeat every 7 days"],
    
    ]
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupView()
        setConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func cellConfigure(indexPath: IndexPath) {
        nameCellLabel.text = cellNameArray[indexPath.section][indexPath.row]
        
        if indexPath == [3, 0] {
            backgroundViewCell.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        }
        
        if indexPath == [4, 0] {
            repeatSwitch.isHidden = false
        }
    }
    
    @objc private func swichChange(paramTarget: UISwitch) {
        
    }
    
    private func setupView() {
        
        backgroundColor = .clear
        
        addView(backgroundViewCell)
        backgroundViewCell.addView(nameCellLabel)
        contentView.addView(repeatSwitch)
    }
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
           
            backgroundViewCell.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            backgroundViewCell.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            backgroundViewCell.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            backgroundViewCell.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -1),
            
            nameCellLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            nameCellLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            repeatSwitch.centerYAnchor.constraint(equalTo: centerYAnchor),
            repeatSwitch.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
        ])
    }
    
}
