require "./lib/dob"

describe Dob do 

  describe "#birthday_message" do 

    it "responds to birthday" do 
      expect(subject).to respond_to(:birthday_message)
    end 

    it {is_expected.to respond_to(:birthday_message).with(2).argument}

    it "If DOB(DD, MM) match Time(D, M) output Happy Birthday" do 

      expect(subject.birthday_message(1, 5)).to eq("Happy Birthday")
    end 

    it "If DOB(DD, MM) do not match Time(D, M) output time til b.day" do 
      expect(subject.birthday_message(2, 5)).to eq("1 day(s) until your birthday!")    
    end 
  end 
end 