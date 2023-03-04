class HealthsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @health=Health.new
  end

  def create
    health=Health.new(health_params)
    health.save!
    redirect_to(healths_url, notice: "送信を完了しました。")
  end

  private

  def health_params
    params.require(:health).permit(:year, :school_class, :class_number, :name, :commute, :temperature, :etc)
  end
end
