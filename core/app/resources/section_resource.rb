class SectionResource < ApplicationResource
	belongs_to :listing

  attribute :shortname, :string
  attribute :crn, :string
  attribute :seats, :integer
  attribute :seats_taken, :integer
  attribute :conflict_ids, :array
  attribute :periods, :array
  attribute :uuid, :string
  attribute :instructor_ids, :array
  attribute :listing_id, :integer, only: [:filterable]
end
