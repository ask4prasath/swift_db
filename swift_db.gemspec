# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{swift_db}
  s.version = "0.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Prasath V Ram"]
  s.date = %q{2010-12-09}
  s.description = %q{Stores data in a B+tree structure}
  s.email = %q{ask4prasath@gmail.com}
  s.extra_rdoc_files = ["README.rdoc", "lib/a.rb", "lib/common/comparison.rb", "lib/db.rb", "lib/root/binary.rb", "lib/root/internal_node.rb", "lib/root/leaf.rb", "lib/root/table.rb", "lib/root/tree.rb", "lib/swift_db.rb"]
  s.files = ["Manifest", "README.rdoc", "Rakefile", "lib/a.rb", "lib/common/comparison.rb", "lib/db.rb", "lib/root/binary.rb", "lib/root/internal_node.rb", "lib/root/leaf.rb", "lib/root/table.rb", "lib/root/tree.rb", "lib/swift_db.rb", "swift_db.gemspec"]
  s.homepage = %q{https://github.com/ask4prasath/swift_db}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Swift_db", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{swift_db}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Stores data in a B+tree structure}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
