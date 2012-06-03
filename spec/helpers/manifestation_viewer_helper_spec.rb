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
describe EnjuManifestationViewer::ManifestationViewerHelper do
  fixtures :manifestations

  it "should render google_books preview template" do
    helper.google_book_search_preview(manifestations(:manifestation_00001).isbn).should =~ /<div id='google_book_search_content'>/
  end

  it "should render youtube template" do
    helper.embed_content(manifestations(:manifestation_00022)).should =~ /<param name="movie" value="http:\/\/www.youtube.com\/v\//
  end

  it "should render nicovideo template" do
    helper.embed_content(manifestations(:manifestation_00023)).should =~ /<script type="text\/javascript" src="http:\/\/ext.nicovideo.jp\/thumb_watch\//
  end

  it "should render flickr template" do
    helper.embed_content(manifestations(:manifestation_00217)).should =~ /<object width="400" height="300"><param name="flashvars"/
  end

  it "should render scribd template" do
    helper.embed_content(manifestations(:manifestation_00001)).should =~ /<td colspan="2" style="width: 700px">/
  end
end
