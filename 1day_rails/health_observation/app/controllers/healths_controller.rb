class HealthsController < ApplicationController
  before_action :set_q, only: [:show, :search]
  def index
  end

  def show
    @health=Health.all
  end

  def new
    @health=Health.new
  end

  def create
    health=Health.new(health_params)
    health.save!
    redirect_to(healths_url, notice: "送信を完了しました。")
  end

  def search
    @results=@q.result
  end

  private

  def health_params
    params.require(:health).permit(:year, :school_class, :class_number, :name, :commute, :temperature, :etc)
  end

  def set_q
    @q=Health.ransack(params[:q])
  end
end
