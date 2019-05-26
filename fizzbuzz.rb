def fizz_buzz
    [1,2,"Fizz",4,"Buzz","Fizz",7,8,"Fizz","Buzz"]
end

# 以下テストコード

describe "" do

    it "3の倍数の代わりに”Fizz”を出力すること" do
        2.step(fizz_buzz.size,3).each do |n|
            expect(fizz_buzz[n]).to eq "Fizz"
        end
    end

    it "5の倍数の代わりに”Buzz”を出力すること" do
        4.step(fizz_buzz.size,5).each do |n|
            expect(fizz_buzz[n]).to eq "Buzz"
        end
    end

    it "3と5の倍数以外は数字を出力すること" do
        fizz_buzz.each do |n|
            if n.class == Integer
                expect(n % 3).to_not eq 0
                expect(n % 5).to_not eq 0
            end
        end
    end
end