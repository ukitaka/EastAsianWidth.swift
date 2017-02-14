//
//  UnicodeScalar+EastAsianWidth.swift
//  EastAsianWidth
//
//  Created by Yuki Takahashi on 2017/02/14.
//  Copyright © 2017年 waft. All rights reserved.
//

import Foundation

public extension UnicodeScalar {
    public var isInEastAsianAmbiguous: Bool {
        switch self.value {
        case 0x00A1...0x00A1: return true
        case 0x00A4...0x00A4: return true
        case 0x00A7...0x00A8: return true
        case 0x00AA...0x00AA: return true
        case 0x00AD...0x00AE: return true
        case 0x00B0...0x00B4: return true
        case 0x00B6...0x00BA: return true
        case 0x00BC...0x00BF: return true
        case 0x00C6...0x00C6: return true
        case 0x00D0...0x00D0: return true
        case 0x00D7...0x00D8: return true
        case 0x00DE...0x00E1: return true
        case 0x00E6...0x00E6: return true
        case 0x00E8...0x00EA: return true
        case 0x00EC...0x00ED: return true
        case 0x00F0...0x00F0: return true
        case 0x00F2...0x00F3: return true
        case 0x00F7...0x00FA: return true
        case 0x00FC...0x00FC: return true
        case 0x00FE...0x00FE: return true
        case 0x0101...0x0101: return true
        case 0x0111...0x0111: return true
        case 0x0113...0x0113: return true
        case 0x011B...0x011B: return true
        case 0x0126...0x0127: return true
        case 0x012B...0x012B: return true
        case 0x0131...0x0133: return true
        case 0x0138...0x0138: return true
        case 0x013F...0x0142: return true
        case 0x0144...0x0144: return true
        case 0x0148...0x014B: return true
        case 0x014D...0x014D: return true
        case 0x0152...0x0153: return true
        case 0x0166...0x0167: return true
        case 0x016B...0x016B: return true
        case 0x01CE...0x01CE: return true
        case 0x01D0...0x01D0: return true
        case 0x01D2...0x01D2: return true
        case 0x01D4...0x01D4: return true
        case 0x01D6...0x01D6: return true
        case 0x01D8...0x01D8: return true
        case 0x01DA...0x01DA: return true
        case 0x01DC...0x01DC: return true
        case 0x0251...0x0251: return true
        case 0x0261...0x0261: return true
        case 0x02C4...0x02C4: return true
        case 0x02C7...0x02C7: return true
        case 0x02C9...0x02CB: return true
        case 0x02CD...0x02CD: return true
        case 0x02D0...0x02D0: return true
        case 0x02D8...0x02DB: return true
        case 0x02DD...0x02DD: return true
        case 0x02DF...0x02DF: return true
        case 0x0300...0x036F: return true
        case 0x0391...0x03A9: return true
        case 0x03B1...0x03C1: return true
        case 0x03C3...0x03C9: return true
        case 0x0401...0x0401: return true
        case 0x0410...0x044F: return true
        case 0x0451...0x0451: return true
        case 0x2010...0x2010: return true
        case 0x2013...0x2016: return true
        case 0x2018...0x2019: return true
        case 0x201C...0x201D: return true
        case 0x2020...0x2022: return true
        case 0x2024...0x2027: return true
        case 0x2030...0x2030: return true
        case 0x2032...0x2033: return true
        case 0x2035...0x2035: return true
        case 0x203B...0x203B: return true
        case 0x203E...0x203E: return true
        case 0x2074...0x2074: return true
        case 0x207F...0x207F: return true
        case 0x2081...0x2084: return true
        case 0x20AC...0x20AC: return true
        case 0x2103...0x2103: return true
        case 0x2105...0x2105: return true
        case 0x2109...0x2109: return true
        case 0x2113...0x2113: return true
        case 0x2116...0x2116: return true
        case 0x2121...0x2122: return true
        case 0x2126...0x2126: return true
        case 0x212B...0x212B: return true
        case 0x2153...0x2154: return true
        case 0x215B...0x215E: return true
        case 0x2160...0x216B: return true
        case 0x2170...0x2179: return true
        case 0x2190...0x2199: return true
        case 0x21B8...0x21B9: return true
        case 0x21D2...0x21D2: return true
        case 0x21D4...0x21D4: return true
        case 0x21E7...0x21E7: return true
        case 0x2200...0x2200: return true
        case 0x2202...0x2203: return true
        case 0x2207...0x2208: return true
        case 0x220B...0x220B: return true
        case 0x220F...0x220F: return true
        case 0x2211...0x2211: return true
        case 0x2215...0x2215: return true
        case 0x221A...0x221A: return true
        case 0x221D...0x2220: return true
        case 0x2223...0x2223: return true
        case 0x2225...0x2225: return true
        case 0x2227...0x222C: return true
        case 0x222E...0x222E: return true
        case 0x2234...0x2237: return true
        case 0x223C...0x223D: return true
        case 0x2248...0x2248: return true
        case 0x224C...0x224C: return true
        case 0x2252...0x2252: return true
        case 0x2260...0x2261: return true
        case 0x2264...0x2267: return true
        case 0x226A...0x226B: return true
        case 0x226E...0x226F: return true
        case 0x2282...0x2283: return true
        case 0x2286...0x2287: return true
        case 0x2295...0x2295: return true
        case 0x2299...0x2299: return true
        case 0x22A5...0x22A5: return true
        case 0x22BF...0x22BF: return true
        case 0x2312...0x2312: return true
        case 0x2460...0x24E9: return true
        case 0x24EB...0x254B: return true
        case 0x2550...0x2573: return true
        case 0x2580...0x258F: return true
        case 0x2592...0x2595: return true
        case 0x25A0...0x25A1: return true
        case 0x25A3...0x25A9: return true
        case 0x25B2...0x25B3: return true
        case 0x25B6...0x25B7: return true
        case 0x25BC...0x25BD: return true
        case 0x25C0...0x25C1: return true
        case 0x25C6...0x25C8: return true
        case 0x25CB...0x25CB: return true
        case 0x25CE...0x25D1: return true
        case 0x25E2...0x25E5: return true
        case 0x25EF...0x25EF: return true
        case 0x2605...0x2606: return true
        case 0x2609...0x2609: return true
        case 0x260E...0x260F: return true
        case 0x2614...0x2615: return true
        case 0x261C...0x261C: return true
        case 0x261E...0x261E: return true
        case 0x2640...0x2640: return true
        case 0x2642...0x2642: return true
        case 0x2660...0x2661: return true
        case 0x2663...0x2665: return true
        case 0x2667...0x266A: return true
        case 0x266C...0x266D: return true
        case 0x266F...0x266F: return true
        case 0x273D...0x273D: return true
        case 0x2776...0x277F: return true
        case 0xE000...0xF8FF: return true
        case 0xFE00...0xFE0F: return true
        case 0xFFFD...0xFFFD: return true
        case 0xE0100...0xE01EF: return true
        case 0xF0000...0xFFFFD: return true
        case 0x100000...0x10FFFD: return true
        default:
            return false
        }
    }
}
