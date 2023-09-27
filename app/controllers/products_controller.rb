class ProductsController < ApplicationController

    def stringed
        @category = Category.find_by(name: "Strings")
        @products = @category.products
    end
    
    def books
        @category = Category.find_by(name: "Books")
        @products = @category.products
    end

    def percussion
        @category = Category.find_by(name: "Percussion")
        @products = @category.products
    end

    def wind
        @category = Category.find_by(name: "Wind")
        @products = @category.products
    end

    def pianos
        @category = Category.find_by(name: "Pianos")
        @products = @category.products
    end

end