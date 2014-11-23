class SharesController < ApplicationController
  def index
    @shares = Share.all
  end

  def show
    @share = Share.find(params[:id])
  end

  def new
    @share = Share.new
  end

  def create
    @share = Share.new
    @share.shareowner = params[:shareowner]
    @share.sharewith = params[:sharewith]
    @share.entryid = params[:entryid]

    if @share.save
      redirect_to "/shares", :notice => "Share created successfully."
    else
      render 'new'
    end
  end

  def edit
    @share = Share.find(params[:id])
  end

  def update
    @share = Share.find(params[:id])

    @share.shareowner = params[:shareowner]
    @share.sharewith = params[:sharewith]
    @share.entryid = params[:entryid]

    if @share.save
      redirect_to "/shares", :notice => "Share updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @share = Share.find(params[:id])

    @share.destroy

    redirect_to "/shares", :notice => "Share deleted."
  end
end
