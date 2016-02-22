class SitesController < ApplicationController
def index
 @sites = Site.all
end

def create
  @site = Site.new(site_params)
  @site.save
  @sites=Site.all
  @site=Site.new
end

def edit
	@site= Site.find(params[:id])
	@sites=Site.all

end

def update
	@site= Site.find(params[:id])
	@site.update(site_params)
	@sites= Site.all
	@site= Site.new
	render 'create.js'
end

def destroy
	@site = Site.find(params[:id])
	@site.destroy
	@site= Site.all
	@site= Site.new
	render 'create.js'
end

private

def site_params
 params.require(:site).permit(:name)
end

end
