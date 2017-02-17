//
//  UnicodeScalarView+EastAsianWidth.swift
//  EastAsianWidth
//
//  Created by Yuki Takahashi on 2017/02/16.
//  Copyright © 2017年 waft. All rights reserved.
//

import Foundation

public extension String.UnicodeScalarView {
    public func countByEastAsianWidth(halfwidthAs: Int = 1,
                                      fullwidthAs: Int = 2,
                                      markEastAsianAmbiguousAsFullwidth: Bool = true) -> Int {
        func accumulate(count: Int, unicodeScalar: UnicodeScalar) -> Int {
            if markEastAsianAmbiguousAsFullwidth {
                return count + (unicodeScalar.isFullwidthOrAmbiguous ? fullwidthAs : halfwidthAs)
            } else {
                return count + (unicodeScalar.isFullwidth ? fullwidthAs : halfwidthAs)
            }
        }

        return reduce(0, accumulate)
    }
}
