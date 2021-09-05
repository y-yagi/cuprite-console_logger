# frozen_string_literal: true

require "capybara/cuprite/browser"

module Cuprite
  module ConsoleLogger
    module Browser
      def initialize(options = nil)
        @console_logs = []
        super
      end

      def console_logs
        @console_logs
      end
    end
  end
end

Capybara::Cuprite::Browser.prepend(Cuprite::ConsoleLogger::Browser)
