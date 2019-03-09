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
    private lazy var sections: [TableSection] = {
        let rose = ImageCellModel("rose", value: "rose")
        let tulip = ImageCellModel("tulip", value: "tulip")
        let cyclamen = ImageCellModel("cyclamen", value: "cyclamen")
        let hydrangea = ImageCellModel("hydrangea", value: "hydrangea")
        let orchid = ImageCellModel("orchid", value: "orchid")
        let text = TextCellModel("Hello", subTitle: "World")
        
        return [TableSection.text(items: [text].map {AnyCell($0)}),
                TableSection.image(items: [orchid, cyclamen, rose, tulip, hydrangea].map { AnyCell($0) })]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(TextTableViewCell.cellNib, forCellReuseIdentifier: TextTableViewCell.id)
        tableView.register(ImageTableViewCell.cellNib, forCellReuseIdentifier: ImageTableViewCell.id)
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 50
    }
}

/// TableViewDataSource
extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch sections[section] {
        case .text(let items):
            return items.count
        case .image(let items):
            return items.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch sections[indexPath.section] {
        case .text(let items):
            let item = items[indexPath.row]
            return item.tableViewDequeueReusableCell(tableView)
        case .image(let items):
            let item = items[indexPath.row]
            return item.tableViewDequeueReusableCell(tableView)
        }
    }
}
