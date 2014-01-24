ActionMailer::Base.smtp_settings = {  
      :address              => "smtp.gmail.com",  
      :port                 => 587,  
      :domain               => "gmail.com",  
      :user_name            => "connectramkumar.au", #Your user name
      :password             => "070208100158", # Your password
      :authentication       => "plain",  
      :enable_starttls_auto => true  
   }