class RolsController < ApplicationController
  before_action :set_rol, only: [:show, :edit, :update, :destroy]
  skip_before_filter :verify_authenticity_token

  # GET /rols
  # GET /rols.json
  def index
    if user_signed_in? && current_user.rol_id == 1
      redirect_to '/admi'
       @users = User.all
    else
       if  user_signed_in? &&  current_user.rol_id == 4
         redirect_to '/organizer'
      elsif   user_signed_in?
         redirect_to '/home'
      end
    end
  end

  def home
    if current_user.rol_id != 1
      @users = User.all
    else
      redirect_to '/'
    end
  end

  # GET /rols/1
  # GET /rols/1.json
  def show
  end

  # GET /rols/new
  def new
    @rol = Rol.new
  end

  # GET /rols/1/edit
  def edit
  end
  

  def role_admi
    @user=User.find(params[:id])
    @user.rol_id = 1
    @user.save
    redirect_to :back
  end

  def role_jefe
    @user=User.find(params[:id])
    @user.rol_id = 2
    @user.save
    redirect_to :back
  end

  def role_miembro
    @user=User.find(params[:id])
    @user.rol_id = 3
    @user.save
    redirect_to :back
  end

  def role_organizador
    @user=User.find(params[:id])
    @user.rol_id = 4
    @user.save
    redirect_to :back
  end

  def admi
     @users = User.all
  end

  def organizer
    @contests = Contest.all 
    @events = Event.all
  end

  def remove
    @user=User.find(params[:id])
    @user.destroy
    redirect_to :back
  end

  def save
      @users=User.all
      @user=User.new
      @user.email=params[:email]
      @user.password=params[:password]
      @user.rol_id = 3
      @users.each do |user|
       if @user.email == user.email
        create_user
       end
      end
      @user.save
      redirect_to '/'
  end

  def edit_user
    @user=User.find(params[:id])
  end

  def create_user
    @user=User.new
  end

  # POST /rols
  # POST /rols.json
  def create
    @rol = Rol.new(rol_params)

    respond_to do |format|
      if @rol.save
        format.html { redirect_to @rol, notice: 'Rol was successfully created.' }
        format.json { render action: 'show', status: :created, location: @rol }
      else
        format.html { render action: 'new' }
        format.json { render json: @rol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rols/1
  # PATCH/PUT /rols/1.json
  def update
    respond_to do |format|
      if @rol.update(rol_params)
        format.html { redirect_to @rol, notice: 'Rol was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @rol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rols/1
  # DELETE /rols/1.json
  def destroy
    @rol.destroy
    respond_to do |format|
      format.html { redirect_to rols_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rol
      @rol = Rol.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rol_params
      params.require(:rol).permit(:name)
    end
end
