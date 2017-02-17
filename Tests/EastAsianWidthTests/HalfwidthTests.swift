//
//  HalfwidthTests.swift
//  EastAsianWidth
//
//  Created by Yuki Takahashi on 2017/02/15.
//  Copyright © 2017年 waft. All rights reserved.
//

import XCTest
import EastAsianWidth

class HalfwidthTests: XCTestCase {
    func testEdgeCases() {
        EastAsianNarrowEdgeUnicodeScalar.forEach(AssertHalfwidth)
        EastAsianHalfwidthEdgeUnicodeScalar.forEach(AssertHalfwidth)
        EastAsianNarrowEdgeUnicodeScalar.forEach(AssertHalfwidthOrAmbiguous)
        EastAsianHalfwidthEdgeUnicodeScalar.forEach(AssertHalfwidthOrAmbiguous)
        EastAsianAmbiguousEdgeUnicodeScalar.forEach(AssertHalfwidthOrAmbiguous)
    }

    func testNonHalfwidthCharacters() {
        AssertNotHalfwidth("あいうえお")
    }

    func testContainsHalfwidth() {
        XCTAssertFalse("¡".containsHalfwidthCharacters)
        XCTAssertTrue("ABC".containsHalfwidthCharacters)
        XCTAssertFalse("ＡＢＣ".containsHalfwidthCharacters)
        XCTAssertFalse("こんにちわ".containsHalfwidthCharacters)
        XCTAssertFalse("你好".containsHalfwidthCharacters)
        XCTAssertFalse("안녕하세요".containsHalfwidthCharacters)

        XCTAssertTrue("¡".containsHalfwidthOrAmbiguousCharacters)
        XCTAssertTrue("ABC".containsHalfwidthOrAmbiguousCharacters)
        XCTAssertFalse("ＡＢＣ".containsHalfwidthOrAmbiguousCharacters)
        XCTAssertFalse("こんにちわ".containsHalfwidthOrAmbiguousCharacters)
        XCTAssertFalse("你好".containsHalfwidthOrAmbiguousCharacters)
        XCTAssertFalse("안녕하세요".containsHalfwidthOrAmbiguousCharacters)
    }

    func testHalfwidthKatakana() {
        AssertHalfwidth("ｱｲｳｴｵ")
        AssertHalfwidth("ｶｷｸｹｺ")
        AssertHalfwidth("ｻｼｽｾｿ")
        AssertHalfwidth("ﾀﾁﾂﾃﾄ")
        AssertHalfwidth("ﾅﾆﾇﾈﾉ")
        AssertHalfwidth("ﾊﾋﾌﾍﾎ")
        AssertHalfwidth("ﾏﾐﾑﾒﾓ")
        AssertHalfwidth("ﾔﾕﾖ")
        AssertHalfwidth("ﾜｦﾝ")
        AssertHalfwidth("ｶﾞｷﾞｸﾞｹﾞｺﾞ")
        AssertHalfwidth("ｻﾞｼﾞｽﾞｾﾞｿﾞ")
        AssertHalfwidth("ﾀﾞﾁﾞﾂﾞﾃﾞﾄﾞ")
        AssertHalfwidth("ﾊﾞﾋﾞﾌﾞﾍﾞﾎﾞ")
        AssertHalfwidth("ﾊﾟﾋﾟﾌﾟﾍﾟﾎﾟ")
    }

    func testHalfwidthHangul() {
        AssertHalfwidth("ﾡﾢﾣﾤﾥﾦﾧﾨﾩﾪﾫﾬﾭﾮﾯﾰﾱﾲﾳﾴﾵﾶﾷﾸﾹﾺﾻﾼﾽﾾￂￃￄￅￆￇￊￋￌￍￎￏￒￓￔￕￖￗￚￛￜ")
    }
}
