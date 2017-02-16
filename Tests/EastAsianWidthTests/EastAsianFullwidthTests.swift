//
//  EastAsianFullwidthTests.swift
//  EastAsianWidth
//
//  Created by Yuki Takahashi on 2017/02/15.
//  Copyright © 2017年 waft. All rights reserved.
//

import XCTest
import EastAsianWidth

class EastAsianFullwidthTests: XCTestCase {
    func testEdgeCases() {
        EastAsianFullwidthEdgeUnicodeScalar.forEach(AssertEastAsianFullwidth)
    }

    func testNonEastAsianFullwidthCharacters() {
        AssertNotEastAsianFullwidth("Hello")
        AssertNotEastAsianFullwidth("こんにちわ")
        AssertNotEastAsianFullwidth("안녕하세요")
        AssertNotEastAsianFullwidth("你好")
    }
}
