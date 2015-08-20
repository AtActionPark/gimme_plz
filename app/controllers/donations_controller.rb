class DonationsController < ApplicationController
  before_action :authenticate_user!

  def create
    @donation = current_user.donations.build(donations_params)
    @amount=0
    if @donation.save
      p = Project.find(donations_params[:project_id])
      @amount = p.amount.to_i + donations_params[:amount].to_i
      p.update_attribute(:amount, @amount)
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js 
      end
    else
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js {}
      end
    end
      

  end

  private
    def donations_params
      params.require(:donation).permit(:project_id, :amount)
    end
end
