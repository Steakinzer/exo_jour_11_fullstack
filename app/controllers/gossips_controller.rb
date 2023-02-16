class GossipsController < ApplicationController
before_action :log

  def index
    # Méthode qui récupère tous les potins et les envoie à la view index (index.html.erb) pour affichage
  end

  def show
    @gossip = Flopssip.all
    @user = User.all
    @city = City.all
    @id = params[:id]
    @findgossip = Flopssip.find(params[:id])
    @comment = Comment.where(flopssip_id: params[:id])
  end

  def new
    @f = Flopssip.new# Méthode qui crée un potin vide et l'envoie à une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
  end

  def create
    @f = Flopssip.new(title: params[:title], content: params[:body], user_id: session[:user_id])
    if @f.save
      redirect_to '/'
    else
      @f.errors.full_messages
      render :new
    end
    
    # Méthode qui créé un potin à partir du contenu du formulaire de new.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params (ton meilleur pote)
    # Une fois la création faite, on redirige généralement vers la méthode show (pour afficher le potin créé)
  end

  def edit
    @gossip = Flopssip.all
    @user = User.all
    @city = City.all
    @id = params[:id]
    @findgossip = Flopssip.find(params[:id])
    @f = @findgossip
    # Méthode qui récupère le potin concerné et l'envoie à la view edit (edit.html.erb) pour affichage dans un formulaire d'édition
  end

  def update
    @f = Flopssip.find(params[:id])
    if my_potin?
      if @f.update(title: params[:title], content: params[:body], user_id: session[:user_id])
        redirect_to '/'
      else
        @f.errors.full_messages
        puts "$"*60
        render :new
      end
    else
      puts "tu peux pas edit c'est pas a toi"
    end
    # Méthode qui met à jour le potin à partir du contenu du formulaire de edit.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params
    # Une fois la modification faite, on redirige généralement vers la méthode show (pour afficher le potin modifié)
  end

  def destroy
    @flop = Flopssip.find(params[:id])
    if my_potin?
    @flop.destroy
    else 
      puts "c'est pas ton potin"
    end
    redirect_to '/'
    # Méthode qui récupère le potin concerné et le détruit en base
    # Une fois la suppression faite, on redirige généralement vers la méthode index (pour afficher la liste à jour)
  end

  private

  def log
    unless logged_in?
      puts "$"*100
      puts "Il faut vous connecter"
      redirect_to new_session_path
    end
  end

 

end
