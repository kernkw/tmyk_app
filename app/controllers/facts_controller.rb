class FactsController < ApplicationController
  def create
    query = params.permit :url, :parse_key
    Fact.create(query)
  end
end
