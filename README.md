# EastAsianWidth


[![Build Status](https://travis-ci.org/ukitaka/EastAsianWidth.swift.svg?branch=master)](https://travis-ci.org/ukitaka/EastAsianWidth.swift)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

[![CocoaPods](https://img.shields.io/cocoapods/v/EastAsianWidth.svg)]()
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Swift Package Manager](https://img.shields.io/badge/Swift%20Package%20Manager-compatible-brightgreen.svg)](https://github.com/apple/swift-package-manager) 




Extension of Swift String API to deal with East Asian Width.
The most generally use case is to classify unicode scalar value as **Fullwidth** (全角) or **Halfwidth** (半角).

```swift
// Halfwidth Katakana (半角カナ)
"ｱｲｳｴｵ".unicodeScalars.forEach { (u: UnicodeScalar) in
    u.isHalfwidth // true
}

// Fullwidth Katakana (全角カナ)
"アイウエオ".unicodeScalars.forEach { (u: UnicodeScalar) in
    u.isFullwidth // true
}
```

East Asian Width is specified as [Unicode® Standard Annex #11](http://www.unicode.org/unicode/reports/tr11/).

## Usage

### `UnicodeScalar` Extensions

For [East Asian Width](http://www.unicode.org/reports/tr11/), this library provides methods below

```swift
/// East Asian Wide (W)
/// See: http://unicode.org/reports/tr11/#ED4
unicodeScalar.isEastAsianWide

/// East Asian Narrow (Na)
/// See: http://unicode.org/reports/tr11/#ED5
unicodeScalar.isEastAsianNarrow

/// Neutral (Not East Asian):
/// See: http://unicode.org/reports/tr11/#ED7
unicodeScalar.isEastAsianNeutral
        
/// East Asian Halfwidth (H)
/// See: http://unicode.org/reports/tr11/#ED3
unicodeScalar.isEastAsianHalfwidth

/// East Asian Fullwidth (F)
/// See: http://unicode.org/reports/tr11/#ED2
unicodeScalar.isEastAsianFullwidth
        
/// East Asian Ambiguous (A)
/// See: http://unicode.org/reports/tr11/#ED6
unicodeScalar.isEastAsianAmbiguous
```

And if you want to know just it is Fullwidth(全角) or Halfwidth(半角), 
you can use `isFullwidth`  and so on.

```swift
// Fullwidth
unicodeScalar.isFullwidth

// Halfwidth
unicodeScalar.isHalfwidth

// NOTE:
// `isFullwidth` and `isHalfwidth` does not include East Asian Ambiguous.
// If you want to include it, you can use `isFullwidthOrAmbiguous` / `isHalfwidthOrAmbiguous` instead.
unicodeScalar.isFullwidthOrAmbiguous
unicodeScalar.isHalfwidthOrAmbiguous
```

### `String` Extensions

`String` extension provides `containsXXX` methods that check if specific East Asian Width characters are contained.

```swift
// East Asian Width
string.containsEastAsianWideCharacters
string.containsEastAsianNarrowCharacters
string.containsEastAsianNeutralCharacters
string.containsEastAsianHalfwidthCharacters
string.containsEastAsianFullwidthCharacters
string.containsEastAsianAmbiguousCharacters

// Fullwidth or Halfwidth
string.containsFullwidthCharacters
string.containsFullwidthOrAmbiguousCharacters
string.containsHalfwidthCharacters
string.containsHalfwidthOrAmbiguousCharacters
```

### `UnicodeScalarView` Extensions

`UnicodeScalarView ` extension provides `countByEastAsianWidth` method that counts string length by  East Asian Width.

By default, `Ambiguous` characters are marked as `Halfwidth`,  length of `Halfwidth`  is **1**,  and `Fullwidth` is **2**.
You can configure them with parameters.

```swift
// count by defualt settings
"あいうえおｱｲｳｴｵ".unicodeScalars.countByEastAsianWidth() // 15

// you can configure with parameters.
string.unicodeScalars.countByEastAsianWidth(halfwidthAs: 2, fullwidthAs: 4, markEastAsianAmbiguousAsFullwidth: false)
```

### Why not support `CharacterSet` ?

Main reason is technical problems of `CharacterSet`.
We cannot create union of `CharacterSet` that has different byte length characters. 

```swift
let c1 = CharacterSet(charactersIn: "\u{AAAA}")
let c2 = CharacterSet(charactersIn: "\u{AAAAA}")

c2.contains("\u{AAAAA}") // true
c1.union(c2).contains("\u{AAAAA}") // false 😫
```

But some `East Asian Width` definitions include different byte length characters. 
So I cannot support `CharacterSet`…

## Requirements

`EastAsianWidth.swift` requires / supports the following environments:

+ Swift 3.1 / Xcode 8.3 or Swift 3.0 / Xcode 8.2
+ OS X 10.10 or later
+ iOS 9.0 or later
+ tvOS 9.0 or later
+ watchOS 2.0 or later

