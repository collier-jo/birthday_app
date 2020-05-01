require "./lib/dob"

describe Dob do 

  describe "#birthday_message" do 

    it "responds to birthday" do 
      expect(subject).to respond_to(:birthday_message)
    end 

    it {is_expected.to respond_to(:birthday_message).with(2).argument}

    it "If DOB(DD, MM) match Time(D, M) output Happy Birthday" do 
      jo = Dob.new(Time.new(2002, 02, 02))
      expect(jo.birthday_message(02, 02)).to eq("Happy Birthday")
    end 

    it "If DOB(DD, MM) do not match Time(D, M) output time til b.day" do 
      jo = Dob.new(Time.new(2002, 02, 02))
      expect(jo.birthday_message(02, 01)).to eq("1 day until your birthday")
    end 

  end 
end 