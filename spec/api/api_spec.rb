# -*- encoding: utf-8 -*-
require 'rails_helper'
require 'json_expressions/rspec'
#require 'factory_girl_rails'

describe API::Base do
  describe 'GET /api/customer' do
    context '正常な投稿' do
      subject { get '/api/customer' }

      describe 'GET /customer' do
        before(:each){ subject }

        it '200OKをリターンすること' do
          expect(response.status).to eq 200
        end
      end
    end
  end

  describe 'POST /api/history' do
    context '正常な投稿' do
      let!(:url) { "/api/history/testid" }
      let!(:request_param) do
        { meter: 1919 }
      end
      subject { post(url, request_param) }

      describe 'POST /api/history' do
        before(:each){ subject }

        it '200OKをリターンすること' do
          expect(response.status).to eq 201
        end
      end
    end
  end
end