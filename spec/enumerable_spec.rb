require 'spec_helper'

describe "Enumerable" do
  before do
    @hash  = { :one => 1, :two => 2, :three => 3, :four => 4 }
    @array = [1, 2, 3, 4]
  end
  
  it "should hash" do 
    create_hash(@hash).should == @hash
  end
  
  it "should message with empty hash" do 
    create_hash({}).should == 'no hits found'
  end
  
  it "should array" do 
    create_array(@array).should == @array
  end
  
  it "should message with empty array" do 
    create_array([]).should == 'no hits found'
  end
  
  private
    def create_hash(hash)
      hash.each do |x|
      end.else do
        return 'no hits found'
      end
      hash
    end
    
    def create_array(array)
      array.each do |x|
      end.else do
        return 'no hits found'
      end
      array
    end
end