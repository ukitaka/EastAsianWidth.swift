//
//  EastAsianWidth.swift
//  EastAsianWidth
//
//  Created by Yuki Takahashi on 2017/02/15.
//  Copyright © 2017年 waft. All rights reserved.
//

import Foundation

private func c(_ lower: UnicodeScalar, _ upper: UnicodeScalar) -> CharacterSet {
    return CharacterSet(charactersIn: ClosedRange(uncheckedBounds: (lower: lower, upper: upper)))
}

/// East Asian Ambiguous (A)
/// All characters that can be sometimes wide and sometimes narrow.
/// Ambiguous characters require additional information not contained
/// in the character code to further resolve their width.
///
/// See: http://unicode.org/reports/tr11/#ED6
///      https://github.com/audreyt/Unicode-EastAsianWidth/blob/master/lib/Unicode/EastAsianWidth.pm#L38-L199
let EastAsianAmbiguousCharacterSet = CharacterSet()
        .union(c("\u{00A1}", "\u{00A1}")) .union(c("\u{00A4}", "\u{00A4}"))
        .union(c("\u{00A7}", "\u{00A8}")) .union(c("\u{00AA}", "\u{00AA}"))
        .union(c("\u{00AD}", "\u{00AE}")) .union(c("\u{00B0}", "\u{00B4}"))
        .union(c("\u{00B6}", "\u{00BA}")) .union(c("\u{00BC}", "\u{00BF}"))
        .union(c("\u{00C6}", "\u{00C6}")) .union(c("\u{00D0}", "\u{00D0}"))
        .union(c("\u{00D7}", "\u{00D8}")) .union(c("\u{00DE}", "\u{00E1}"))
        .union(c("\u{00E6}", "\u{00E6}")) .union(c("\u{00E8}", "\u{00EA}"))
        .union(c("\u{00EC}", "\u{00ED}")) .union(c("\u{00F0}", "\u{00F0}"))
        .union(c("\u{00F2}", "\u{00F3}")) .union(c("\u{00F7}", "\u{00FA}"))
        .union(c("\u{00FC}", "\u{00FC}")) .union(c("\u{00FE}", "\u{00FE}"))
        .union(c("\u{0101}", "\u{0101}")) .union(c("\u{0111}", "\u{0111}"))
        .union(c("\u{0113}", "\u{0113}")) .union(c("\u{011B}", "\u{011B}"))
        .union(c("\u{0126}", "\u{0127}")) .union(c("\u{012B}", "\u{012B}"))
        .union(c("\u{0131}", "\u{0133}")) .union(c("\u{0138}", "\u{0138}"))
        .union(c("\u{013F}", "\u{0142}")) .union(c("\u{0144}", "\u{0144}"))
        .union(c("\u{0148}", "\u{014B}")) .union(c("\u{014D}", "\u{014D}"))
        .union(c("\u{0152}", "\u{0153}")) .union(c("\u{0166}", "\u{0167}"))
        .union(c("\u{016B}", "\u{016B}")) .union(c("\u{01CE}", "\u{01CE}"))
        .union(c("\u{01D0}", "\u{01D0}")) .union(c("\u{01D2}", "\u{01D2}"))
        .union(c("\u{01D4}", "\u{01D4}")) .union(c("\u{01D6}", "\u{01D6}"))
        .union(c("\u{01D8}", "\u{01D8}")) .union(c("\u{01DA}", "\u{01DA}"))
        .union(c("\u{01DC}", "\u{01DC}")) .union(c("\u{0251}", "\u{0251}"))
        .union(c("\u{0261}", "\u{0261}")) .union(c("\u{02C4}", "\u{02C4}"))
        .union(c("\u{02C7}", "\u{02C7}")) .union(c("\u{02C9}", "\u{02CB}"))
        .union(c("\u{02CD}", "\u{02CD}")) .union(c("\u{02D0}", "\u{02D0}"))
        .union(c("\u{02D8}", "\u{02DB}")) .union(c("\u{02DD}", "\u{02DD}"))
        .union(c("\u{02DF}", "\u{02DF}")) .union(c("\u{0300}", "\u{036F}"))
        .union(c("\u{0391}", "\u{03A9}")) .union(c("\u{03B1}", "\u{03C1}"))
        .union(c("\u{03C3}", "\u{03C9}")) .union(c("\u{0401}", "\u{0401}"))
        .union(c("\u{0410}", "\u{044F}")) .union(c("\u{0451}", "\u{0451}"))
        .union(c("\u{2010}", "\u{2010}")) .union(c("\u{2013}", "\u{2016}"))
        .union(c("\u{2018}", "\u{2019}")) .union(c("\u{201C}", "\u{201D}"))
        .union(c("\u{2020}", "\u{2022}")) .union(c("\u{2024}", "\u{2027}"))
        .union(c("\u{2030}", "\u{2030}")) .union(c("\u{2032}", "\u{2033}"))
        .union(c("\u{2035}", "\u{2035}")) .union(c("\u{203B}", "\u{203B}"))
        .union(c("\u{203E}", "\u{203E}")) .union(c("\u{2074}", "\u{2074}"))
        .union(c("\u{207F}", "\u{207F}")) .union(c("\u{2081}", "\u{2084}"))
        .union(c("\u{20AC}", "\u{20AC}")) .union(c("\u{2103}", "\u{2103}"))
        .union(c("\u{2105}", "\u{2105}")) .union(c("\u{2109}", "\u{2109}"))
        .union(c("\u{2113}", "\u{2113}")) .union(c("\u{2116}", "\u{2116}"))
        .union(c("\u{2121}", "\u{2122}")) .union(c("\u{2126}", "\u{2126}"))
        .union(c("\u{212B}", "\u{212B}")) .union(c("\u{2153}", "\u{2154}"))
        .union(c("\u{215B}", "\u{215E}")) .union(c("\u{2160}", "\u{216B}"))
        .union(c("\u{2170}", "\u{2179}")) .union(c("\u{2190}", "\u{2199}"))
        .union(c("\u{21B8}", "\u{21B9}")) .union(c("\u{21D2}", "\u{21D2}"))
        .union(c("\u{21D4}", "\u{21D4}")) .union(c("\u{21E7}", "\u{21E7}"))
        .union(c("\u{2200}", "\u{2200}")) .union(c("\u{2202}", "\u{2203}"))
        .union(c("\u{2207}", "\u{2208}")) .union(c("\u{220B}", "\u{220B}"))
        .union(c("\u{220F}", "\u{220F}")) .union(c("\u{2211}", "\u{2211}"))
        .union(c("\u{2215}", "\u{2215}")) .union(c("\u{221A}", "\u{221A}"))
        .union(c("\u{221D}", "\u{2220}")) .union(c("\u{2223}", "\u{2223}"))
        .union(c("\u{2225}", "\u{2225}")) .union(c("\u{2227}", "\u{222C}"))
        .union(c("\u{222E}", "\u{222E}")) .union(c("\u{2234}", "\u{2237}"))
        .union(c("\u{223C}", "\u{223D}")) .union(c("\u{2248}", "\u{2248}"))
        .union(c("\u{224C}", "\u{224C}")) .union(c("\u{2252}", "\u{2252}"))
        .union(c("\u{2260}", "\u{2261}")) .union(c("\u{2264}", "\u{2267}"))
        .union(c("\u{226A}", "\u{226B}")) .union(c("\u{226E}", "\u{226F}"))
        .union(c("\u{2282}", "\u{2283}")) .union(c("\u{2286}", "\u{2287}"))
        .union(c("\u{2295}", "\u{2295}")) .union(c("\u{2299}", "\u{2299}"))
        .union(c("\u{22A5}", "\u{22A5}")) .union(c("\u{22BF}", "\u{22BF}"))
        .union(c("\u{2312}", "\u{2312}")) .union(c("\u{2460}", "\u{24E9}"))
        .union(c("\u{24EB}", "\u{254B}")) .union(c("\u{2550}", "\u{2573}"))
        .union(c("\u{2580}", "\u{258F}")) .union(c("\u{2592}", "\u{2595}"))
        .union(c("\u{25A0}", "\u{25A1}")) .union(c("\u{25A3}", "\u{25A9}"))
        .union(c("\u{25B2}", "\u{25B3}")) .union(c("\u{25B6}", "\u{25B7}"))
        .union(c("\u{25BC}", "\u{25BD}")) .union(c("\u{25C0}", "\u{25C1}"))
        .union(c("\u{25C6}", "\u{25C8}")) .union(c("\u{25CB}", "\u{25CB}"))
        .union(c("\u{25CE}", "\u{25D1}")) .union(c("\u{25E2}", "\u{25E5}"))
        .union(c("\u{25EF}", "\u{25EF}")) .union(c("\u{2605}", "\u{2606}"))
        .union(c("\u{2609}", "\u{2609}")) .union(c("\u{260E}", "\u{260F}"))
        .union(c("\u{2614}", "\u{2615}")) .union(c("\u{261C}", "\u{261C}"))
        .union(c("\u{261E}", "\u{261E}")) .union(c("\u{2640}", "\u{2640}"))
        .union(c("\u{2642}", "\u{2642}")) .union(c("\u{2660}", "\u{2661}"))
        .union(c("\u{2663}", "\u{2665}")) .union(c("\u{2667}", "\u{266A}"))
        .union(c("\u{266C}", "\u{266D}")) .union(c("\u{266F}", "\u{266F}"))
        .union(c("\u{273D}", "\u{273D}")) .union(c("\u{2776}", "\u{277F}"))
        .union(c("\u{E000}", "\u{F8FF}")) .union(c("\u{FE00}", "\u{FE0F}"))
        .union(c("\u{FFFD}", "\u{FFFD}")) .union(c("\u{E0100}", "\u{E01EF}"))
        .union(c("\u{F0000}", "\u{FFFFD}")) .union(c("\u{100000}", "\u{10FFFD}"))

/// East Asian Halfwidth (H)
/// All characters that are explicitly defined as Halfwidth in the
/// Unicode Standard by having a compatibility decomposition of
/// type <narrow> to characters elsewhere in the Unicode Standard
/// that are implicitly wide but unmarked, plus U+20A9 ₩ WON SIGN.
///
/// See: http://unicode.org/reports/tr11/#ED3
///      https://github.com/audreyt/Unicode-EastAsianWidth/blob/master/lib/Unicode/EastAsianWidth.pm#L209-L215
let EastAsianHalfwidthCharacterSet = CharacterSet()
        .union(c("\u{20A9}", "\u{20A9}")) .union(c("\u{FF61}", "\u{FFDC}"))
        .union(c("\u{FFE8}", "\u{FFEE}"))

/// East Asian Fullwidth (F)
/// All characters that are defined as Fullwidth in the Unicode Standard
/// by having a compatibility decomposition of type <wide> to characters
/// elsewhere in the Unicode Standard that are implicitly narrow but unmarked.
///
/// See: http://unicode.org/reports/tr11/#ED2
///      https://github.com/audreyt/Unicode-EastAsianWidth/blob/master/lib/Unicode/EastAsianWidth.pm#L209-L215
let EastAsianFullwidthCharacterSet = CharacterSet()
        .union(c("\u{3000}", "\u{3000}")) .union(c("\u{FF01}", "\u{FF60}"))
        .union(c("\u{FFE0}", "\u{FFE6}"))

/// East Asian Narrow (Na)
/// All other characters that are always narrow and have explicit fullwidth
/// or wide counterparts. These characters are implicitly narrow in East Asian
/// typography and legacy character sets because they have explicit fullwidth or
/// wide counterparts. All of ASCII is an example of East Asian Narrow characters.
///
/// See: http://unicode.org/reports/tr11/#ED5
///      https://github.com/audreyt/Unicode-EastAsianWidth/blob/master/lib/Unicode/EastAsianWidth.pm#L217-L227
let EastAsianNarrowCharacterSet = CharacterSet()
    .union(c("\u{0020}", "\u{007E}")) .union(c("\u{00A2}", "\u{00A3}"))
    .union(c("\u{00A5}", "\u{00A6}")) .union(c("\u{00AC}", "\u{00AC}"))
    .union(c("\u{00AF}", "\u{00AF}")) .union(c("\u{27E6}", "\u{27EB}"))
    .union(c("\u{2985}", "\u{2986}"))

/// Neutral (Not East Asian):
/// All other characters. Neutral characters do not occur in legacy East Asian
/// character sets. By extension, they also do not occur in East Asian typography.
/// For example, there is no traditional Japanese way of typesetting Devanagari.
/// Canonical equivalents of narrow and neutral characters may not themselves be
/// narrow or neutral respectively. For example, U+00C5 Å LATIN CAPITAL LETTER A
/// WITH RING ABOVE is Neutral, but its decomposition starts with a Narrow character.
///
/// See: http://unicode.org/reports/tr11/#ED7
///      https://github.com/audreyt/Unicode-EastAsianWidth/blob/master/lib/Unicode/EastAsianWidth.pm#L229-L400
let EastAsianNeutralCharacterSet = CharacterSet()
    .union(c("\u{0000}", "\u{001F}")) .union(c("\u{007F}", "\u{00A0}"))
    .union(c("\u{00A9}", "\u{00A9}")) .union(c("\u{00AB}", "\u{00AB}"))
    .union(c("\u{00B5}", "\u{00B5}")) .union(c("\u{00BB}", "\u{00BB}"))
    .union(c("\u{00C0}", "\u{00C5}")) .union(c("\u{00C7}", "\u{00CF}"))
    .union(c("\u{00D1}", "\u{00D6}")) .union(c("\u{00D9}", "\u{00DD}"))
    .union(c("\u{00E2}", "\u{00E5}")) .union(c("\u{00E7}", "\u{00E7}"))
    .union(c("\u{00EB}", "\u{00EB}")) .union(c("\u{00EE}", "\u{00EF}"))
    .union(c("\u{00F1}", "\u{00F1}")) .union(c("\u{00F4}", "\u{00F6}"))
    .union(c("\u{00FB}", "\u{00FB}")) .union(c("\u{00FD}", "\u{00FD}"))
    .union(c("\u{00FF}", "\u{0100}")) .union(c("\u{0102}", "\u{0110}"))
    .union(c("\u{0112}", "\u{0112}")) .union(c("\u{0114}", "\u{011A}"))
    .union(c("\u{011C}", "\u{0125}")) .union(c("\u{0128}", "\u{012A}"))
    .union(c("\u{012C}", "\u{0130}")) .union(c("\u{0134}", "\u{0137}"))
    .union(c("\u{0139}", "\u{013E}")) .union(c("\u{0143}", "\u{0143}"))
    .union(c("\u{0145}", "\u{0147}")) .union(c("\u{014C}", "\u{014C}"))
    .union(c("\u{014E}", "\u{0151}")) .union(c("\u{0154}", "\u{0165}"))
    .union(c("\u{0168}", "\u{016A}")) .union(c("\u{016C}", "\u{01CD}"))
    .union(c("\u{01CF}", "\u{01CF}")) .union(c("\u{01D1}", "\u{01D1}"))
    .union(c("\u{01D3}", "\u{01D3}")) .union(c("\u{01D5}", "\u{01D5}"))
    .union(c("\u{01D7}", "\u{01D7}")) .union(c("\u{01D9}", "\u{01D9}"))
    .union(c("\u{01DB}", "\u{01DB}")) .union(c("\u{01DD}", "\u{0250}"))
    .union(c("\u{0252}", "\u{0260}")) .union(c("\u{0262}", "\u{02C3}"))
    .union(c("\u{02C5}", "\u{02C6}")) .union(c("\u{02C8}", "\u{02C8}"))
    .union(c("\u{02CC}", "\u{02CC}")) .union(c("\u{02CE}", "\u{02CF}"))
    .union(c("\u{02D1}", "\u{02D7}")) .union(c("\u{02DC}", "\u{02DC}"))
    .union(c("\u{02DE}", "\u{02DE}")) .union(c("\u{02E0}", "\u{02FF}"))
    .union(c("\u{0374}", "\u{0390}")) .union(c("\u{03AA}", "\u{03B0}"))
    .union(c("\u{03C2}", "\u{03C2}")) .union(c("\u{03CA}", "\u{0400}"))
    .union(c("\u{0402}", "\u{040F}")) .union(c("\u{0450}", "\u{0450}"))
    .union(c("\u{0452}", "\u{10FC}")) .union(c("\u{1160}", "\u{200F}"))
    .union(c("\u{2011}", "\u{2012}")) .union(c("\u{2017}", "\u{2017}"))
    .union(c("\u{201A}", "\u{201B}")) .union(c("\u{201E}", "\u{201F}"))
    .union(c("\u{2023}", "\u{2023}")) .union(c("\u{2028}", "\u{202F}"))
    .union(c("\u{2031}", "\u{2031}")) .union(c("\u{2034}", "\u{2034}"))
    .union(c("\u{2036}", "\u{203A}")) .union(c("\u{203C}", "\u{203D}"))
    .union(c("\u{203F}", "\u{2071}")) .union(c("\u{2075}", "\u{207E}"))
    .union(c("\u{2080}", "\u{2080}")) .union(c("\u{2085}", "\u{20A8}"))
    .union(c("\u{20AA}", "\u{20AB}")) .union(c("\u{20AD}", "\u{2102}"))
    .union(c("\u{2104}", "\u{2104}")) .union(c("\u{2106}", "\u{2108}"))
    .union(c("\u{210A}", "\u{2112}")) .union(c("\u{2114}", "\u{2115}"))
    .union(c("\u{2117}", "\u{2120}")) .union(c("\u{2123}", "\u{2125}"))
    .union(c("\u{2127}", "\u{212A}")) .union(c("\u{212C}", "\u{214E}"))
    .union(c("\u{2155}", "\u{215A}")) .union(c("\u{215F}", "\u{215F}"))
    .union(c("\u{216C}", "\u{216F}")) .union(c("\u{217A}", "\u{2184}"))
    .union(c("\u{219A}", "\u{21B7}")) .union(c("\u{21BA}", "\u{21D1}"))
    .union(c("\u{21D3}", "\u{21D3}")) .union(c("\u{21D5}", "\u{21E6}"))
    .union(c("\u{21E8}", "\u{21FF}")) .union(c("\u{2201}", "\u{2201}"))
    .union(c("\u{2204}", "\u{2206}")) .union(c("\u{2209}", "\u{220A}"))
    .union(c("\u{220C}", "\u{220E}")) .union(c("\u{2210}", "\u{2210}"))
    .union(c("\u{2212}", "\u{2214}")) .union(c("\u{2216}", "\u{2219}"))
    .union(c("\u{221B}", "\u{221C}")) .union(c("\u{2221}", "\u{2222}"))
    .union(c("\u{2224}", "\u{2224}")) .union(c("\u{2226}", "\u{2226}"))
    .union(c("\u{222D}", "\u{222D}")) .union(c("\u{222F}", "\u{2233}"))
    .union(c("\u{2238}", "\u{223B}")) .union(c("\u{223E}", "\u{2247}"))
    .union(c("\u{2249}", "\u{224B}")) .union(c("\u{224D}", "\u{2251}"))
    .union(c("\u{2253}", "\u{225F}")) .union(c("\u{2262}", "\u{2263}"))
    .union(c("\u{2268}", "\u{2269}")) .union(c("\u{226C}", "\u{226D}"))
    .union(c("\u{2270}", "\u{2281}")) .union(c("\u{2284}", "\u{2285}"))
    .union(c("\u{2288}", "\u{2294}")) .union(c("\u{2296}", "\u{2298}"))
    .union(c("\u{229A}", "\u{22A4}")) .union(c("\u{22A6}", "\u{22BE}"))
    .union(c("\u{22C0}", "\u{2311}")) .union(c("\u{2313}", "\u{2328}"))
    .union(c("\u{232B}", "\u{244A}")) .union(c("\u{24EA}", "\u{24EA}"))
    .union(c("\u{254C}", "\u{254F}")) .union(c("\u{2574}", "\u{257F}"))
    .union(c("\u{2590}", "\u{2591}")) .union(c("\u{2596}", "\u{259F}"))
    .union(c("\u{25A2}", "\u{25A2}")) .union(c("\u{25AA}", "\u{25B1}"))
    .union(c("\u{25B4}", "\u{25B5}")) .union(c("\u{25B8}", "\u{25BB}"))
    .union(c("\u{25BE}", "\u{25BF}")) .union(c("\u{25C2}", "\u{25C5}"))
    .union(c("\u{25C9}", "\u{25CA}")) .union(c("\u{25CC}", "\u{25CD}"))
    .union(c("\u{25D2}", "\u{25E1}")) .union(c("\u{25E6}", "\u{25EE}"))
    .union(c("\u{25F0}", "\u{2604}")) .union(c("\u{2607}", "\u{2608}"))
    .union(c("\u{260A}", "\u{260D}")) .union(c("\u{2610}", "\u{2613}"))
    .union(c("\u{2616}", "\u{261B}")) .union(c("\u{261D}", "\u{261D}"))
    .union(c("\u{261F}", "\u{263F}")) .union(c("\u{2641}", "\u{2641}"))
    .union(c("\u{2643}", "\u{265F}")) .union(c("\u{2662}", "\u{2662}"))
    .union(c("\u{2666}", "\u{2666}")) .union(c("\u{266B}", "\u{266B}"))
    .union(c("\u{266E}", "\u{266E}")) .union(c("\u{2670}", "\u{273C}"))
    .union(c("\u{273E}", "\u{2775}")) .union(c("\u{2780}", "\u{27E5}"))
    .union(c("\u{27F0}", "\u{2984}")) .union(c("\u{2987}", "\u{2E1D}"))
    .union(c("\u{303F}", "\u{303F}")) .union(c("\u{4DC0}", "\u{4DFF}"))
    .union(c("\u{A700}", "\u{A877}"))
    //  .union(c("\u{D800}", "\u{DB7F}")) // Surrogate pair. `UnicodeScalar` does not support these values.
    //  .union(c("\u{DB80}", "\u{DBFF}")) // Surrogate pair. `UnicodeScalar` does not support these values.
    //  .union(c("\u{DC00}", "\u{DFFF}")) // Surrogate pair. `UnicodeScalar` does not support these values.
    .union(c("\u{FB00}", "\u{FDFD}")) .union(c("\u{FE20}", "\u{FE23}"))
    .union(c("\u{FE70}", "\u{FEFF}")) .union(c("\u{FFF9}", "\u{FFFC}"))
    .union(c("\u{10000}", "\u{1D7FF}")) .union(c("\u{E0001}", "\u{E007F}"))

/// East Asian Wide (W)
/// All other characters that are always wide. These characters occur only in
/// the context of East Asian typography where they are wide characters (such
/// as the Unified Han Ideographs or Squared Katakana Symbols). This category
/// includes characters that have explicit halfwidth counterparts, along with
/// characters that have the UTR51 property Emoji_Presentation, with the exception
/// of the range U+1F1E6 REGIONAL INDICATOR SYMBOL LETTER A through U+1F1FF
/// REGIONAL INDICATOR SYMBOL LETTER Z.
///
/// See: http://unicode.org/reports/tr11/#ED4
/// https://github.com/audreyt/Unicode-EastAsianWidth/blob/master/lib/Unicode/EastAsianWidth.pm#L402-L422
let EastAsianWideCharacterSet = CharacterSet()
    .union(c("\u{1100}", "\u{115F}")) .union(c("\u{2329}", "\u{232A}"))
    .union(c("\u{2E80}", "\u{2FFB}")) .union(c("\u{3001}", "\u{303E}"))
    .union(c("\u{3041}", "\u{33FF}")) .union(c("\u{3400}", "\u{4DB5}"))
    .union(c("\u{4E00}", "\u{9FBB}")) .union(c("\u{A000}", "\u{A4C6}"))
    .union(c("\u{AC00}", "\u{D7A3}")) .union(c("\u{F900}", "\u{FAD9}"))
    .union(c("\u{FE10}", "\u{FE19}")) .union(c("\u{FE30}", "\u{FE6B}"))
    .union(c("\u{20000}", "\u{2A6D6}")) .union(c("\u{2A6D7}", "\u{2F7FF}"))
    .union(c("\u{2F800}", "\u{2FA1D}")) .union(c("\u{2FA1E}", "\u{2FFFD}"))
    .union(c("\u{30000}", "\u{3FFFD}"))
