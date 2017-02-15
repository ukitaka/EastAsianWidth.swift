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

// MARK: - EastAsianHalfwidth

func AssertEastAsianHalfwidth(_ string: String) {
    string.unicodeScalars.forEach(AssertEastAsianHalfwidth)
}

func AssertEastAsianHalfwidth(_ unicodeScalar: UnicodeScalar) {
    XCTAssertTrue(unicodeScalar.isEastAsianHalfwidth)
}

func AssertNotEastAsianHalfwidth(_ string: String) {
    string.unicodeScalars.forEach(AssertNotEastAsianHalfwidth)
}

func AssertNotEastAsianHalfwidth(_ unicodeScalar: UnicodeScalar) {
    XCTAssertFalse(unicodeScalar.isEastAsianHalfwidth)
}

// MARK: - EastAsianFullwidth

func AssertEastAsianFullwidth(_ string: String) {
    string.unicodeScalars.forEach(AssertEastAsianFullwidth)
}

func AssertEastAsianFullwidth(_ unicodeScalar: UnicodeScalar) {
    XCTAssertTrue(unicodeScalar.isEastAsianFullwidth)
}

func AssertNotEastAsianFullwidth(_ string: String) {
    string.unicodeScalars.forEach(AssertNotEastAsianFullwidth)
}

func AssertNotEastAsianFullwidth(_ unicodeScalar: UnicodeScalar) {
    XCTAssertFalse(unicodeScalar.isEastAsianFullwidth)
}

// MARK: - EastAsianNarrow

func AssertEastAsianNarrow(_ string: String) {
    string.unicodeScalars.forEach(AssertEastAsianNarrow)
}

func AssertEastAsianNarrow(_ unicodeScalar: UnicodeScalar) {
    XCTAssertTrue(unicodeScalar.isEastAsianNarrow)
}

func AssertNotEastAsianNarrow(_ string: String) {
    string.unicodeScalars.forEach(AssertNotEastAsianNarrow)
}

func AssertNotEastAsianNarrow(_ unicodeScalar: UnicodeScalar) {
    XCTAssertFalse(unicodeScalar.isEastAsianNarrow)
}

// MARK: - EastAsianWide

func AssertEastAsianWide(_ string: String) {
    string.unicodeScalars.forEach(AssertEastAsianWide)
}

func AssertEastAsianWide(_ unicodeScalar: UnicodeScalar) {
    XCTAssertTrue(unicodeScalar.isEastAsianWide)
}

func AssertNotEastAsianWide(_ string: String) {
    string.unicodeScalars.forEach(AssertNotEastAsianWide)
}

func AssertNotEastAsianWide(_ unicodeScalar: UnicodeScalar) {
    XCTAssertFalse(unicodeScalar.isEastAsianWide)
}
