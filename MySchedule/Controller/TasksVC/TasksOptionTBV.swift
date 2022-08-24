//
//  TasksOptionTBV.swift
//  MySchedule
//
//  Created by Test on 23/08/22.
//

import UIKit

class TasksOptionTBV: UITableViewController {
    
    let idOptionTasksCell = "idOptionTasksCell"
    let idOptionTasksHeder = "idOptionTasksHeder"
    
    let headerNameArray = ["DATE", "LESSON", "Tasks", "COLOR"]
    
    let cellNameArray = ["Date", "Lesson", "Task", ""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Option Tasks"
        setDelegate()
        setupView()
    }
    
    
    private func setupView() {
        
        tableView.backgroundColor = .systemGray5
        tableView.separatorStyle = .none
        tableView.register(OptionTVC.self, forCellReuseIdentifier: idOptionTasksCell)
        tableView.register(OptionHTC.self, forHeaderFooterViewReuseIdentifier: idOptionTasksHeder)
    }
    
    private func setDelegate() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        4
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: idOptionTasksCell, for: indexPath) as! OptionTVC
        cell.selectionStyle = .none
        cell.cellTasksConfigure(nameAray: cellNameArray, indexPath: indexPath)
        return cell
    }
   
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: idOptionTasksHeder) as! OptionHTC
        header.headerConfigure(nameArray: headerNameArray, section: section)
        return header
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell = tableView.cellForRow(at: indexPath) as! OptionTVC
        
        switch indexPath.section {
        case 0: alertDate(label: cell.nameCellLabel) { (numberWeekday, date) in
            print(numberWeekday, date) }
        case 1: alertCellName(label: cell.nameCellLabel, name: "Name Lesson", placeHolder: "Enter name lesson") { text in
            print(text)
        }
        case 2: alertCellName(label: cell.nameCellLabel, name: "Type lesson", placeHolder: "Enter type lesson") { text in
            print(text)
        }
        case 3: pushController(vc: ColorTasksTBV())
        default: print("ok")
        }
        
        func pushController(vc: UIViewController) {
            let viewController = vc
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
}
