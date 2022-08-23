//
//  ScheduleColorVC.swift
//  MySchedule
//
//  Created by Test on 23/08/22.
//

import UIKit

class ScheduleColorVC: UITableViewController {
    
    let idScheduleColorCell = "idScheduleColorCell"
    let idOptionsHeder = "idOptionScheduleHeder"
    
    let headerNameArray = ["1", "2", "3", "4", "5", "6", "7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Color Schedule"
        setDelegate()
        setupView()
    }
    
    
    private func setupView() {
        
        tableView.backgroundColor = .systemGray5
        tableView.separatorStyle = .none
        tableView.register(ColorTVC.self, forCellReuseIdentifier: idScheduleColorCell)
        tableView.register(OptionHTC.self, forHeaderFooterViewReuseIdentifier: idOptionsHeder)
    }
    
    private func setDelegate() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        7
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 1
        }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: idScheduleColorCell, for: indexPath) as! ColorTVC
        cell.selectionStyle = .none
        cell.cellConfigure(indexPath: indexPath)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: idOptionsHeder) as! OptionHTC
        header.headerConfigure(nameArray: headerNameArray, section: section)
        return header
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        
    }
    
}


