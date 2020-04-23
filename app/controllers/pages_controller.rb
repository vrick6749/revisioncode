class PagesController < ApplicationController

    def index 
        #has a view page with text under H1
        @verdict = false
        @list_of_people = ["ike", "harry", "dave"]
    end

    def show
        puts "Hi I am some text" #will only print in terminal
        # render(plain: "Hi")   #allows to show code without view page
        puts params[:name] #againt puts will print this param in console

        # render(plain: params[:name]) #YOU CAN ONLY RENDER ONCE!!!

        render(html: "<h1>Hello World</h1>".html_safe) #renders in html format and  html safe ensure no malicious software is in the code
    end
end