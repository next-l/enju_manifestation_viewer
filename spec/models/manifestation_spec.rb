# -*- encoding: utf-8 -*-
require 'spec_helper'

describe Manifestation do
  fixtures :manifestations

  it 'should have youtube_id' do
    manifestations(:manifestation_00022).youtube_id.should eq "BSHBzd9ftDE"
  end
end
