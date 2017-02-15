//
//  HalfwidthTests.swift
//  EastAsianWidth
//
//  Created by Yuki Takahashi on 2017/02/15.
//  Copyright © 2017年 waft. All rights reserved.
//

import XCTest
import EastAsianWidth

class HalfwidthTests: XCTestCase {
    func testEdgeCases() {
        EastAsianNarrowEdgeUnicodeScalar.forEach(AssertHalfwidth)
        EastAsianHalfwidthEdgeUnicodeScalar.forEach(AssertHalfwidth)
        EastAsianNarrowEdgeUnicodeScalar.forEach(AssertHalfwidthOrAmbiguous)
        EastAsianHalfwidthEdgeUnicodeScalar.forEach(AssertHalfwidthOrAmbiguous)
        EastAsianAmbiguousEdgeUnicodeScalar.forEach(AssertHalfwidthOrAmbiguous)
    }

    func testNonEastAsianWideCharacters() {
        AssertNotHalfwidth("あいうえお")
    }
}
