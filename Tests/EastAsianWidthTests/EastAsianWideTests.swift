//
//  EastAsianWideTests.swift
//  EastAsianWidth
//
//  Created by Yuki Takahashi on 2017/02/15.
//  Copyright © 2017年 waft. All rights reserved.
//

import XCTest
import EastAsianWidth

class EastAsianWideTests: XCTestCase {
    func testEdgeCases() {
        EastAsianWideEdgeUnicodeScalar.forEach(AssertEastAsianWide)
    }

    func testNonEastAsianWideCharacters() {
        AssertNotEastAsianWide("Hello")
    }

    func testContainsEastAsianWide() {
        XCTAssertFalse("ABC".containsEastAsianWideCharacters)
        XCTAssertFalse("ＡＢＣ".containsEastAsianWideCharacters)
        XCTAssertTrue("こんにちわ".containsEastAsianWideCharacters)
        XCTAssertTrue("你好".containsEastAsianWideCharacters)
        XCTAssertTrue("안녕하세요".containsEastAsianWideCharacters)
    }
}
