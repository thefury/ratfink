require 'ratfink/application'

describe Ratfink::Application do
  it "should expose a run method" do
    subject.should respond_to :run
  end


end
