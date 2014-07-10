require 'spec_helper'

describe Non_profit do
  it 'should respond to link' do
    non_profit = Non_profit.create(link: "https://www.google.com", random_string: 'abcdefg')
    url.should respond_to(:link)
  end
end