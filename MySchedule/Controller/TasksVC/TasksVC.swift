//
//  TasksVC.swift
//  MySchedule
//
//  Created by Test on 20/08/22.
//

import UIKit
import FSCalendar

class TasksVC: BaseController {
    
    var calendarHeightConstraints: NSLayoutConstraint!
    
    private var calendar: FSCalendar = {
        let calendar = FSCalendar()
        calendar.scope = .week
        calendar.backgroundColor = .quaternarySystemFill
        return calendar
    }()
    
   private let showHideButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .red
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.cornerRadius = 10
        button.tintColor = .black
        button.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        button.setImage(UIImage(systemName: "chevron.compact.down"), for: .normal)
        button.addTarget(self, action: #selector(showHideTapBTN), for: .touchUpInside)
        return button
    }()
    
    private let idTasksCell = "idTasksCell"
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.bounces = false
        tableView.showsVerticalScrollIndicator = false
        tableView.separatorInset = .zero
        tableView.separatorColor = .red
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        swipeAction()
    }
    
    @objc private func showHideTapBTN() {
        
        if calendar.scope == .week {
            calendar.setScope(.month, animated: true)
            showHideButton.setImage(UIImage(systemName: "chevron.compact.up"), for: .normal)
        } else {
            calendar.setScope(.week, animated: true)
            showHideButton.setImage(UIImage(systemName: "chevron.compact.down"), for: .normal)
        }
    }
    
    private func swipeAction() {
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe))
        swipeUp.direction = .up
        calendar.addGestureRecognizer(swipeUp)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe))
        swipeDown.direction = .down
        calendar.addGestureRecognizer(swipeDown)
        
    }
    
    @objc private func handleSwipe(gesture: UISwipeGestureRecognizer) {
        
        switch gesture.direction {
        case .up:
            showHideTapBTN()
        case .down:
            showHideTapBTN()
        default:
            break
        }
    }
}

extension TasksVC {
    
    override func setupView() {
        super.setupView()
        
        view.addView(calendar)
        view.addView(showHideButton)
        
        view.addView(tableView)
        tableView.register(TasksTVC.self, forCellReuseIdentifier: idTasksCell)
    }
    
    override func setDelegate() {
        super.setDelegate()
        tableView.delegate = self
        tableView.dataSource = self
        
        calendar.delegate = self
        calendar.dataSource = self
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        calendarHeightConstraints = NSLayoutConstraint(item: calendar, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 300)
        calendar.addConstraint(calendarHeightConstraints)
        
        NSLayoutConstraint.activate([
            calendar.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            calendar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            calendar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            
            showHideButton.topAnchor.constraint(equalTo: calendar.bottomAnchor, constant: 0),
            showHideButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            showHideButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            showHideButton.heightAnchor.constraint(equalToConstant: 20),
            
            tableView.topAnchor.constraint(equalTo: showHideButton.bottomAnchor, constant: 10),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
        ])
    }
    
    override func configure() {
        super.configure()
        
        title = R.Strings.NavBar.session
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .session)
    }
}

extension TasksVC: FSCalendarDataSource, FSCalendarDelegate {
    
    func calendar(_ calendar: FSCalendar, boundingRectWillChange bounds: CGRect, animated: Bool) {
        calendarHeightConstraints.constant = bounds.height
        view.layoutIfNeeded()
    }
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        print(date)
    }
}

extension TasksVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: idTasksCell, for: indexPath) as! TasksTVC
        cell.selectionStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
  
}
