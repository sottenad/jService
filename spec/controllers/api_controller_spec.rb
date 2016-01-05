require 'rails_helper'

RSpec.describe ApiController, type: :controller do
  describe '#clues' do
    let!(:recent_clue) { FactoryGirl.create(:clue, airdate: Time.now - 1.week ) }
    let!(:cheap_clue)  { FactoryGirl.create(:clue, value: 100 ) }
    let!(:new_clue )   { FactoryGirl.create(:clue, airdate: Time.now ) }

    it 'only returns the proper valued clues' do
      get :clues, value: cheap_clue.value, format: :json
      expect(response).to be_success

      body = JSON.parse(response.body)
      expect(body.count).to eq(1)

      clue = body.first
      expect(clue["id"]).to eq(cheap_clue.id)
    end

    it 'only returns clues within the proper airdates' do
      get :clues, min_date: recent_clue.airdate.to_s, max_date: (new_clue.airdate + 1.day).to_s, format: :json
      expect(response).to be_success

      body = JSON.parse(response.body)
      expect(body.count).to eq(2)

      response_ids = body.map { |h| h["id"] }
      expect(response_ids).to include(recent_clue.id)
      expect(response_ids).to include(new_clue.id)
    end

    it 'only returns clues from the proper category' do
      get :clues, category: cheap_clue.category_id, format: :json
      expect(response).to be_success
      body = JSON.parse(response.body)
      expect(body.count).to eq(1)

      clue = body.first
      expect(clue["id"]).to eq(cheap_clue.id)
    end

    it 'follows the correct offset' do
      get :clues, offset: 2, format: :json
      expect(response).to be_success
      body = JSON.parse(response.body)
      expect(body.count).to eq(1)
    end
  end

  describe '#random' do
    let!(:clue1) { FactoryGirl.create(:clue) }
    let!(:clue2) { FactoryGirl.create(:clue) }

    it 'returns the default of one clue' do
      get :random, format: :json
      expect(response).to be_success
      body = JSON.parse(response.body)
      expect(body.count).to eq(1)
    end

    it 'returns the passed count of clues' do
      get :random, count: 2, format: :json
      expect(response).to be_success
      body = JSON.parse(response.body)
      expect(body.count).to eq(2)
    end
  end

  describe '#categories' do
    let!(:category1) { FactoryGirl.create(:category) }
    let!(:category2) { FactoryGirl.create(:category) }

    it 'returns the correct count' do
      get :categories, count: 1, format: :json
      expect(response).to be_success
      body = JSON.parse(response.body)
      expect(body.count).to eq(1)
    end

    it 'returns the correct offset' do
      get :categories, offset: 1, format: :json
      expect(response).to be_success
      body = JSON.parse(response.body)
      expect(body.count).to eq(1)
    end
  end

  describe '#single_category' do
    let(:category) { FactoryGirl.create(:category) }
    it 'returns the right category for id' do
      get :single_category, id: category.id, format: :json
      expect(response).to be_success

      body = JSON.parse(response.body)
      expect(body["id"]).to eq(category.id)
      expect(body["title"]).to eq(category.title)
      expect(body["clues_count"]).to eq(category.clues_count)
    end
  end

  describe '#mark_invalid' do
    let!(:clue) { FactoryGirl.create(:clue) }

    it 'increments the invalid_count on selected clue' do
      expect{
        get :mark_invalid, id: clue.id, format: :json
        expect(response).to be_success
      }.to change{ clue.reload.invalid_count }.from(nil).to(1)
    end
  end
end

