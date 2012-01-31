=begin
Copyright (c) 2011 Litle & Co.

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.
=end

require 'rake/gempackagetask'
spec = Gem::Specification.new do |s| 
  s.name         = "LitleOnline"
  s.summary      = "Ruby SDK produced by Litle & Co. for online transaction processing using Litle XML format v8.10"
  s.description  = File.read(File.join(File.dirname(__FILE__), 'DESCRIPTION'))
  s.requirements = 
      [ 'Contact  ClientSDKSupport@litle.com for more information' ]
  s.version     = "8.10.0"
  s.author      = "Litle & Co"
  s.email       = "RubySupport@litle.com"
  s.homepage    = "http://www.litle.com"
  s.platform    = Gem::Platform::RUBY
  s.required_ruby_version = '>=1.9'
  s.files       = Dir['**/**']
  s.executables = [ 'sample_driver.rb', 'Setup.rb' ]
  s.test_files  = Dir["test/unit*.rb"]
  s.has_rdoc    = true
  s.add_dependency('i18n')
  s.add_dependency('xml-simple')
  s.add_dependency('activesupport')
  s.add_dependency('xml-object')
end
Rake::GemPackageTask.new(spec).define