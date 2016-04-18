require 'pry'

class Array
  def deep_index(data)

    self.each_with_index{|d, i| 
      if d.class == String
        if d == data 
          puts i 
        end
      else 

        d.each_with_index{|x, z|
          if x.class == String
            if x == data
              puts "#{i},#{z}"
            end
          end
        }
      end
    }
    end
end

class AwesomeSorter
  def self.sort!(string_array)
string_array.sort!
      # your code goes here
  end
end

companies = [
  'Adobe',
  'microsoft inc.',
  'bCreative',
  '1000Museums',
  'Adidas',
  'ABIBAS',
  'ReeBook',
  'royalty-holding llc',
  'Rexona',
  'aliexpress',
  'booking.com'
]

class AnalyticsService

  def analyze_data(data)
    # your code goes here
    @sor = data.each_with_index { |e, b| 
      i = b + 1
      while (i < data.size)
        if data[b][0] == data[i][0]
          data[b][1] += data[i][1]
          data.delete_at(i)
          i = data.size
        end
        i += 1
      end
    }
    puts @sor

  end
end

data = [['United States', 34.8], ['Ukraine', 165.2], ['United States', 40.0],['Panama', 220.45],['China', 2134.56],['Ukraine', 34.8]]
a = [
  'hash',
  'array',
  [
    'map',
    [
      'rails',
      'assets',
      'actioncable',
      'REST'
    ],
    'inject',
    'reduce',
    'detect'
  ],
  'metaptogramming',
  'recursion',
  [
    'css3',
    'ecmascript6',
    'sublimetext',
    'heroku'
  ],
  'activerecord',
  'ember'
]

binding.pry