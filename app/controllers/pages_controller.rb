class PagesController < ApplicationController

    def index 
        #has a view page with text under H1
    end

    def show
        puts "Hi I am some text" #will only print in terminal
        # render(plain: "Hi")   #allows to show code without view page
        puts params[:name] #againt puts will print this param in console

        render(plain: params[:name]) #YOU CAN ONLY RENDER ONCE!!!
    end
end