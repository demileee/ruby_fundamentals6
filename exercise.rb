project = {

  committee: ["Stella", "Salma", "Kai"],

  title: "Very Important Project",

  due_date: "December 1, 2019",

  id: "3284",

  steps: [
    {description: "conduct interviews",
     due_date: "August 1, 2018"
    },
    {description: "code of conduct",
     due_date: "January 1, 2018"
    },
    {description: "compile results",
     due_date: "November 10, 2018"
    },
    {description: "version 1",
     due_date: "January 15, 2019"
    },
    {description: "revisions",
     due_date: "March 30, 2019"
    },
    {description: "version 2",
     due_date: "July 12, 2019"
    },
    {description: "final edit",
     due_date: "October 1, 2019"
    },
    {description: "final version",
     due_date: "November 20, 2019"
    }
  ]
}

# project[:step].merge!(:project => project[:committee][Random.rand(0..2)])
# puts project
#
#
# project.each do |item|
# >   project_hash.merge!(item.name => [])
# > end
#
# project[:steps][1][:person] = "Hi"
# puts project

# x = 0
#
# def something(a, x)
#   a[:steps][x][:person] = "Hi"
#   x += 1
#   if x == (a[:committee].length + 1)
#     x = 0
#   end
# end
#
# 8.times do
#   something(project, x)
# end
#
# puts project

# def add_person(x, y)
#   x[:committee].each do |k|
#     k.merge!(x[:steps][y][:person] = k)
#   end
# end
#
# add_person(project, 1)
#
# puts project


# assign person key to each item in :steps
# value will be from committee, 3 in array
# count = 0

committee_length = project[:committee].length

project[:steps].length.times do |count|
  project[:steps][count][:project] = project[:committee][count%committee_length]
end

puts project
