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

# == Schema Information
#
# Table name: manifestations
#
#  id                              :bigint           not null, primary key
#  original_title                  :text             not null
#  title_alternative               :text
#  title_transcription             :text
#  classification_number           :string
#  manifestation_identifier        :string
#  date_of_publication             :datetime
#  date_copyrighted                :datetime
#  created_at                      :datetime         not null
#  updated_at                      :datetime         not null
#  access_address                  :string
#  language_id                     :integer          default(1), not null
#  carrier_type_id                 :integer          default(1), not null
#  start_page                      :integer
#  end_page                        :integer
#  height                          :integer
#  width                           :integer
#  depth                           :integer
#  price                           :integer
#  fulltext                        :text
#  volume_number_string            :string
#  issue_number_string             :string
#  serial_number_string            :string
#  edition                         :integer
#  note                            :text
#  repository_content              :boolean          default(FALSE), not null
#  lock_version                    :integer          default(0), not null
#  required_role_id                :integer          default(1), not null
#  required_score                  :integer          default(0), not null
#  frequency_id                    :integer          default(1), not null
#  subscription_master             :boolean          default(FALSE), not null
#  title_alternative_transcription :text
#  description                     :text
#  abstract                        :text
#  available_at                    :datetime
#  valid_until                     :datetime
#  date_submitted                  :datetime
#  date_accepted                   :datetime
#  date_captured                   :datetime
#  pub_date                        :string
#  edition_string                  :string
#  volume_number                   :integer
#  issue_number                    :integer
#  serial_number                   :integer
#  content_type_id                 :integer          default(1)
#  year_of_publication             :integer
#  month_of_publication            :integer
#  fulltext_content                :boolean
#  serial                          :boolean
#  statement_of_responsibility     :text
#  publication_place               :text
#  extent                          :text
#  dimensions                      :text
#  memo                            :text
#
