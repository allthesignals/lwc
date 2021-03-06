class CountiesController < ApplicationController

  autocomplete :geography, :name, :extra_data => [:census_id, :geography_type]

  def index
    @geographies = County.all
  end

  def show
    @geography = County.find(params[:id])
    gon.contributions = @geography.aggregations.select("familycomposition, house_cost, childcare_cost, health_cost, food_cost, trans_cost, other_cost, minwage_hrly, income_hrly, poverty_hrly")
  end
end