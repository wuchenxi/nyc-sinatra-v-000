class FiguresController < ApplicationController
  get '/figures' do
    erb :"/figures/index"
  end
  
  get '/figures/new' do
    erb :"/figures/new"
  end
  post '/figures' do
    @cur=Figure.create(params[:figure])
    if params[:title][:name]!="" then @cur.titles.create(params[:title]) end
     if params[:landmark][:name]!="" then @cur.landmarks.create(params[:landmark]) end
    redirect "/figures/#{@cur.id.to_s}"
  end

  get '/figures/:id' do
    @cur=Figure.find(params[:id].to_i)
    erb :"/figures/show"
  end

  get '/figures/:id/edit' do
     @cur=Figure.find(params[:id].to_i)
    erb :"/figures/edit"
  end
    post '/figures/:id' do
    @cur=Figure.find(params[:id].to_i).update(params[:figure])
    if params[:title][:name]!="" then @cur.titles.create(params[:title]) end
     if params[:landmark][:name]!="" then @cur.landmarks.create(params[:landmark]) end
    redirect "/figures/#{@cur.id.to_s}"
  end
  
end
