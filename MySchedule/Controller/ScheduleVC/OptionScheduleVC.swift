//
//  OptionScheduleVC.swift
//  MySchedule
//
//  Created by Test on 22/08/22.
//

import UIKit

class OptionScheduleVC: UITableViewController {
    
    let idOptionScheduleCell = "idOptionScheduleCell"
    let idOptionScheduleHeder = "idOptionScheduleHeder"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Option Schedule"
        setDelegate()
        setupView()
    }
    
    
    private func setupView() {
        
        tableView.backgroundColor = .systemGray5
        tableView.separatorStyle = .none
        tableView.register(OptionTVC.self, forCellReuseIdentifier: idOptionScheduleCell)
        tableView.register(OptionHTC.self, forHeaderFooterViewReuseIdentifier: idOptionScheduleHeder)
    }
    
    private func setDelegate() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        5
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return 2
        case 1: return 4
        case 2: return 1
        case 3: return 1
        default:
            return 1
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: idOptionScheduleCell, for: indexPath) as! OptionTVC
        cell.selectionStyle = .none
        cell.cellConfigure(indexPath: indexPath)
        return cell
    }
   
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: idOptionScheduleHeder) as! OptionHTC
        header.headerConfigure(section: section)
        return header
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell = tableView.cellForRow(at: indexPath) as! OptionTVC
        
        switch indexPath {
        case [0,0]: alertDate(label: cell.nameCellLabel) { (numberWeekday, date) in
            print(numberWeekday, date)
        }
        case [0,1]: alertTime(label: cell.nameCellLabel) { (date) in
            print(date)
        }
        case [1,0]: alertCellName(label: cell.nameCellLabel, name: "Name Lesson", placeHolder: "Enter name lesson")
        case [1,1]: alertCellName(label: cell.nameCellLabel, name: "Type lesson", placeHolder: "Enter type lesson")
        case [1,2]: alertCellName(label: cell.nameCellLabel, name: "Building number", placeHolder: "Enter type lesson")
        case [1,3]: alertCellName(label: cell.nameCellLabel, name: "Building number", placeHolder: "Enter type lesson")
        
        default: print("ok")
        }
    }
}
