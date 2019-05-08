class RentalSerializer < ActiveModel::Serializer
  type :rental
  attributes :id, :title, :owner, :city, :category, :bedrooms, :image, :description, :created_at, :updated_at
end
