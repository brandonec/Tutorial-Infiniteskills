class WorksController < ApplicationController
	def index
		if (params[:days])
			@works = Work.recentdays(params[:days]).order('datetimeperformed desc')
		else
			@works = Work.all.order('datetimeperformed desc')
		end
	end

	def show
		@work = Work.find(params[:id])
	end

	def new
		@work = Work.new
	end

	def create
		@work = Work.new(params[:work].permit(:project_id, :user_id, :datetimeperformed, :hours))
		respond_to do |format|
			if @work.save
				format.html { redirect_to @work, notice: 'Work Created' }
				format.js { }
			else
				format.html { render 'new' }
				format.js { }
			end
		end
	end

	def edit
		@work = Work.find(params[:id])
	end

	def update
		@work = Work.find(params[:id])

		if @work.update(params[:work].permit(:project_id, :user_id, :datetimeperformed, :hours))
			flash[:notice] = 'Work Updated'
			redirect_to @work
		else
			render 'edit'
		end
	end
end
