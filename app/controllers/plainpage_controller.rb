class PlainpageController < ApplicationController
  #before_action :authenticate_user!
  layout 'gentelella'
  def index
    @sl = Sl.all.sort
    @fl = Fl.all.sort
    
    @weekly = Weekly.last
    
    @assign = Assign.all.reverse
    @notice = Notice.last(6)
    @post = Post.last(6)
  end
  
  def accounting
    @account = Account.all
    @sl = Sl.all.sort
    @fl = Fl.all.sort
  end


#####################Notice########################

  def notice_list
    @all_notice = Notice.all
    @sl = Sl.all.sort
    @fl = Fl.all.sort
  end
  
  def notice
    @notice = Notice.find(params[:id])
    @sl = Sl.all.sort
    @fl = Fl.all.sort
  end
  
  
####################Post####################

  def post_list
    @all_post = Post.all.reverse
    @sl = Sl.all.sort
    @fl = Fl.all.sort
  end
  
  def posts
    @posts = Post.find(params[:id])
    @replies = Reply.where(post_id: params[:id])
    @sl = Sl.all.sort
    @fl = Fl.all.sort
  end

  def update_post
    @the_post = Post.find(params[:id])
    unless @the_post.user_id == current_user.id
      redirect_to '/post_list'
    end
    @sl = Sl.all.sort
    @fl = Fl.all.sort
  end
  
  def updating_post
    the_post = Post.find(params[:id])
    the_post.title = params[:title]
    the_post.content = params[:content]
    my_file = params[:pic]
    uploader = YonseiUploader.new
    uploader.store!(my_file)
    the_post.img_url = uploader.url
    the_post.save
    
    redirect_to '/post/' + params[:id].to_s
    @sl = Sl.all.sort
    @fl = Fl.all.sort
  end
  
  def delete_post
    the_post = Post.find(params[:id])
    if the_post.user_id == current_user.id
      the_post.destroy
    end
    redirect_to '/post_list'
    @sl = Sl.all.sort
    @fl = Fl.all.sort
  end
  
  def create_post
    img_post = Post.create(title: params[:title], 
                          content: params[:content],
                          user_id: current_user.id)
    my_file = params[:pic]
    uploader = YonseiUploader.new
    uploader.store!(my_file)
    img_post.img_url = uploader.url
    img_post.save            
    redirect_to '/post_list' 
    @sl = Sl.all.sort
    @fl = Fl.all.sort
  end
  
  def create_reply
    Reply.create(content: params[:content],
                 user_id: current_user.id,
                 post_id: params[:id_of_post])
    redirect_to '/post/' + params[:id_of_post].to_s
    @sl = Sl.all.sort
    @fl = Fl.all.sort
  end
  
  #####################Assignment################
  
  def create_assignment
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
    
    redirect_to '/assignment/' + params[:an].to_s + '/' + current_user.id.to_s
    @sl = Sl.all.sort
    @fl = Fl.all.sort
  end
  
  
  
  def assignment
      @num = params[:id]
      @submission = Assignment.where(assign_id: @num,
                                     user_id: current_user.id)

    if @submission.check
      redirect_to '/assignment/' + params[:id] + '/submit'
    else

      @assignments = Assignment.where(assign_id: @num)
      @assign = Assign.find(@num)    
    end
    @sl = Sl.all.sort
    @fl = Fl.all.sort
  end
  
  def show_assignment
    @assignment = Assignment.where(assign_id: params[:assign_id],
                                   user_id: params[:user_id]).take
                                   
    @comments = Comment.where(assignment_id: @assignment.id)
    @sl = Sl.all.sort
    @fl = Fl.all.sort
  end
  
  def submit_assignment
    
    @num = params[:id]
    @assign = Assign.find(@num)
    submission = Assignment.where(assign_id: @num,
                                    user_id: current_user.id)
    unless submission.check
      redirect_to '/assignment/' + @num.to_s
    end
    @sl = Sl.all.sort
    @fl = Fl.all.sort
  end
  
  def update_assignment
    
    @assignment = Assignment.find(params[:num])
    unless @assignment.user_id == current_user.id
      redirect_to '/plainpage/index'
    end
    
    @sl = Sl.all.sort
    @fl = Fl.all.sort
  end
  
  def updating_assignment
    a = Assignment.find(params[:num])
    a.title = params[:title]
    a.content = params[:content]
    a.c9_url = params[:c9_url]
    my_file = params[:pic]
    uploader = YonseiUploader.new
    uploader.store!(my_file)
    a.img_url = uploader.url
    a.save
    
    redirect_to '/plainpage/index'
  end
  
  
  
  def create_comment
    Comment.create(content: params[:content],
                   user_id: current_user.id,
                   assignment_id: params[:id_of_assignment])
    redirect_to :back
    @sl = Sl.all.sort
    @fl = Fl.all.sort
  end
  def new_post
   @sl = Sl.all.sort
    @fl = Fl.all.sort
  end
 
end
