class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]

  # GET /activities
  # GET /activities.json
  def index

    if params[:search].present?
      @activities = Activity.near(params[:search], 5)
    else
      @activities = Activity.all
    end
    
    @hash = Gmaps4rails.build_markers(@activities) do |activity, marker|
      marker.lat activity.latitude
      marker.lng activity.longitude
      marker.infowindow activity.name
    # marker.infowindow activity.description
  end
end

  # GET /activities/1
  # GET /activities/1.json
  def show
    @user_activity = UserActivity.new
    set_activity
    @comment = Comment.new
    @hash = Gmaps4rails.build_markers(@activity) do |activity, marker|
      marker.lat activity.latitude
      marker.lng activity.longitude
      marker.infowindow activity.name && activity.description
      # marker.infowindow activity.description
    end
  end

  # GET /activities/new
  def new
    @activity = Activity.new
  end

  # GET /activities/1/edit
  def edit
  end

  # POST /activities
  # POST /activities.json
  def create
    @activity = Activity.new(activity_params)

    respond_to do |format|
      if @activity.save
        puts "*****************CHANGED****************"
        puts @activity.inspect
        format.html { redirect_to @activity, notice: 'Activity was successfully created.' }
        format.json { render :show, status: :created, location: @activity }
      else
        format.html { render :new }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activities/1
  # PATCH/PUT /activities/1.json
  def update
    respond_to do |format|
      if @activity.update(activity_params)
        format.html { redirect_to @activity, notice: 'Activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity }
      else
        format.html { render :edit }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activities/1
  # DELETE /activities/1.json
  def destroy
    # <td><%= link_to 'Changed Your Mind?', user_activity_path(@user_activity), method: :delete, data: { confirm: 'Are you sure?' }, :class => "delete_button" %></td>
    @activity.destroy
    respond_to do |format|
      format.html { redirect_to activities_url, notice: 'Activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def joined_user?
    # <% if activity.users.where("#{current_user.username}") %>
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity
      @activity = Activity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_params
      params.require(:activity).permit(:name, :description, :level, :game, :address, :latitude, :longitude, :user_id, :start_time, :end_time)
    end
  end
