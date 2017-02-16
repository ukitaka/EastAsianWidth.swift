# EastAsianWidth

[![Build Status](https://travis-ci.org/ukitaka/EastAsianWidth.swift.svg?branch=master)](https://travis-ci.org/ukitaka/EastAsianWidth.swift)

Extension of `UnicodeScalar` to deal with East Asian Width.
The most generally use case is to classify unicode scalar value as **Fullwidth** (全角) or **Halfwidth** (半角).

East Asian Width is specified as [Unicode® Standard Annex #11](http://www.unicode.org/unicode/reports/tr11/).

## Requirements

`EastAsianWidth.swift` requires / supports the following environments:

+ Swift 3.0.2 / Xcode 8.2
+ OS X 10.10 or later
+ iOS 9.0 or later
+ tvOS 9.0 or later
+ watchOS 2.0 or later

