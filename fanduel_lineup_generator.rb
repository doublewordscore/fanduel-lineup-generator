#input player salaries here
pg = [10600, 9400, 7800, 6600, 4500, 4000]
sg = [7800, 6600, 5400, 5100, 3800]
sf = [6000, 5400, 4800]
pf = [10600, 8400, 8100, 7200, 6600, 4700, 4000, 3800]
c = [7600, 6000, 4800]

#each Fanduel lineup has 2 point guards, 2 shooting guards, 2 small forwards, 2 power forwards and 2 centers
#for DraftKings utility spot, must combine arrays, eliminate pre-selected salaries by saving the seed/random function
pg_combo = pg.combination(2).to_a
sg_combo = sg.combination(2).to_a
sf_combo = sf.combination(2).to_a
pf_combo = pf.combination(2).to_a
c_combo = c.combination(1).to_a

roster = pg_combo[rand(pg_combo.length-1)] + sg_combo[rand(sg_combo.length-1)] + sf_combo[rand(sf_combo.length-1)] + pf_combo[rand(pf_combo.length-1)] + c_combo[rand(c_combo.length-1)]

i = 0
sum = 0
while i < roster.length
  sum = roster[i] + sum
  i += 1
end

# max_salary shoud be fixed, min_salary is adjustable to preference
def create_roster(sum)
  max_salary = 60000
  min_salary = 55000
  if sum > max_salary
  	puts "Salary limits exceeded!"
  elsif sum < min_salary
    puts "Below salary floor!"
  else
  	sum_s = sum.to_s
  	puts "Total salary: " + sum_s
  end
end

create_roster(sum)
puts roster




  