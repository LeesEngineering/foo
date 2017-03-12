class FoosController < ApplicationController
  before_action :set_foo, only: [:show, :update, :destroy]

  # POST /foos
  def create
  # @foo = Foo.new(foo_params)
    #person = { "name":"Bruce", "age":25 }
  render json: {value:"bar"}

  end
end
