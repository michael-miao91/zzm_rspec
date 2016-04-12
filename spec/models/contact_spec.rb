require 'rails_helper'

describe Contact do
  it { should validate_presence_of :firstname }
  it { should validate_presence_of :lastname }
  it { should validate_presence_of :email }
  it { should validate_uniqueness_of(:email) }


  it "returns a contact's full name as a string" do
    # contact = Contact.new(
    #     firstname: 'John',
    #     lastname: 'Doe',
    #     email: 'johndoe@example.com'
    # )
    contact = build_stubbed(:contact,
                            firstname: 'Jane',
                    lastname: 'Doe'
    )

    expect(contact.name).to eq 'Jane Doe'
  end

  it "has three phone numbers" do
    expect(create(:contact).phones.count).to eq 3
  end


  describe "filter last name by letter" do
    before :each do
      @smith = create(:contact,
                      firstname: 'John',
          lastname: 'Smith',
          email: 'jsmith@example.com'
      )
      @jones = create(:contact,
                      firstname: 'Tim',
          lastname: 'Jones',
          email: 'tjones@example.com'
      )
      @johnson = create(:contact,
                        firstname: 'John',
                        lastname: 'Johnson',
                        email: 'jjohnson@example.com'
      )
    end

    context "with matching letters" do
      it "returns a sorted array of results that match" do
        expect(Contact.by_letter("J")).to eq [@johnson, @jones]
      end
    end

    context "with non-matching letters" do
      it "omits results that do not match" do
        expect(Contact.by_letter("J")).not_to include @smith
      end
    end
  end
end
