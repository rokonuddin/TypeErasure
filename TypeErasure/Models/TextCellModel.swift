//
//  TextCellModel.swift
//  TypeErasure
//
//  Created by Rokon Uddin on 3/10/19.
//  Copyright © 2019 Rokon Uddin. All rights reserved.
//

import UIKit.UITableView

struct TextCellModel: CellModel {
    internal let quote: String
    private let author: String
    
    init(_ quote: String, author: String) {
        self.quote = quote
        self.author = author
    }
    
    func tableViewDequeueReusableCell(_ tableView: UITableView) -> TextTableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cell.id) as? Cell else {fatalError()}
        cell.titleLabel?.text = self.quote
        cell.subtitleLabel?.text = self.author
        return cell
    }
}
