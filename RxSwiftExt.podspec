Pod::Spec.new do |s|
  s.name         = "RxSwiftExt"
  s.version      = "5.1.11"
  s.summary      = "RxSwift operators not found in the core distribtion"
  s.description  = <<-DESC
    A collection of operators for RxSwift adding commonly requested operations not found in the core distribution
    of RxSwift.
                   DESC
  s.homepage     = "https://github.com/RxSwiftCommunity/RxSwiftExt"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "RxSwiftCommunity" => "https://github.com/RxSwiftCommunity" }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.watchos.deployment_target = '3.0'
  s.tvos.deployment_target = '9.0'

  s.source       = { :git => "https://github.com/nusjeff/RxSwiftExt.git" }

  s.subspec "Core" do |cs|
    cs.source_files  = "Source/RxSwift", "Source/Tools"
    cs.frameworks  = "Foundation"
    cs.dependency "RxSwift", '5.1.11'
  end

  s.subspec "RxCocoa" do |co|
    co.source_files  = "Source/RxCocoa"
    co.frameworks  = "Foundation"
    co.dependency "RxCocoa", '6.8.0'
    co.dependency "RxSwiftExt/Core"
  end
end
