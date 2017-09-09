class RoomsController < ApplicationController
  
  before_action :set_room, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:show]
  
  def new
     @room = current_user.rooms.build
  end

  def edit
  end

  def show
  end

  def create
          @room = current_user.rooms.build(room_params)
      if @room.save
            redirect_to @room, notice:"Votre annonce a été ajouté avec succès" #redirige vers la page de l’annonce et notifie l’utilisateur de la réussite de la création
      else
           render :new # s’il y a une erreur, redirige vers la page de création new

      end
    end

  def update
           if @room.update(room_params)
              redirect to @room, notice:"Modification enregistrée..."
       else
           render :edit
       end
  end

  def index
    @rooms = current_user.rooms 
  end
  
  private

      def set_room
             @room = Room.find(params[:id])
      end
      
      def room_params

          params.require(:room).permit(:school, :address, :sexe, :room_type, :home_type, :nb_place, :nb_coloc, :price, :start_date, :bail, :apl, :tv, :wifi, :ascenceur, :terasse, :lave_linge, :four, :piscine, :voiture, :seche_linge, :machine_laver, :taille, :salle_bain, :description, :fumeur, :sportif, :fetard, :chill, :worker, :numero, :email, :facebook, :summary, :listing_name, :active)
 end
end
