class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model

  include EnjuSeed::EnjuUser
end

Item.include(EnjuLibrary::EnjuItem)
Manifestation.include(EnjuManifestationViewer::EnjuManifestation)
