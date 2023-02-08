lass Api::V1::ConnectionTestsController < ApplicationController

def index
    @steps = Step.all

    render json: @steps
  end

  def create
    # look up if I should get a JS date from front end or use rails datetime
    steps = Step.create!(
        steps: params['steps']['steps']
    )
  end
end