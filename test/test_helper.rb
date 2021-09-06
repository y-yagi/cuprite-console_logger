# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "cuprite/console_logger"
require_relative "support/test_app"

Capybara.register_driver(:cuprite) do |app|
  Capybara::Cuprite::Driver.new(app)
end

require "minitest/autorun"
