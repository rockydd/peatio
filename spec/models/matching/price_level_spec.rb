require 'spec_helper'

describe Matching::PriceLevel do

  subject { Matching::PriceLevel.new('1.0'.to_d) }

  it "should remove order" do
    o1 = Matching.mock_order(type: :ask)
    o2 = Matching.mock_order(type: :ask)
    o3 = Matching.mock_order(type: :ask)
    subject.add o1
    subject.add o2
    subject.add o3
    subject.remove o2
    subject.dump.should == [o1.label, o3.label]
  end

end
