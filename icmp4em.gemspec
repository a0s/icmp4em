Gem::Specification.new do |s|
  s.name = "icmp4em"
  s.version = "0.0.3"
  s.date = "2009-04-03"
  s.authors = ["Jake Douglas", 'Fernando Alonso']
  s.email = "fedario@gmail.com"
  s.rubyforge_project = "icmp4em"
  s.has_rdoc = true
  s.summary = "Asynchronous implementation of ICMP ping using EventMachine"
  s.homepage = "http://www.github.com/yakischloba/icmp4em"
  s.description = "Asynchronous implementation of ICMP ping using EventMachine. Can be used to ping many hosts 
                  at once in a non-blocking fashion, with callbacks for success, timeout, and host failure/recovery 
                  based on specified threshold numbers."
  s.files = ["README",
             "examples/simple_example.rb",
             "examples/stateful_example.rb",
             "lib/icmp4em.rb",
             "lib/icmp4em/common.rb",
             "lib/icmp4em/handler.rb",
             "lib/icmp4em/icmpv4.rb"]
  s.add_dependency('eventmachine')
end
