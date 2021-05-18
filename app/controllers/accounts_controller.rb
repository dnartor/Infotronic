class AccountsController < ApplicationController
    skip_before_action :verify_authenticity_token
	before_action :set_recipe,
only: [:show, :update, :destroy]
# GET /todos
def index
@recipes = Account.all
end
# GET /todos/:id
def show
@recipe = Account.find(params[:id])
#json_response(@recipes)
end
def new
    @recipe = Account.new
end
# POST /todos
def create

    @recipe = Account.new(recipe_params)
    if @recipe.save
    redirect_to @recipe
    else
        render 'new'
    end
    end
    
def edit
        @recipe = Account.find(params[:id])
end	   

# PUT /todos/:id
def update 
    @recipe = Account.find(params[:id])
    
    if @recipe.update(recipe_params)
        redirect_to @recipe
    else
        render 'edit'
    end
end



# DELETE /todos/:id
def destroy 
@recipes.destroy!
head :no_content
end

private
def recipe_params
params.permit(:nombre,:apellidos,:telefono,:cpostal,:direccion,:dni,:pais,:email, :encrypted_password)
end
def set_recipe
@recipes = Account.find(params[:id])
end
end
