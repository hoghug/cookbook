class InstructionsController < ApplicationController
  def index
    @instructions = Instruction.all
    render "instructions/index.html.erb"
  end

  def new
    @tags = Tag.all
    @instruction = Instruction.new
    render "instructions/new.html.erb"
  end

  def create
    @instruction = Instruction.new(params[:instruction])
    @tags = params[:tags]
    # send to join table, the selected tags and the instruction id
    @tags.each do |tag|
      @instruction.tags << tag
    end
    if @instruction.save
      redirect_to "/instructions/#{@instruction.id}"
    else
      render "instructions/new.html.erb"
    end
  end

  def show
    @instruction = Instruction.find(params[:id])
    render "instructions/show.html.erb"
  end

  def edit
    @instruction = Instruction.find(params[:id])
    render "instructions/edit.html.erb"
  end

  def update
    @instruction = Instruction.find(params[:id])
    if @instruction.update(params[:instruction])
      flash[:notice] = "This has been updated"
      redirect_to "/instructions/#{@instruction.id}"
    else
      render "instructions/edit.html.erb"
    end
  end

  def destroy
    @instruction = Instruction.find(params[:id])
    @instruction.destroy
    redirect_to "/instructions"
  end
end
