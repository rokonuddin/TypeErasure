//
//  ImageCellModel.swift
//  TypeErasure
//
//  Created by Rokon Uddin on 3/10/19.
//  Copyright © 2019 Rokon Uddin. All rights reserved.
//

import UIKit.UITableView

struct ImageCellModel: CellModel {
    internal let title: String
    private let value: String
    
    init(_ title: String, value: String) {
        self.title = title.capitalized
        self.value = value
    }
    
    func tableViewDequeueReusableCell(_ tableView: UITableView) -> ImageTableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cell.id) as? Cell else {fatalError()}
        cell.titleLabel.text = self.title
        cell.thumbImageView.image = UIImage(named: self.value)
        return cell
    }
}
