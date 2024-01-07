# frozen_string_literal: true

class GroupsController < ApplicationController
  def index
    render status: :ok, json: { groups: Group.all }
  end

  def create
    Group.create(person_params)
  end

  private

  def person_params
    params.require(:group).permit(:name, :members)
  end
end
