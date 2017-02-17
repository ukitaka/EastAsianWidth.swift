//
//  String+EastAsianWidth.swift
//  EastAsianWidth
//
//  Created by Yuki Takahashi on 2017/02/16.
//  Copyright © 2017年 waft. All rights reserved.
//

import Foundation

public extension String {
    public var containsEastAsianAmbiguousCharacters: Bool {
        return unicodeScalars.contains { $0.isEastAsianAmbiguous }
    }

    public var containsEastAsianHalfwidthCharacters: Bool {
        return unicodeScalars.contains { $0.isEastAsianHalfwidth }
    }

    public var containsEastAsianFullwidthCharacters: Bool {
        return unicodeScalars.contains { $0.isEastAsianFullwidth }
    }

    public var containsEastAsianNarrowCharacters: Bool {
        return unicodeScalars.contains { $0.isEastAsianNarrow }
    }

    public var containsEastAsianNeutralCharacters: Bool {
        return unicodeScalars.contains { $0.isEastAsianNeutral }
    }

    public var containsEastAsianWideCharacters: Bool {
        return unicodeScalars.contains { $0.isEastAsianWide }
    }

    public var containsFullwidthOrAmbiguousCharacters: Bool {
        return unicodeScalars.contains { $0.isFullwidthOrAmbiguous }
    }

    public var containsFullwidthCharacters: Bool {
        return unicodeScalars.contains { $0.isFullwidth }
    }

    public var containsHalfwidthOrAmbiguousCharacters: Bool {
        return unicodeScalars.contains { $0.isHalfwidthOrAmbiguous }
    }

    public var containsHalfwidthCharacters: Bool {
        return unicodeScalars.contains { $0.isHalfwidth }
    }
}
