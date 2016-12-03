class HomeController < ApplicationController
  def index
  	@constructora = Constructora.all
  	respond_to do |format|
  		format.html
  		format.json {render :json => @constructora}
  	end
  end

  def show
  	@constructora = Constructora.find(params[:id])
  	@proyectos = @constructora.proyectos
  	respond_to do |format|
  		format.html
  		format.json {render :json => @proyectos}
  	end
  end

  def show_all
    @proyecto = Proyecto.find(params[:id])
    @interiors = @proyecto.interiors
    @exteriors = @proyecto.exteriors
    
    respond_to do |format|
      format.html
      format.json {render :show_json}
    end
  end

  def show_json
  end

  def show_recorrido
    @proyecto = Proyecto.find(params[:id])
    @recorrido = @proyecto.recorrido_virtual

    respond_to do |format|
      format.html
      format.json {render :json => @recorrido}
    end
  end

  def show_personalizar
    @objetos = Personalization.all
    respond_to do |format|
      format.html
      format.json {render :json => @objetos}
    end
  end


=begin
  def show_interior
  	@proyecto = Proyecto.find(params[:id])
  	@interiors = @proyecto.interiors
  	respond_to do |format|
  		format.html
  		format.json {render :json => @interiors}
  	end
  end

  def show_exterior
    @proyecto = Proyecto.find(params[:id])
    @exterior = @proyecto.exteriors
    respond_to do |format|
      format.html
      format.json {render :json => @exterior}
    end
  end
=end

end
