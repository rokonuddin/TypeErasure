//
//  Cellable.swift
//  TypeErasure
//
//  Created by Rokon Uddin on 2/28/19.
//  Copyright © 2019 Rokon Uddin. All rights reserved.
//

import UIKit

protocol Cellable {
    static var id: String { get }
    static var cellNib: UINib { get }
}

extension Cellable {
    
    static var id: String {
        return String(describing: Self.self)
    }
    
    static var cellNib: UINib {
        return UINib(nibName: id, bundle: nil)
    }
}

extension UITableViewCell: Cellable {
    
}
