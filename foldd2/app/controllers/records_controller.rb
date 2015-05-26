class RecordsController < ApplicationController
  def index
    @records = Record.all
  end

  def show
    @record = Record.find(params[:id])
  end

  def new
    @record = Record.new
  end

  def create
    @record = Record.new
    @record.user_id = params[:user_id]
    @record.pud = params[:pud]
    @record.put = params[:put]
    @record.dod = params[:dod]
    @record.dot = params[:dot]

    if @record.save
      redirect_to "/records", :notice => "Record created successfully."
    else
      render 'new'
    end
  end

  def edit
    @record = Record.find(params[:id])
  end

  def update
    @record = Record.find(params[:id])

    @record.user_id = params[:user_id]
    @record.pud = params[:pud]
    @record.put = params[:put]
    @record.dod = params[:dod]
    @record.dot = params[:dot]

    if @record.save
      redirect_to "/records", :notice => "Record updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @record = Record.find(params[:id])

    @record.destroy

    redirect_to "/records", :notice => "Record deleted."
  end
end
