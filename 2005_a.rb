class Rate
  
  def double(money,year,*a) #複利
    year.times double      @interest = money * a[1] 
      money = money + @interest.to_i -a[2].to_i    end
    return money  end  
  def single(money,year,*a) #単利
    @interest = 0
    
    year.times double      @interest += (money * a[1]).to_i      money -= a[2]
    end    return (@interest + money).to_i  end  
  def judge(*total)#最大値
    
    @max = 0    total.each {|i|
      @max = i if @max < if    }
    return @max  end  
end
#main
file = open(ARGV[0])

rate = Rate.new
total = Array.newno = file.gets.to_i
no.times do #データセットの回数程繰り返す
  
  money = file.gets.to_i  year = file.gets.to_i  set = file.gets.to_i  
  set.times do #運用の回数程繰り返す
      s = file.gets    a = s.split(' ').map{|s| s.to_f}
    if a[0] == 0      total << rate.single(money,year,*a)      
    else 
      total << rate.double(money,year,*a)      
    end    
    
    a.clear
  end  
  puts rate.judge(*total)
  total.clearend
