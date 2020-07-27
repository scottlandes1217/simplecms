class SubjectsController < ApplicationController
  
  def index
    @subjects = Subject.sorted
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new({:name => 'Subject'})
  end

  def create
    #Instantiate a new object using form parameters
    @subject = Subject.new(subject_params)
    #Save the object
    if @subject.save
    #If save suceeds, redirect to user action
    redirect_to (subjects_path)
    else
    #If save fails, redisplay the form
    render('new')
    end
  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    #Find a new object using form parameters
    @subject = Subject.find(params[:id])
    #Update the object
    if @subject.update_attributes(subject_params)
    #If save suceeds, redirect to show action
    redirect_to(subject_path(@subject))
    else
    #If save fails, redisplay the form
    render('edit')
    end
  end

  def delete
    @subject = Subject.find(params[:id])
  end

  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy
    redirect_to(subjects_path)
  end

  private

    def subject_params
      params.require(:subject).permit(:name, :position, :visible)
    end

end
