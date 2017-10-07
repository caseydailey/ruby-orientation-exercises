# Define a hash that contains information about several members of your family. 
my_family = {

    :parents => [

        {
            :name => "Clarence",
            :age => 77,
            :role => "dad"
        },

        {
            :name => "Bonnie",
            :age => 65,
            :role => "mom"
        }
    ],

    :brothers => [

        {
            :name => "Doni",
            :age => 35
        },
        {
            :name => "Jesse",
            :age => 28
        },
        {
            :name => "Dustin",
            :age => 27
        },
        {
            :name => "Cody",
            :age => 25
        },
        {
            :name => "Japh",
            :age => 20
        }          
    ],
    :sisters => [

        {
            :name => "Bonnie",
            :age => 38
        },
        {
            :name => "Lacy",
            :age => 37
        },
        {
            :name => "Brenna",
            :age => 24
        }
    ],


}

# Produce output that looks like the following example.
# "Krista is my sister and is 42 years old"

my_family.keys.each do |group_name|
    my_family[group_name].each do |person|
        if person.has_key?(:role)
            puts "#{person[:name]} is my #{person[:role]} and is #{person[:age]} years old."
        else
            puts "#{person[:name]} is my #{group_name.to_s.chomp('s')} and is #{person[:age]} years old"
        end
    end
end
