//
//  TestUtils.swift
//  EastAsianWidth
//
//  Created by Yuki Takahashi on 2017/02/15.
//  Copyright © 2017年 waft. All rights reserved.
//

import XCTest
import EastAsianWidth

func testHiragana(_ unicodeScalar: UnicodeScalar) {
    XCTAssertFalse(unicodeScalar.isEastAsianAmbiguous)
    XCTAssertFalse(unicodeScalar.isEastAsianHalfwidth)
    XCTAssertFalse(unicodeScalar.isEastAsianFullwidth)
    XCTAssertFalse(unicodeScalar.isEastAsianNarrow)
    XCTAssertFalse(unicodeScalar.isEastAsianNeutral)
    XCTAssertTrue(unicodeScalar.isEastAsianWide)
    XCTAssertTrue(unicodeScalar.isFullwidth)
    XCTAssertTrue(unicodeScalar.isFullwidthOrAmbiguous)
    XCTAssertFalse(unicodeScalar.isHalfwidth)
    XCTAssertFalse(unicodeScalar.isHalfwidthOrAmbiguous)
}
