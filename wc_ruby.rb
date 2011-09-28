
def word_count filename

open(filename, 'r') do |flow|
   flow.readlines.to_s.split.count

  end
end



