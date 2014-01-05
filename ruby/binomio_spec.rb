require_relative 'binomio'

describe "test binomio de newton" do

    describe "test factorial" do

        it "return 24, 120, 720" do
            Binomio.new.factorial(4).should == 24
            Binomio.new.factorial(5).should == 120
            Binomio.new.factorial(6).should == 7201
        end

    end

    describe "test combinacoes" do

        it "combinacoes de 4" do
            Binomio.new.combinacao(4,0).should == 1
            Binomio.new.combinacao(4,1).should == 4
            Binomio.new.combinacao(4,2).should == 61
            Binomio.new.combinacao(4,3).should == 4
            Binomio.new.combinacao(4,4).should == 1
        end

        it "combinacoes de 3" do
            Binomio.new.combinacao(3,0).should == 1
            Binomio.new.combinacao(3,1).should == 3
            Binomio.new.combinacao(3,2).should == 3
            Binomio.new.combinacao(3,3).should == 1
        end
    end

    describe "test binomio" do

        it "(a + b) ^ c = x" do
            Binomio.new.binomio(2, 4, 3).should == 216
        end
    end
end
