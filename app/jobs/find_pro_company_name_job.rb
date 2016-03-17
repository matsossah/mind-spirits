class FindProCompanyNameJob < ActiveJob::Base
  queue_as :default

  def perform(user_id)
    professional = User.find(user_id).professional
    email = professional.professional_email
    response = Clearbit::Enrichment.find(email: email, stream: true)

    if person = response.person
      professional.name = person.name.fullName
    end

    if company = response.company
      professional.name = company.name
    end
  end
end
