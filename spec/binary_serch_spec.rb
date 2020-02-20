require 'spec_helper.rb'

RSpec.describe 'binary_search' do
    before do
       @params = { array: (1..65356).to_a } 
       @min = @params[:array][0]
       @max = @params[:array][-1]
    end
    
    describe '繰り返し処理ver' do
       it 'choice min is 0' do
         expect(0).to eq binary_search(@params.merge(n: @min))
       end
       
       it 'choice max is 65355' do
         expect(65355).to eq binary_search(@params.merge(n: @max))    
       end
       
       it 'choice min - 1 is nil' do
         expect(nil).to eq binary_search(@params.merge(n: @min - 1))
       end
       
       it 'choice max + 1 is nil' do
         expect(nil).to eq binary_search(@params.merge(n: @max + 1))
       end
    end
    
    describe '再帰処理ver' do
       it 'choice min is 0' do
         expect(0).to eq binary_search_recursion(@params.merge(n: @min))
       end
       
       it 'choice max is 65355' do
         expect(65355).to eq binary_search_recursion(@params.merge(n: @max))    
       end
       
       it 'choice min - 1 is nil' do
         expect(nil).to eq binary_search_recursion(@params.merge(n: @min - 1))
       end
       
       it 'choice max + 1 is nil' do
         expect(nil).to eq binary_search_recursion(@params.merge(n: @max + 1))
       end
    end
end