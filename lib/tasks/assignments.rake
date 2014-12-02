namespace :assignments do
  desc "list all"
  task list: :environment do
    Assignment.all.each do |assignment|
      p assignment
    end
  end


  desc "cleanup bad data"
  task cleanup: :environment do
    Assignment.all.each do |assignment|
      p assignment.where.not(person_id: Person.pluck(:id))
    end
  end
end
