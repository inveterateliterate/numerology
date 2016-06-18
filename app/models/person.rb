class Person < ActiveRecord::Base

def self.get_birth_path(birthdate)

birth_array = birthdate.split("")

birthsum = birth_array[0].to_i + birth_array[1].to_i + birth_array[2].to_i + birth_array[3].to_i + birth_array[4].to_i + birth_array[5].to_i + birth_array[6].to_i + birth_array[7].to_i

if birthsum > 9
birthsum = birthsum.to_s
birth_array = birthsum.split("")
birthsum = birth_array[0].to_i + birth_array[1].to_i
	if birthsum > 9
		birthsum = birthsum.to_s
		birth_array = birthsum.split("")
		birthsum = birth_array[0].to_i + birth_array[1].to_i
end
end

return birthsum
end

def self.birth_message(birth_path)
case birth_path
when 1
msg = "Your numerology number is #{birth_path}.\nOne is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
when 2
msg = "Your numerology number is #{birth_path}.\nThis is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
when 3
msg = "Your numerology number is #{birth_path}.\nNumber Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three's enjoy life and have a good sense of humor. Ruled by Jupiter."
when 4
msg = "Your numerology number is #{birth_path}.\nThis is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
when 5
msg = "Your numerology number is #{birth_path}.\nThis is the freedom lover. The number five is an intellectual vibration. These are 'idea' people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
when 6
msg = "Your numerology number is #{birth_path}.\nThis is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
when 7
msg = "Your numerology number is #{birth_path}.\nThis is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
when 8 
msg = "Your numerology number is #{birth_path}.\nThis is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
when 9
msg = "Your numerology number is #{birth_path}.\nThis is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
end
return msg
end


def self.valid_birthdate(input)
if (input.length == 8 && !input.match(/^[0-9]+[0-9]$/).nil?)
return true
else
return false
end
end





end
