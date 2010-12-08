 require 'rubygems'  
 require 'rake'  
 require 'echoe'  
   
 Echoe.new('swift_db', '0.1.3') do |p|
   p.description     = "Stores data in a B+tree structure"  
   p.url             = "https://github.com/ask4prasath/swift_db"  
   p.author          = "Prasath V Ram"  
   p.email           = "ask4prasath@gmail.com"  
   p.ignore_pattern  = ["tmp/*", "script/*"]  
   p.development_dependencies = []  
 end  
   
 Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
