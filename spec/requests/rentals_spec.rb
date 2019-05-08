require 'rails_helper'

RSpec.describe "Rentals", type: :request do

  let!(:rentals) { create_list(:rental, 8) }
  let(:rental_id) { rentals.first.id }

  describe 'GET /rentals' do
    before { get '/rentals' }

    it 'returns the rentals' do
      expect(json).not_to be_empty
      expect(json.size).to eq(8)
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /rentals/:id' do
    before { get "/rentals/#{rental_id}" }

    context 'when the record exists' do
      it 'returns the rental and status code 200' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(rental_id)
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:rental_id) { 100 }

      it 'returns a not found msg and status code 404' do
        expect(response).to have_http_status(404)
        expect(response.body).to match("{\"message\":\"Couldn't find Rental with 'id'=100\"}")
      end
    end
  end

  describe 'POST /rentals' do
    let(:valid_attributes) { attributes_for(:rental) }

    context 'when the request is valid' do
      it 'creates a rental and returns a 201 status' do
        expect { post '/rentals', params: valid_attributes }.to change(Rental, :count).by(1)
        puts valid_attributes
        expect(json).to include(valid_attributes.stringify_keys)
	      post '/rentals', params: valid_attributes
        expect(response).to have_http_status(201)
      end
    end

  end

  describe 'PUT /rentals/:id' do
    let(:valid_attributes) { build(:rental) }

    it 'returns 200 when the record exists' do
      put "/rentals/#{rental_id}", params: {title: 'new-title'}
      expected = Rental.find(rental_id)
      expect(expected.title).to eq('new-title')
      expect(response).to have_http_status(200)
      end
    end

  describe 'DELETE /rentals/:id' do
    it 'returns a 204 code after deleting' do
      expect { delete "/rentals/#{rental_id}" }.to change(Rental, :count).by(-1)
      expect(response).to have_http_status(204)
    end
  end


end
