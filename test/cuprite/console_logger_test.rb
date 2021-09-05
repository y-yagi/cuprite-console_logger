# frozen_string_literal: true

require "test_helper"

class Cuprite::ConsoleLoggerTest < Minitest::Test
  def setup
    @session = Capybara::Session.new(:cuprite, TestApp)
  end

  def teardown
    @session.driver.quit
  end

  def test_console_logs
    @session.visit("/console_log")
    logs = @session.driver.browser.console_logs
    assert_equal "log", logs[0]["type"]
    assert_equal "This is a log", logs[0]["args"][0]["value"]
    assert_equal "error", logs[1]["type"]
    assert_equal "This is an error", logs[1]["args"][0]["value"]
  end
end
