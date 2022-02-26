class HelloController < ApplicationController
    layout 'hello'

    def index
        @header = 'layout sample'
        @footer = 'copyright Kani-Tono 2022.'
        @title = 'New Layout'
        @msg = 'this is sample page!'
    end
end
