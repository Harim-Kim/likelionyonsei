class AssignmentsController < ApplicationController
  before_action :need_login
  layout 'gentelella'
  def index
    @num = params[:id]
    @assignments = Assignment.where(assign_id: @num)
    @assign = Assign.find(@num)
    
    @submission = Assignment.where(assign_id: @num,
                                    user_id: current_user.id)
                                    
    if @submission.check
      redirect_to '/assignment/' + params[:id] + '/submit'
    end
  end

  def show
   @assignment = Assignment.where(assign_id: params[:assign_id],
                                  user_id: params[:user_id]).take
  end

  def new
    @num = params[:id]
    @assign = Assign.find(@num)
    submission = Assignment.where(assign_id: @num,
                                    user_id: current_user.id)
    unless submission.check
      redirect_to '/assignment/' + @num.to_s
    end
  end

  def edit
    
  end

  def create
    img_post = Assignment.create(title: params[:title], 
                          content: params[:content],
                          c9_url: params[:c9_url],
                          assign_id: params[:an],
                          user_id: current_user.id)
    my_file = params[:pic]
    uploader = YonseiUploader.new
    uploader.store!(my_file)
    img_post.img_url = uploader.url
    img_post.save
    
    redirect_to '/assignment/' + params[:an].to_s

  end

  def update

  end

  def destroy
    
  end

end
