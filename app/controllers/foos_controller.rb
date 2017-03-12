class FoosController < ApplicationController
  before_action :set_foo, only: [:show, :update, :destroy]

  # POST /foos
  def create
    @foo = Foo.new(foo_params)
    person = { "name":"Bruce", "age":25 }
     person.name
    if @foo.save
      render json: @foo, status: :created, location: @foo
    else
      render json: @foo.errors, status: :unprocessable_entity
    end
  end
end
