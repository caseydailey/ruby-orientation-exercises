class CarLot

  attr_accessor :makes, :models, :makes_and_models

  def initialize()
    @makes = []
    @models = []
    @makes_and_models = {}
  end

  def read(file_name)
    contents = open("#{file_name}").read.tr("\n", " ").strip.split(" ")
  end

  def read_makes
    @makes = read('car_makes.txt')
  end

  def read_models
    @models = read('car_models.txt')
  end

# {
#   "Toyota"=>["Camry", "Tercel", "Tacoma"], 
#   "Ford"=>["Ranger", "F-150", "Model-T", "Excort", "Taurus"], 
#   "Chevy"=>["Camaro"], 
#   "Volvo"=>["240", "740", "940"]
# }
# 
  def build_hash

    split_models = @models.map { |model_list| model_list.split('=') } #[["T", "Camry,Tercel,Tacoma"], ["F", "Ranger,F-150,Model-T,Excort,Taurus]]

    @makes.reduce({}) do |makes_and_models, make|
      split_models.each do |model_list|
        if make.start_with?(model_list[0]) 
          makes_and_models[make] ? next : makes_and_models[make] = model_list[1].split(',')
        end
        makes_and_models
      end
        p makes_and_models
    end
  end
end




carlot = CarLot.new
puts carlot.read_makes
puts carlot.read_models
p carlot.makes
p carlot.models
carlot.build_hash
