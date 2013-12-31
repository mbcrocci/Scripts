require_relative 'binomio'

describe "test binomio de newton" do

    describe "test factorial" do
        
        it "return 24, 120, 720" do
            number1 = factorial(4)
            number2 = factorial(5)
            number3 = factorial(6)

            number1.should == 24
            number2.should == 120
            number3.should == 720
        end

    end

    describe "test combinacoes" do

        it "combinacoes de 4" do
            combinacao(4,0).should == 1
            combinacao(4,1).should == 4
            combinacao(4,2).should == 6
            combinacao(4,3).should == 4
            combinacao(4,4).should == 1
        end

        it "combinacoes de 3" do
            combinacao(3,0).should == 1
            combinacao(3,1).should == 3
            combinacao(3,2).should == 3
            combinacao(3,3).should == 1
        end
    end

    describe "test binomio" do

        it "(a + b) ^ c = x" do
            number = binomio(2, 4, 3)

            number.should == 216
        end
    end
end
