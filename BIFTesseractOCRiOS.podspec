Pod::Spec.new do |s|
  s.header_dir		     = 'TesseractOCR'
  s.name                    = 'BIFTesseractOCRiOS'
  s.version                 = '5.0.0'

  s.summary                 = 'Use Tesseract OCR in iOS projects written in either Objective-C or Swift.'

  s.homepage                = 'https://github.com/gali8/Tesseract-OCR-iOS'
  s.documentation_url       = 'https://github.com/gali8/Tesseract-OCR-iOS/blob/master/README.md'

  s.license                 = { :type => 'MIT',
                                :file => 'LICENSE.md' }

  s.authors                 = { 'Daniele Galiotto' => 'genius@g8production.com',
                                'Kevin Conley' => 'kcon@stanford.edu'}

  s.source                  = { :git => 'https://github.com/bitsfabrik/Tesseract-OCR-iOS.git', :tag => s.version.to_s }

  s.platform                = :ios, "9.0"
  s.source_files            = 'TesseractOCR/*.{h,m,mm}', 'TesseractOCR/include/**/*.h'
  s.private_header_files    = 'TesseractOCR/include/**/*.h'
  s.requires_arc            = true
  s.frameworks              = 'UIKit', 'Foundation'

  s.ios.deployment_target   = "10.0"
  s.ios.vendored_library    = 'TesseractOCR/lib/*.a'
  s.xcconfig                = { 'OTHER_LDFLAGS' => '-lz',
                                'CLANG_CXX_LIBRARY' => 'compiler-default' }
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end
