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

    func testNonFullwidthCharacters() {
        AssertNotFullwidth("Hello")
        AssertNotFullwidthOrAmbiguous("Hello")
    }

    func testContainsFullwidth() {
        XCTAssertFalse("¡".containsFullwidthCharacters)
        XCTAssertFalse("ABC".containsFullwidthCharacters)
        XCTAssertTrue("ＡＢＣ".containsFullwidthCharacters)
        XCTAssertTrue("こんにちわ".containsFullwidthCharacters)
        XCTAssertTrue("你好".containsFullwidthCharacters)
        XCTAssertTrue("안녕하세요".containsFullwidthCharacters)

        XCTAssertTrue("¡".containsFullwidthOrAmbiguousCharacters)
        XCTAssertFalse("ABC".containsFullwidthOrAmbiguousCharacters)
        XCTAssertTrue("ＡＢＣ".containsFullwidthOrAmbiguousCharacters)
        XCTAssertTrue("こんにちわ".containsFullwidthOrAmbiguousCharacters)
        XCTAssertTrue("你好".containsFullwidthOrAmbiguousCharacters)
        XCTAssertTrue("안녕하세요".containsFullwidthOrAmbiguousCharacters)
    }
}
