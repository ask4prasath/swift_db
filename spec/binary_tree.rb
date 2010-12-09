require File.join(File.dirname(__FILE__), 'spec_helper.rb')

describe DB::Core do

  it "should throw error when order is less than 3" do
    lambda { DB::Core::Table.new(2)}.should raise_error
  end


  end