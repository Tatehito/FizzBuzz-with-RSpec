
# 以下テストコード

describe "" do

    result = [1,2,"Fizz",4,"Buzz","Fizz",7,8,"Fizz","Buzz"]

    it "3の倍数の代わりに”Fizz”を出力すること" do
        2.step(result.size,3).each do |n|
            expect(result[n]).to eq "Fizz"
        end
    end

    it "5の倍数の代わりに”Buzz”を出力すること" do
        4.step(result.size,5).each do |n|
            expect(result[n]).to eq "Buzz"
        end
    end

    it "3と5の倍数以外は数字を出力すること" do
        result.each do |n|
            if n.class == Integer
                expect(n % 3).to_not eq 0
                expect(n % 5).to_not eq 0
            end
        end
    end
end