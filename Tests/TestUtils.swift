//
//  TestUtils.swift
//  EastAsianWidth
//
//  Created by Yuki Takahashi on 2017/02/15.
//  Copyright © 2017年 waft. All rights reserved.
//

import XCTest
import EastAsianWidth

// MARK: - EastAsianAmbiguous

func AssertEastAsianAmbiguous(_ string: String) {
    string.unicodeScalars.forEach(AssertEastAsianAmbiguous)
}

func AssertEastAsianAmbiguous(_ unicodeScalar: UnicodeScalar) {
    XCTAssertTrue(unicodeScalar.isEastAsianAmbiguous)
}

func AssertNotEastAsianAmbiguous(_ string: String) {
    string.unicodeScalars.forEach(AssertNotEastAsianAmbiguous)
}

func AssertNotEastAsianAmbiguous(_ unicodeScalar: UnicodeScalar) {
    XCTAssertFalse(unicodeScalar.isEastAsianAmbiguous)
}

// MARK: - EastAsianNeutral

func AssertEastAsianNeutral(_ string: String) {
    string.unicodeScalars.forEach(AssertEastAsianNeutral)
}

func AssertEastAsianNeutral(_ unicodeScalar: UnicodeScalar) {
    XCTAssertTrue(unicodeScalar.isEastAsianNeutral)
}

func AssertNotEastAsianNeutral(_ string: String) {
    string.unicodeScalars.forEach(AssertNotEastAsianNeutral)
}

func AssertNotEastAsianNeutral(_ unicodeScalar: UnicodeScalar) {
    XCTAssertFalse(unicodeScalar.isEastAsianNeutral)
}
