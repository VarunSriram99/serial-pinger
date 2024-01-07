# frozen_string_literal: true

class GroupsController < ApplicationController
  def index
    render status: :ok, json: { groups: Group.all }
  end

  def create
    elements = person_params[:text].split(' ')
    Group.create(name: elements[0], members: elements.drop(1).join(' '))
  end

  private

  def person_params
    params.permit(:text)
  end
end
