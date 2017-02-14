//
//  EastAsianWidthTests.swift
//  Tests
//
//  Created by Yuki Takahashi on 2017/02/14.
//  Copyright © 2017年 waft. All rights reserved.
//

import XCTest
import EastAsianWidth

class EastAsianWidthTests: XCTestCase {
    func test_Hiragana() {
        "あいうえお".unicodeScalars.forEach(testHiragana)
        "ぁぃぅぇぉ".unicodeScalars.forEach(testHiragana)
        "がぎぐげご".unicodeScalars.forEach(testHiragana)
        "ぱぴぷべぽ".unicodeScalars.forEach(testHiragana)
        "わをん".unicodeScalars.forEach(testHiragana)
    }
}
