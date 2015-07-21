# This file should contains all the record creation needed to seed the database with its default values.

test = ['Sherry', 'Boris', 'Vicente', 'Matte', 'Jack', 'Sherry', 'Matte', 'Kevin', 'Kevin', 'Vicente', 'Zoe', 'Kevin', 'Matte', 'Zoe', 'Jay', 'Boris', 'Eadon', 'Sherry', 'Franky', 'Sherry', 'Matte', 'Franky', 'Franky', 'Kevin', 'Boris', 'Franky', 'Vicente', 'Luis', 'Eadon', 'Boris', 'Kevin', 'Matte', 'Jay', 'James', 'Kevin', 'Sherry', 'Sherry', 'Jack', 'Sherry', 'Jack']

supportHash = {
  "07/01/2015"=> "Sherry",
  "07/02/2015"=> "Boris",
  "07/03/2015"=> "Vicente",
  # "07/04/2015"=> "Independence Day",

  # "07/05/2015"=> "false",
  "07/06/2015"=> "Matte",
  "07/07/2015"=> "Jack",
  "07/08/2015"=> "Sherry",
  "07/09/2015"=> "Matte",
  "07/10/2015"=> "Kevin",
  # "07/11/2015"=> "false",

  # "07/12/2015"=> "false",
  "07/13/2015"=> "Vicente",
  "07/14/2015"=> "Zoe",
  "07/15/2015"=> "Kevin",
  "07/16/2015"=> "Matte",
  "07/17/2015"=> "Zoe",
  # "07/18/2015"=> "true",

  # "07/19/2015"=> "false",
  "07/20/2015"=> "Jay",
  "07/21/2015"=> "Boris",
  "07/22/2015"=> "Eadon",
  "07/23/2015"=> "Sherry",
  "07/24/2015"=> "Franky",
  # "07/25/2015"=> "false",

  # "07/26/2015"=> "true"
  "07/27/2015"=> "Vicente",
  "07/28/2015"=> "Luis",
  "07/29/2015"=> "Eadon",
  "07/30/2015"=> "James",
  "07/31/2015"=> "Jay"

}

test.uniq.length.times do |i|

  User.create(
    name: test.uniq[i],
    password: i.to_s,
    # email: '',
    # password_confirmation: "123",
    image_url: Faker::Avatar.image,
    schedule: supportHash
  )

end

# days = ["Monday", "Tuesday", "Wedesday", "Thursday", "Friday"]




