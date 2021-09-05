# frozen_string_literal: true

require_relative "lib/cuprite/console_logger/version"

Gem::Specification.new do |spec|
  spec.name          = "cuprite-console_logger"
  spec.version       = Cuprite::ConsoleLogger::VERSION
  spec.authors       = ["Yuji yaginuma"]
  spec.email         = ["yuuji.yaginuma@gmail.com"]

  spec.summary       = "Add the feature that accesses the console logs to `Cuprite`."
  spec.homepage      = "https://github.com/y-yagi/cuprite-console_logger"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "cuprite"
  spec.add_development_dependency "sinatra"
end
