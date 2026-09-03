class CharactersController < ApplicationController
  before_action :set_character, only: %i[ show edit update destroy ]

  # GET /characters
  def index
    @characters = Character.all
  end

  # GET /characters/1
  def show
  end

  # GET /characters/new
  def new
    @character = Character.new
  end

  # GET /characters/1/edit
  def edit
  end

  # POST /characters
  def create
    @character = Character.new(character_params)

    if @character.save
      redirect_to @character, notice: "Character was successfully created."
    else
      render :new, status: :unprocessable_content
    end
  end

  # PATCH/PUT /characters/1
  def update
    if @character.update(character_params)
      redirect_to @character, notice: "Character was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_content
    end
  end

  # DELETE /characters/1
  def destroy
    @character.destroy!
    redirect_to characters_path, notice: "Character was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character
      @character = Character.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def character_params
      params.expect(character: [ :character ])
    end
end
