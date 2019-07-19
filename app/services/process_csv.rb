require 'csv'
require 'net/http'

class ProcessCsv    
  def initialize(csv_url)
    @csv_url = csv_url
  end

  def process
    uri = URI(@csv_url)
    csv_text = Net::HTTP.get(uri)

    CSV.foreach(csv_text, headers:true) do |row|
      puts row
    end
  end
end
url = "https://raw.githubusercontent.com/dinosysOrg/api-challenge/master/tournament%2010%20ball.csv"
ProcessCsv.new(url).process