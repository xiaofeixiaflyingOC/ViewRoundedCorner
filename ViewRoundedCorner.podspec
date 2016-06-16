Pod::Spec.new do |s|
s.name         = "ViewRoundedCorner"
s.version      = "1.0.0"
s.summary      = "shengxin inc ios common framework"
s.description  = <<-DESC
                 UIView及UIImageView切圆角 UIView及UIImageView切圆角 UIView及UIImageView切圆角
                   DESC
s.homepage     = "https://github.com/xiaofeixiaflyingOC/ViewRoundedCorner"
s.license      = "MIT"
s.author             = { "shengxin" => "shengxin@tuxing2010.com" }
s.source       = { :git => "https://github.com/xiaofeixiaflyingOC/ViewRoundedCorner.git", :commit => "64737ca9720c28ea3f4a2e95e065821a35bc3779", :tag => "1.0.0" }
s.requires_arc = true
s.ios.deployment_target = '8.0'
s.source_files          = 'ViewRoundedCorner/ViewRoundedCorner/*.{h,m}'
s.exclude_files			= "Classes/Exclude"
end
