class LandmarksController < ApplicationController
 get '/landmarks' do
    erb :"/landmarks/index"
  end
  
  get '/landmarks/new' do
    erb :"/landmarks/new"
  end
  
  post '/landmarks' do
    @params[:landmark][:year_completed]=@params[:landmark][:year_completed].to_i
    @cur=Landmark.create(params[:landmark])
    redirect "/landmarks/#{@cur.id.to_s}"
  end

  get '/landmarks/:id' do
    @landmark=Landmark.find(params[:id].to_i)
    erb :"/landmarks/show"
  end

  get '/landmarks/:id/edit' do
     @cur=Landmark.find(params[:id].to_i)
    erb :"/landmarks/edit"
  end
  
  post '/landmarks/:id' do
    @params[:landmark][:year_completed]=@params[:landmark][:year_completed].to_i
      @cur=Landmark.find(params[:id].to_i).update(params[:landmark])
      redirect "/landmarks/#{@cur.id.to_s}"
  end
  
end
