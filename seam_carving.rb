def preprocess(ary)
	m = ary.length
	n = ary[0].length
	bary = Array.new(m) { Array.new(n) }
	
	for i in (0...n) do
		bary[-1][i] = ary[-1][i]
	end
	
	for j in (m - 2).downto(0) do
		for i in (0...n) do
			a = ary[j][i]
			
			south = []
			
			for h in [-1, 0, 1] do
				next if i + h < 0 || i + h > n - 1
			
				s = bary[j + 1][i + h]
				
				south << s if !s.nil?
			end
			
			m = a + south.min
			bary[j][i] = m
		end
	end
	
	bary
end

def min_path(prep)
	m = prep.length
	n = prep[0].length
	path = []
	
	for j in (0...m) do
		row = prep[j]
		min_idx = row.rindex(row.min)
		path << [j, min_idx]
	end
	
	path
end

A = [
	[10,2,3],
	[4,5,6],
	[10,2,0]
]

puts "A = #{A}"
puts "B = #{preprocess(A)}"
puts "min path = #{min_path(preprocess(A))}"
