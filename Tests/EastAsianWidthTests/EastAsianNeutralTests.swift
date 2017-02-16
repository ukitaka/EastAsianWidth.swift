//
//  EastAsianNeutralTests.swift
//  EastAsianWidth
//
//  Created by Yuki Takahashi on 2017/02/15.
//  Copyright © 2017年 waft. All rights reserved.
//

import XCTest
import EastAsianWidth

class EastAsianNeutralTests: XCTestCase {
    func testEdgeCases() {
        EastAsianNeutralEdgeUnicodeScalar.forEach(AssertEastAsianNeutral)
    }

    func testNonEastAsianNeutralCharacters() {
        AssertNotEastAsianNeutral("Hello")
        AssertNotEastAsianNeutral("こんにちわ")
        AssertNotEastAsianNeutral("안녕하세요")
        AssertNotEastAsianNeutral("你好")
    }
}
