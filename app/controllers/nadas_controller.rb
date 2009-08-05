class NadasController < ApplicationController
  # GET /nadas
  # GET /nadas.xml
  def index
    @nadas = Nada.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @nadas }
    end
  end

  # GET /nadas/1
  # GET /nadas/1.xml
  def show
    @nada = Nada.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @nada }
    end
  end

  # GET /nadas/new
  # GET /nadas/new.xml
  def new
    @nada = Nada.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @nada }
    end
  end

  # GET /nadas/1/edit
  def edit
    @nada = Nada.find(params[:id])
  end

  # POST /nadas
  # POST /nadas.xml
  def create
    @nada = Nada.new(params[:nada])

    respond_to do |format|
      if @nada.save
        flash[:notice] = 'Nada was successfully created.'
        format.html { redirect_to(@nada) }
        format.xml  { render :xml => @nada, :status => :created, :location => @nada }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @nada.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /nadas/1
  # PUT /nadas/1.xml
  def update
    @nada = Nada.find(params[:id])

    respond_to do |format|
      if @nada.update_attributes(params[:nada])
        flash[:notice] = 'Nada was successfully updated.'
        format.html { redirect_to(@nada) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @nada.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /nadas/1
  # DELETE /nadas/1.xml
  def destroy
    @nada = Nada.find(params[:id])
    @nada.destroy

    respond_to do |format|
      format.html { redirect_to(nadas_url) }
      format.xml  { head :ok }
    end
  end
end
