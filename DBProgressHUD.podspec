Pod::Spec.new do |s|

  s.name         = "DBProgressHUD"
  s.version      = "1.0.2"
  s.summary      = "Dabay tech : DBProgressHUD is based on MBProgressHUD."
  s.homepage     = "https://github.com/Dabay-Tech/DBProgressHUD"
  s.license      = "MIT"
  s.author       = { "Tao Fei" => "taofei0610@gmail.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/Dabay-Tech/DBProgressHUD.git", :tag => s.version.to_s}
  s.source_files = "DBProgressHUD/**/*.{h,m}"
  s.resource     = 'DBProgressHUD/DBProgressHUD.bundle'
  s.frameworks   = "CoreGraphics",'QuartzCore',"UIKit"
  s.requires_arc = true

end
