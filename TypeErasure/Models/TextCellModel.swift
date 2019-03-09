//
//  TextCellModel.swift
//  TypeErasure
//
//  Created by Rokon Uddin on 3/10/19.
//  Copyright © 2019 Rokon Uddin. All rights reserved.
//

import UIKit.UITableView

struct TextCellModel: CellModel {
    internal let title: String
    private let subTitle: String
    
    init(_ title: String, subTitle: String) {
        self.title = title
        self.subTitle = subTitle
    }
    
    func tableViewDequeueReusableCell(_ tableView: UITableView) -> TextTableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cell.id) as? Cell else {fatalError()}
        cell.textLabel?.text = self.title
        return cell
    }
}
