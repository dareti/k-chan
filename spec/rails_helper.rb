# coding: utf-8

# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require 'spec_helper'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require_relative 'support/init_db'
ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!

  config.before(:suite) do
    # DBのデータ削除およびSeedの作成
    InitDB.init
    FactoryGirl.factories.each { |f| FactoryGirl.create(f.name) }
    # FactoryGirlのload pathにテスト用のFactoryを追加する
    # Seed作成でdefinition_file_pathsに登録されたFactoryを全生成しているため、
    # InitBearDB後にpathを追加してテスト毎のデータを使えるようにする
    FactoryGirl.definition_file_paths = [Rails.root + 'spec/factories']
    FactoryGirl.find_definitions
    DatabaseCleaner.strategy = :truncation, { except: %w(history customer) }
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

  config.include FactoryGirl::Syntax::Methods
end
