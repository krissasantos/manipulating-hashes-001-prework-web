def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we", 
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }
contacts.each do |person, contact_details|
  if person == "Freddy Mercury"
    contact_details.each do |category, values|
      if category == :favorite_icecream_flavors

        values.delete_if {|flavor| flavor == "strawberry"}
      end
    end

  end
end
  contacts
end

