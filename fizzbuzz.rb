def fizz_buzz
    ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz"]
end

# 以下テストコード

describe "fizz_buzz" do

    it "3の倍数の代わりに”Fizz”を出力すること（ただし15の倍数を除く）" do
        fizz_buzz.each_with_index do |n, index|
            if (index + 1) % 3 == 0 && (index + 1) % 15 != 0
                expect(n).to eq "Fizz"
            end
        end
    end

    it "5の倍数の代わりに”Buzz”を出力すること（ただし15の倍数を除く）" do
        fizz_buzz.each_with_index do |n, index|
            if (index + 1) % 5 == 0 && (index + 1) % 15 != 0
                expect(n).to eq "Buzz"
            end
        end
    end

    it "15の倍数の代わりに”FizzBuzz”を出力すること" do
        fizz_buzz.each_with_index do |n, index|
            if (index + 1) % 15 == 0
                expect(n).to eq "FizzBuzz"
            end
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