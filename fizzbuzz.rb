def fizz_buzz(max)
    (1..max).map do |n|
        if n % 15 == 0
            "FizzBuzz"
        elsif n % 5 == 0
            "Buzz"
        elsif n % 3 == 0
            "Fizz"
        else
            n.to_s
        end
    end
end

# 以下テストコード

describe "fizz_buzz" do

    result = fizz_buzz(1000)

    it "3の倍数の代わりに”Fizz”を出力すること（ただし15の倍数を除く）" do
        result.each_with_index do |n, index|
            if (index + 1) % 3 == 0 && (index + 1) % 15 != 0
                expect(n).to eq "Fizz"
            end
        end
    end

    it "5の倍数の代わりに”Buzz”を出力すること（ただし15の倍数を除く）" do
        result.each_with_index do |n, index|
            if (index + 1) % 5 == 0 && (index + 1) % 15 != 0
                expect(n).to eq "Buzz"
            end
        end
    end

    it "15の倍数の代わりに”FizzBuzz”を出力すること" do
        result.each_with_index do |n, index|
            if (index + 1) % 15 == 0
                expect(n).to eq "FizzBuzz"
            end
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