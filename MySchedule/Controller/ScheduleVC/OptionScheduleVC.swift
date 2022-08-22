//
//  OptionScheduleVC.swift
//  MySchedule
//
//  Created by Test on 22/08/22.
//

import UIKit

class OptionScheduleVC: UITableViewController {
    
    let idOptionScheduleCell = "idOptionScheduleCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Option Schedule"
        setDelegate()
        setupView()
    }
    
    
    private func setupView() {
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: idOptionScheduleCell)
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
        let cell = tableView.dequeueReusableCell(withIdentifier: idOptionScheduleCell, for: indexPath)
        
        return cell
    }
   
}
