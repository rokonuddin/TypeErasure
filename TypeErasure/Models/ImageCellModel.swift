//
//  ImageCellModel.swift
//  TypeErasure
//
//  Created by Rokon Uddin on 3/10/19.
//  Copyright © 2019 Rokon Uddin. All rights reserved.
//

import UIKit.UITableView

struct ImageCellModel: CellModel {
    internal let name: String
    
    init(_ name: String) {
        self.name = name
    }
    
    func tableViewDequeueReusableCell(_ tableView: UITableView) -> ImageTableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cell.id) as? Cell else {fatalError()}
        cell.titleLabel.text = self.name.capitalized
        cell.thumbImageView.image = UIImage(named: self.name)
        return cell
    }
}
