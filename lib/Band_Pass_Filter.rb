class PassFilter   

    attr_accessor :soundwave, :low, :high, :array

    def initialize(soundwave, low_wave, high_wave)
        
        @soundwave = soundwave 

        @low = low_wave 

        @high = high_wave 

        @array = []

    end 

    def filter_check  

        @soundwave.each do |feq| 
                if feq > @high
                    @array.push(@high)
                elsif feq < @low
                    @array.push(@low)
                else
                    @array.push(feq)
            end
        end   

    end

end  


passfilter = PassFilter.new([60,10,45,60,1500], 20, 50)  

passfilter.filter_check 

p passfilter.array
