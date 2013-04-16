# -*- encoding: utf-8 -*-
require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the PatronsHelper. For example:
#
# describe PatronsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end
describe EnjuManifestationViewer::BookJacketHelper do
  fixtures :manifestations

  it "should get screenshot", :vcr => true do
    helper.screenshot_tag(manifestations(:manifestation_00003)).should eq "<a href=\"http://www.slis.keio.ac.jp/\"><img alt=\"これからの生命科学研究者のためのバイオ特許入門講座\" border=\"0\" height=\"128\" itemprop=\"image\" src=\"http://mozshot.nemui.org/shot?http://www.slis.keio.ac.jp/\" width=\"128\" /></a>"
  end

  it "should get book jacket" do
    helper.book_jacket_tag(manifestations(:manifestation_00001)).should =~ /<div id=\"gbsthumbnail\" class=\"book_jacket\"><\/div>/
  end

  it "should generate a link to Amazon" do
    helper.amazon_link(manifestations(:manifestation_00001).isbn).should =~ /http:\/\/www.amazon.co.jp\/dp\/4798002062/
  end
end
