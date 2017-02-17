//
//  CountByEastAsianWidthTests.swift
//  EastAsianWidth
//
//  Created by Yuki Takahashi on 2017/02/17.
//  Copyright © 2017年 waft. All rights reserved.
//

import XCTest
import EastAsianWidth

class CountByEastAsianWidthTests: XCTestCase {
    func testCountByEastAsianWidth() {
        // default config
        XCTAssertEqual("あいうえお".unicodeScalars.countByEastAsianWidth(), 10)
        XCTAssertEqual("aiueo".unicodeScalars.countByEastAsianWidth(), 5)
        XCTAssertEqual("あいうえおｱｲｳｴｵ".unicodeScalars.countByEastAsianWidth(), 15)
        XCTAssertEqual("ABCｱｲｳｴｵ".unicodeScalars.countByEastAsianWidth(), 8)
        XCTAssertEqual("ABCｱｲｳｴｵ¡".unicodeScalars.countByEastAsianWidth(), 9) //includes East Asian Ambiguous character.

        // custom config
        XCTAssertEqual("あいうえお".unicodeScalars.countByEastAsianWidth(halfwidthAs: 1, fullwidthAs: 2, markEastAsianAmbiguousAsFullwidth: true), 10)
        XCTAssertEqual("ABCｱｲｳｴｵ¡".unicodeScalars.countByEastAsianWidth(halfwidthAs: 1, fullwidthAs: 2, markEastAsianAmbiguousAsFullwidth: true), 10)

        XCTAssertEqual("あいうえお".unicodeScalars.countByEastAsianWidth(halfwidthAs: 2, fullwidthAs: 4), 20)
        XCTAssertEqual("aiueo".unicodeScalars.countByEastAsianWidth(halfwidthAs: 1, fullwidthAs: 3), 5)
        XCTAssertEqual("あいうえおｱｲｳｴｵ".unicodeScalars.countByEastAsianWidth(halfwidthAs: 1, fullwidthAs: 3), 20)
    }
}
