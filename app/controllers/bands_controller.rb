class BandsController < ApplicationController
  def update
    @band = Band.find(params[:id])
    num = params[:band][:order].to_i
    
    if @band.update(band_params)
      flash[:success] = "#{@band.name}のバンド順は正常に更新されました"
      redirect_to request.referer
    else
      flash.now[:danger] = 'バンド順は更新されませんでした'
      render root_path
    end
  end
  
  private
  
  def band_params
    params.require(:band).permit(:order)
  end
end