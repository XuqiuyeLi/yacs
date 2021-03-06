require 'rails_helper'

RSpec.describe "sections#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v6/sections", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'sections',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'works' do
      expect(SectionResource).to receive(:build).and_call_original
      expect {
        make_request
      }.to change { Section.count }.by(1)
      expect(response.status).to eq(201)
    end
  end
end
