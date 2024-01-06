# frozen_string_literal: true

class GroupsController < ApplicationController
  def create
    Group.create(person_params)
  end

  private

  def person_params
    params.require(:group).permit(:name, :members)
  end
end
