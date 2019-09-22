module Api::V1
  class ApiController < ApplicationController
    include JSONAPI::ActsAsResourceController
  end
end