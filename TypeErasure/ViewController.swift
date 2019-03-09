//
//  ViewController.swift
//  TypeErasure
//
//  Created by Rokon Uddin on 2/28/19.
//  Copyright © 2019 Rokon Uddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    let sections = Data.sections
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(TextTableViewCell.cellNib, forCellReuseIdentifier: TextTableViewCell.id)
        tableView.register(ImageTableViewCell.cellNib, forCellReuseIdentifier: ImageTableViewCell.id)
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 100
    }
}

/// TableViewDataSource
extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let items = sections[indexPath.section].items
        let item = items[indexPath.row]
        return item.tableViewDequeueReusableCell(tableView)
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section].title
    }
}
