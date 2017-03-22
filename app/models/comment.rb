class Comment < ApplicationRecord
			validates :comment, exclusion: {in: %w(tangina amboy tanginamo taemo kantot putanginamo bakla bading beki batuta betlog bayot gago pakyo bobo potangina anal anus arse ass ballsack balls bastard bitch biatch bloody blowjob blow job bollock bollok boner boob bugger bum butt buttplug clitoris cock coon crap cunt damn dick dildo dyke fag feck fellate fellatio felching fuck f_u_c_k fudgepacker fudge packer flange Goddamn damn homo jerk jizz knobend knob end labia lmao lmfao muff nigger nigga omg penis piss poop prick pube pussy queer scrotum shit shit sh1t slut smegma spunk tit tosser turd twat vagina wank whore wtf), message: "%{value} is a profanity word. Invalid Comment!"}
	acts_as_votable
	belongs_to :post
	belongs_to :user
end
