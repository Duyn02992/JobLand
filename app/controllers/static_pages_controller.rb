class StaticPagesController < ApplicationController
  def home
    @bookmark = Bookmark.new
    @approvedJobs = Job.all.job_new.all_approved_true.paginate page: params[:page], per_page: 10
    @job_slides = Job.job_slide.job_new
    @q = Job.ransack params[:q]
    @jobs = @q.result.includes(:company)
    respond_to do |format|
      format.html
      format.json { render json: @jobs }
    end
  end

   def index
  end
end
