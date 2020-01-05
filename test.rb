require_relative 'module'
class ModuleTester
  include MyFirstModule
end 

obj = ModuleTester.new
obj.ruby_version
puts obj.add("12","2019")