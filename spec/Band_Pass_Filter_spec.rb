require 'Band_Pass_Filter'  

let (:passfilter) {Passfilter.new([60,10,45,60,1500], 20, 50) }

describe PassFilter do 
    it 'should output an array of a sound wave' do
        expect(passfilter.soundwave).to eq([60,10,45,60,1500])
    end 

    it 'should output an array of a sound wave' do
        passfilter = PassFilter.new([60,10,45,60,1500], 20, 50) 
        expect(passfilter.low).to eq(20)
    end 

    it 'should output an array of a sound wave' do
        passfilter = PassFilter.new([60,10,45,60,1500], 20, 50) 
        expect(passfilter.high).to eq(50)
    end 

    describe 'filter_check' do
        it 'it should chenage the sound wave to the filter set' do
            passfilter = PassFilter.new([60,10,45,60,1500], 20, 50)  
            passfilter.filter_check 
            expect(passfilter.array).to eq([50,20,45,50,50])
        end
    end
 end