# frozen_string_literal: true

require 'test_helper'

class InputControllerTest < ActionDispatch::IntegrationTest
  test 'should get input' do
    get input_input_url
    assert_response :success
  end

  test 'var should be uniq' do
    assert_response :success if @queries.uniq?
  end
end
