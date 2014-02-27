$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/osx'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  app.name = 'AtomStatusBar'
  app.eval_support = true
  app.icon = 'Atom'
  app.info_plist['LSUIElement'] = true
  app.codesign_certificate = "Mac Developer: Taylor Buley (5G9XBYYZQ2)"
end
