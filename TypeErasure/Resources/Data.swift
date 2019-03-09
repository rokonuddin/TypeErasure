//
//  Data.swift
//  TypeErasure
//
//  Created by Rokon Uddin on 3/10/19.
//  Copyright © 2019 Rokon Uddin. All rights reserved.
//

import Foundation

struct Data {
    private static let quotes = [TextCellModel("The best and most beautiful things in the world cannot be seen or even touched - they must be felt with the heart.", author: "-Helen Keller"),
                                 TextCellModel("It is during our darkest moments that we must focus to see the light.", author: "-Aristotle"),
                                 TextCellModel("It is during our darkest moments that we must focus to see the light.", author: "-Joseph Campbell"),
                                 TextCellModel("Don't judge each day by the harvest you reap but by the seeds that you plant.", author: "-Robert Louis Stevenson")]
    
    private static let flowers = [ImageCellModel("rose"),
                                  ImageCellModel("tulip"),
                                  ImageCellModel("cyclamen"),
                                  ImageCellModel("hydrangea"),
                                  ImageCellModel("orchid"),
                                  ImageCellModel("balloon-flower"),
                                  ImageCellModel("pink-peony"),
                                  ImageCellModel("bee-balm"),
                                  ImageCellModel("begonia"),
                                  ImageCellModel("bellflower"),
                                  ImageCellModel("browilia")]
    
    public static let sections: [Section] = {
        let anyQuotes = quotes.map { AnyCell($0) }
        let hoSection = Section(title: "HOMOGENEOUS SECTION", items: anyQuotes)
        
        let anyFlowers = flowers.map { AnyCell($0) }
        let heSection = Section(title: "HETEROGENEOUS SECTION", items: (anyFlowers+anyQuotes).shuffled())
        return [hoSection, heSection]
    }()
}
