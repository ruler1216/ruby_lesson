class HealthsController < ApplicationController
  before_action :set_q
  def top
  end

  def index
    @health=Health.all
    @results=@q.result
  end

  def show
    @health=Health.all
    @results=@q.result
  end

  def new
    @health=Health.new
    @date=Date.today
  end

  def create
    @health=Health.new(health_params)
    @date=Date.today
    @health.save_time=@date.strftime("%Y-%m-%d")
    if @health.save
      redirect_to(healths_url, notice: "送信を完了しました。")
    else
      render :new
    end
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
