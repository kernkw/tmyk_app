class FactsController < ApplicationController
  def create
    Fact.create(params)
  end
end
