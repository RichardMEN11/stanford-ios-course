//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by Richard Menning on 10.10.20.
//  Copyright © 2020 Richard Menning. All rights reserved.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? {
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        return nil
    }
}
