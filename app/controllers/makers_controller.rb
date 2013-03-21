class MakersController < ApplicationController

  def index
    @makers = Maker.all
  end

  def new
  end

  def create
    # http://resources2.news.com.au/images/2012/09/27/1226482/758034-tardar-sauce-the-cat.jpg
    if Maker.create(params['maker'])
      redirect_to "/makers"
    end
  end

  def update
    # raise params.inspect
    @maker = Maker.find(params['id'])
    if @maker.update_attributes(params['maker'])
      redirect_to "/makers"
    else
      redirect_to "/makers/#{params['id']}/edit"
    end
  end

  def edit
    @maker = Maker.find(params['id'])
  end

end