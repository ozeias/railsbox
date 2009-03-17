require 'spec_helper'

describe "Array" do
  before do
    @array = %w( foobar a2 a30 a3 a20 a13bb20 )
    @block = [{ :name => 'foobar' } , { :name => 'a2' }, { :name => 'a30' }, { :name => 'a3' }, { :name => 'a20' }, { :name => 'a13bb20' }]
  end
  
  it "should array with block in natural order" do 
    @block.natural_sort { |h| h[:name] }.should == [{ :name => 'a2' } , { :name => 'a3' }, { :name => 'a13bb20' }, { :name => 'a20' }, { :name => 'a30' }, { :name => 'foobar' }]
  end
  
  it "should array in natural order" do 
    @array.natural_sort.should == %w( a2 a3 a13bb20 a20 a30 foobar )
  end
end