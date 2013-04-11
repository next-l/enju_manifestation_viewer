class EnjuManifestationViewer::SetupGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def setup
    rake("enju_purchase_request_engine:install:migrations")
    inject_into_class 'app/models/manifestation.rb', Manifestation,
      "  enju_manifestation_viewer\n"
end
