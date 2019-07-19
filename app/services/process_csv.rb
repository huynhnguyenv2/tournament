require 'csv'
require 'net/http'

class ProcessCsv    
  def initialize(csv_url)
    @csv_url = csv_url
  end

  def process
    uri = URI(@csv_url)
    csv_text = Net::HTTP.get(uri)

    players = []
    groups = []
    matchs = []
    links = []
    CSV.foreach(csv_text, headers:true) do |unstriped_row|
      row = {}
      unstriped_row.each{ |k, v| row[k.strip] = v}
      
      players << {name: row[:player1]} if players.any?{|a| a.name == row[:player1]}
      groups << {name: row[:group]} if groups.any?{|a| a.name == row[:group]}
      matchs << {time: row[:time], date: row[:date], venue: row[:venue],}
    end
  end
end