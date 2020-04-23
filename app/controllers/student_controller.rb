class StudentController < ApplicationController
    skip_before_action :verify_authenticity_token
    def create
        render(plain: "student created")
    end
end