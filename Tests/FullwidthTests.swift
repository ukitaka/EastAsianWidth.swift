//
//  FullwidthTests.swift
//  EastAsianWidth
//
//  Created by Yuki Takahashi on 2017/02/15.
//  Copyright © 2017年 waft. All rights reserved.
//

import XCTest
import EastAsianWidth

class FullwidthTests: XCTestCase {
    func testEdgeCases() {
        EastAsianWideEdgeUnicodeScalar.forEach(AssertFullwidth)
        EastAsianFullwidthEdgeUnicodeScalar.forEach(AssertFullwidth)
        EastAsianWideEdgeUnicodeScalar.forEach(AssertFullwidthOrAmbiguous)
        EastAsianFullwidthEdgeUnicodeScalar.forEach(AssertFullwidthOrAmbiguous)
        EastAsianAmbiguousEdgeUnicodeScalar.forEach(AssertFullwidthOrAmbiguous)
    }

    func testNonEastAsianWideCharacters() {
        AssertNotFullwidth("Hello")
        AssertNotFullwidthOrAmbiguous("Hello")
    }
}
