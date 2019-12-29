require 'rails_helper'

describe Manifestation, solr: true do
  fixtures :all

  it "should get youtube_id" do
    manifestations(:manifestation_00022).youtube_id.should eq 'BSHBzd9ftDE'
  end

  it "should get nicovideo_id" do
    manifestations(:manifestation_00023).nicovideo_id.should eq 'sm3015373'
  end
end
