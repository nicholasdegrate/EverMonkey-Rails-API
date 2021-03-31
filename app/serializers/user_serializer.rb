class UserSerializer < BaseSerializer
    attribute :username
    attribute :email
    attribute :profile_image

    has_many :note_books
end
  