class ParkingmetersController < ApplicationController

    def index
        @parkingmeters = Parkingmeter.all

        if params[:filter_status] != "" && params[:filter_status] != nil
            @parkingmeters = @parkingmeters.select {|parkingmeter| parkingmeter.status == params[:filter_status]}
        end
        if params[:filter_color] != "" && params[:filter_color] != nil
            @parkingmeters = @parkingmeters.select {|parkingmeter| parkingmeter.color == params[:filter_color]}
        end
        if params[:filter_height] != "" && params[:filter_height] != nil
            @parkingmeters = @parkingmeters.select {|parkingmeter| parkingmeter.height == params[:filter_height].to_i}
        end

    end

    def show
        @parkingmeter = Parkingmeter.find(params[:id])
    end

    def create
        # render plain: params[:parkingmeter].inspect
        @parkingmeter = Parkingmeter.new(parkingmeter_params)

        # too_close = !Parkingmeter.find(@parkingmeter() - 0.0000082) || !Parkingmeter.find(@parkingmeter.latitude + 0.0000082)

        if @parkingmeter.save #&& !too_close
            redirect_to @parkingmeter
        else
            render json: @parkingmeter.errors.full_messages, status: 422
        end
    end

    def new

    end

    def edit
        @parkingmeter = Parkingmeter.find(params[:id])

        render :edit
    end

    def update
        @parkingmeter = Parkingmeter.find(params[:id])

        # render plain: @parkingmeter.inspect

        if @parkingmeter.update(parkingmeter_params)
            
            redirect_to @parkingmeter
        else

            render :edit
            # render json: @parkingmeter.errors.full_messages, status: 422
        end

    end

    def destroy
        @parkingmeter = Parkingmeter.find(params[:id])
        @parkingmeter.destroy

        redirect_to parkingmeters_path
    end

    private
    
    def parkingmeter_params
        params.require(:parkingmeter).permit(:name, :longitude, :latitude, :status, :color, :height, :filter_status, :filter_color, :filter_height)
    end
    
end
