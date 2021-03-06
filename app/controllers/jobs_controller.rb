class JobsController < ApplicationController
	before_action :find_job, only: [:show, :edit, :update, :destroy]

	def index
		if org_signed_in?
			@jobs = Job.page(params[:page]).per(25).order("created_at DESC")
		else
			redirect_to root_path
		end
	end

	def show
	end

	def new
		if org_signed_in?	
			@job = current_org.jobs.build
		else
			redirect_to root_path
		end
	end

	def create
		@job = current_org.jobs.build(job_params)

		if @job.save
			redirect_to @job
		else
			render "New"
		end
	end

	def edit
	end

	def update
		if @job.update(job_params)
			redirect_to @job
		else
			render "Edit"
		end
	end

	def destroy
		@job.destroy
		redirect_to root_path
	end

	private

	def job_params
		params.require(:job).permit(:title, :description, :url)
	end

	def find_job
		@job = Job.find(params[:id])
	end

end