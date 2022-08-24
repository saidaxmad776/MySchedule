//
//  ContactsVC.swift
//  MySchedule
//
//  Created by Test on 20/08/22.
//

import UIKit

class ContactsVC: BaseController {

    let searchController = UISearchController()
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.showsVerticalScrollIndicator = false
        tableView.separatorInset = .zero
        tableView.separatorColor = .red
        return tableView
    }()
    
    let idContactCell = "idContactCell"
    

    
    override func setupView() {
        super.setupView()

        searchController.searchBar.placeholder = "Search"
        navigationItem.searchController = searchController
        
        view.addView(tableView)
        tableView.register(ContactsTVCell.self, forCellReuseIdentifier: idContactCell)
        
    }
    
    override func setDelegate() {
        super.setDelegate()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
        ])
    }
    
    override func configure() {
        super.configure()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonTap))
    }
    
    @objc private func addButtonTap() {
        let contactsOptionTBV = ContactsOptionTBV()
        navigationController?.pushViewController(contactsOptionTBV, animated: true)
    }
    
}

extension ContactsVC: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: idContactCell, for: indexPath) as! ContactsTVCell
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("ok")
    }
    
}
