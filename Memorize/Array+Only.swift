//
//  Array+Only.swift
//  Memorize
//
//  Created by Richard Menning on 10.10.20.
//  Copyright © 2020 Richard Menning. All rights reserved.
//

import Foundation

extension Array {
    var only: Element?{
        count == 1 ? first : nil
    }
}
