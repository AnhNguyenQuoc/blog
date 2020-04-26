require 'rails_helper'

RSpec.describe "Articles", type: :request do
  let!(:article) { create_list(:article, 10) }
  let(:article_id) { article.first.id }
  let!(:user) { create(:user) } 
  let(:headers) { valid_headers }

  describe 'GET /articles' do
    before { get '/articles' }

    it "return articles" do 
      expect(json).not_to be_empty
    end

    it "return status code 200 " do
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /articles' do
    let(:valid_params) do
      { title: "Hello", description: "123123", link: "https://google.com" }.to_json
    end
    
    context "when request attributes is valid" do 
      before { post "/articles", params: valid_params, headers: headers}

      it "return status code 201" do
        expect(response).to have_http_status(201)
      end
    end

    context "when request attributes is invalid" do
      before { post "/articles", params: {}, headers: headers }

      it "return status code 422" do
        expect(response).to have_http_status(422)
      end
    end
  end

  describe "Update /articles" do
    before { put "/articles/#{article_id}", params: { title: "Update" }.to_json , headers: headers }

    context "when request is valid" do 
      it "returns status code 200" do
        expect(response).to have_http_status(204)
      end
    end
  end

  describe "delete /articles/1" do
    before { delete "/articles/#{article_id}", headers: headers }

    context "when request is valid" do
      it "returns status code 200" do
        expect(response).to have_http_status(204)
      end
    end
  end
end
