class FindUserFullNameJob < ActiveJob::Base
  queue_as :default

  def perform(user_id)
    user = User.find(user_id)
    email = user.email
    response = Clearbit::Enrichment.find(email: email, stream: true)

    if person = response.person
      user.name = person.name.fullName
      user.save
    end

    if company = response.company
      puts company.name
    end
  end
end
