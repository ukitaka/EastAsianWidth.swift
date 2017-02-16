Pod::Spec.new do |s|
  s.name         = "EastAsianWidth"
  s.version      = "1.0.0"
  s.summary      = "Extension of `UnicodeScalar` to deal with East Asian Width"

  s.description  = <<-DESC
  Extension of `UnicodeScalar` to deal with East Asian Width.
  The most generally use case is to classify unicode scalar value as **Fullwidth** (全角) or **Halfwidth** (半角).
  East Asian Width is specified as Unicode® Standard Annex #11.
  see: http://www.unicode.org/unicode/reports/tr11/
  DESC

  s.homepage     = "https://github.com/ukitaka/EastAsianWidth.swift"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "ukitaka" => "yuki.takahashi.1126@gmail.com" }

  s.ios.deployment_target = "9.0"
  s.osx.deployment_target = "10.10"
  s.watchos.deployment_target = "2.0"
  s.tvos.deployment_target = "9.0"

  s.source       = { :git => "https://github.com/ukitaka/EastAsianWidth.swift.git", :tag => "#{s.version}" }
  s.source_files = "Sources/UnicodeScalar+EastAsianWidth.swift"
  s.requires_arc = true
end

