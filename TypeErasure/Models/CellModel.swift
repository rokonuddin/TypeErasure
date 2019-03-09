//
//  CellModel.swift
//  TypeErasure
//
//  Created by Rokon Uddin on 2/28/19.
//  Copyright © 2019 Rokon Uddin. All rights reserved.
//

import UIKit.UITableViewCell

/// Cell `Interface`
protocol CellModel {
    /// PAT Placeholder for unknown Concrete Type `Model`
    associatedtype Cell: UITableViewCell
    /// Recieves a parameter of Concrete Type `Model`
    func tableViewDequeueReusableCell(_ tableView: UITableView) -> Cell
}

/// Wrapper `AnyCell`
struct AnyCell {
    private let _tableViewDequeueReusableCell: (_ tableView: UITableView) -> UITableViewCell
    
    init<Model: CellModel>(_ model: Model)  {
        self._tableViewDequeueReusableCell = model.tableViewDequeueReusableCell
    }
    
    /// Conforming to `AnyCell` protocol
    func tableViewDequeueReusableCell(_ tableView: UITableView) -> UITableViewCell {
        return _tableViewDequeueReusableCell(tableView)
    }
}

struct Section {
    let title: String
    let items: [AnyCell]
}
