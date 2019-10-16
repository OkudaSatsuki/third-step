#! /usr/bin/env ruby
require "numo/narray"

sci = Numo::DFloat[65,80,67,35,58,60,72,75,68,92,36,50,2,58.5,46,42,78,62,84,70]
eng = Numo::DFloat[44,87,100,63,52,60,58,73,55,86,29,56,89,23,65,84,64,27,86,84] 
printf("理科　平均:%f 標準偏差:%f 合計:%f\n",sci.mean,sci.stddev,sci.sum)
printf("英語　平均:%f 標準偏差:%f 合計:%f\n",eng.mean,eng.stddev,eng.sum)

print("偏差値\n") 
for i in 1..20  
printf("理科：%f ",(sci[i-1]-sci.mean)/sci.stddev * 10 +50) 
print("  ")
print("英語:")
printf("%f ",(eng[i-1]-eng.mean)/eng.stddev * 10 +50) 
printf("\n")
end
print("\n")

print("並び替え\n理科:")
p sci.sort.reverse     
print("英語:")
p eng.sort.reverse 
print("\n")  
