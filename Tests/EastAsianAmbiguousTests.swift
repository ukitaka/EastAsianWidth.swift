//
//  EastAsianAmbiguousTests.swift
//  EastAsianWidth
//
//  Created by Yuki Takahashi on 2017/02/15.
//  Copyright © 2017年 waft. All rights reserved.
//

import XCTest
import EastAsianWidth

class EastAsianAmbiguousTests: XCTestCase {
    func testEdgeCases() {
        EastAsianAmbiguousEdgeUnicodeScalar.forEach(AssertEastAsianAmbiguous)
    }

    func testNonEastAsianAmbiguousCharacters() {
        AssertNotEastAsianAmbiguous("Hello")
        AssertNotEastAsianAmbiguous("こんにちわ")
        AssertNotEastAsianAmbiguous("안녕하세요")
        AssertNotEastAsianAmbiguous("你好")
    }
}
