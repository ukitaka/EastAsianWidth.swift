//
//  EastAsianNarrowTests.swift
//  EastAsianWidth
//
//  Created by Yuki Takahashi on 2017/02/15.
//  Copyright © 2017年 waft. All rights reserved.
//

import XCTest
import EastAsianWidth

class EastAsianNarrowTests: XCTestCase {
    func testEdgeCases() {
        EastAsianNarrowEdgeUnicodeScalar.forEach(AssertEastAsianNarrow)
    }

    func testNonEastAsianNarrowCharacters() {
        AssertNotEastAsianNarrow("こんにちわ")
        AssertNotEastAsianNarrow("안녕하세요")
        AssertNotEastAsianNarrow("你好")
    }
}
