class RandomFactMailer < ActionMailer::Base
  default from: "kyle.w.kern@gmail.com"

  def send_random_fact_email(email)
    @email = email
    mail(to: @email.from, subject: 'TMYK -- Random Fact of the Day')
  end
end
