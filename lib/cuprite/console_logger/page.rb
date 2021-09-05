# frozen_string_literal: true

require "capybara/cuprite/page"

module Cuprite
  module ConsoleLogger
    module Page
      def subscribe
        super

        on("Runtime.consoleAPICalled") do |params|
          @browser.console_logs << params
        end
      end
    end
  end
end

Capybara::Cuprite::Page.prepend(Cuprite::ConsoleLogger::Page)
