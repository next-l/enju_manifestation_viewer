class AddDisplayNameTranslationsToCarrierType < ActiveRecord::Migration[5.2]
  def change
    [
      :agent_types,
      :agent_relationship_types,
      :carrier_types,
      :content_types,
      :create_types,
      :form_of_works,
      :frequencies,
      :identifier_types,
      :licenses,
      :medium_of_performances,
      :produce_types,
      :manifestation_relationship_types,
      :realize_types
    ].each do |table|
      add_column table, :display_name_translations, :jsonb, default: {}, null: false
    end
  end
end
