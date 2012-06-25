
PKG_FILES = FileList[
  'Rakefile', 'README.md',
  'lib/**/*',
  'rails_generators/**/*'
]
require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "NSObvject.rb"
    gem.summary = %q{Active Record Rails models to native Objective-C.}
    gem.description = %q{Active Record Rails models to native Objective-C.  It allows you to generate Objective-C Models of your Active Record resources.}
    gem.email = "jamespaolantonio@gmail.com"
    gem.homepage = "https://github.com/jPaolantonio/NSObject.rb"
    gem.authors = ["James Paolantonio"]
    gem.files = PKG_FILES.to_a
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

task :test => :check_dependencies

task :default => :test