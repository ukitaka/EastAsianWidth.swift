//
//  EastAsianHalfwidthTests.swift
//  EastAsianWidth
//
//  Created by Yuki Takahashi on 2017/02/15.
//  Copyright © 2017年 waft. All rights reserved.
//

import XCTest
import EastAsianWidth

class EastAsianHalfwidthTests: XCTestCase {
    func testEdgeCases() {
        EastAsianHalfwidthEdgeUnicodeScalar.forEach(AssertEastAsianHalfwidth)
    }

    func testNonEastAsianHalfwidthCharacters() {
        AssertNotEastAsianHalfwidth("Hello")
        AssertNotEastAsianHalfwidth("こんにちわ")
        AssertNotEastAsianHalfwidth("안녕하세요")
        AssertNotEastAsianHalfwidth("你好")
    }

    func testContainsEastAsianHalfwidth() {
        XCTAssertTrue("₩".containsEastAsianHalfwidthCharacters)
        XCTAssertTrue("100 ₩".containsEastAsianHalfwidthCharacters)
        XCTAssertFalse("あいうえお".containsEastAsianHalfwidthCharacters)
    }
}
