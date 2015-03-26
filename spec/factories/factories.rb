FactoryGirl.define do

  factory :user do
    name "John"
    email "man@man.com"
    password "ppppppppp"
  end

  factory :todo do
    title "test title"
    description "test description"
  end

end
