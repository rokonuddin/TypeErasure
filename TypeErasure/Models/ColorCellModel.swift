//
//  ColorCellModel.swift
//  TypeErasure
//
//  Created by Rokon Uddin on 3/10/19.
//  Copyright © 2019 Rokon Uddin. All rights reserved.
//

import UIKit.UITableView

struct ColorCellModel: CellModel {
    private let title: String
    private let value: String
    
    init(_ title: String, value: String) {
        self.title = title
        self.value = value
    }
    
    func tableViewDequeueReusableCell(_ tableView: UITableView) -> ColorTableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cell.id) as? Cell else {fatalError()}
        cell.textLabel?.text = self.title
        return cell
    }
}
