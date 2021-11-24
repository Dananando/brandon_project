class AuthorsController < ApplicationController
  def index
    @author = Author.all
  end

  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    # puts "author creation process"
    @author = Author.new(author_params)

    if @author.save
      redirect_to @author
    else
      render :new
    end
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])

    if @author.update(author_params)
      @author
    else
      # TBD
    end
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy

    # To be improved
    puts "Destruction complete"
  end

  private

  def author_params
    params.require(:author).permit(:first_name, :last_name, :birth_date, :birth_place)
  end
end
