require 'green_shoes'


Shoes.app :title=> 'WordCount', :widht => 200, :height => 50, :left => 300, :top => 500 do
	
background dimgray


@file_name = edit_line :width => 480

@select = button "File..."
@get = button "Get"

@wcount = tagline fg(strong("Pick a File then Click 'Get'"), white)


@select.click do 
	
	@path = ask_open_file
	@file_name.text = @path
	
end

@get.click do

	@wc = @word_count.call(@path)
	@wcount.text =  fg(strong("Word Count: #{@wc}"), white)
	
	end


@word_count = Proc.new do |fname| open(fname, 'r') do |flow| 
	flow.readlines.to_s.split.count
end 

end


end

