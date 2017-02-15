//
//  EastAsianWidth.swift
//  EastAsianWidth
//
//  Created by Yuki Takahashi on 2017/02/15.
//  Copyright © 2017年 waft. All rights reserved.
//

import Foundation

private func c(_ lower: UnicodeScalar, _ upper: UnicodeScalar) -> CharacterSet {
    return CharacterSet(charactersIn: Range(uncheckedBounds: (lower: lower, upper: upper)))
}


