require 'rails_helper'

RSpec.describe HousesController, type: :controller do
  let(:valid_attributes) do
    {
      price: 200.50,
      details: 'This house the maximum security you can think of',
      about: '2Bed room flat',
      image: 'This is an avatar',
      owner: 'Odogwu'
    }
  end

  let(:invalid_attributes) do
    {
      owner: nil
    }
  end

  describe 'GET #index' do
    it 'returns a successful response' do
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      house = create(:house)
      get :show, params: { id: house.to_param }
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "returns a 201 status code" do
        post :create, params: { house: valid_attributes }
        expect(response).to have_http_status(:success)
      end
    end
  end

  context "with invalid params" do
      it "does not create a new  House" do
        expect do
          post :create, params: { house: invalid_attributes }
        end.to change(House, :count).by(0)
      end

      it "returns a 200 status code" do

        post :create, params: { house: invalid_attributes }
        expect(response).to have_http_status(:ok)
      end
  end
end
