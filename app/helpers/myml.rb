class Ml
def name(attribute)
   ml = "<my:name "
   attribute.each do |key,value| 
      ml += "#{key}=\"#{value}\" "
   end
   ml += "/>"
end
def userpic(attribute)
   ml = "<my:profile-pic "
   attribute.each do |key,value| 
      ml += "#{key}=\"#{value}\" "
   end
   ml += "/>"
end

def if_is_app_user(attribute)
   ml = "<my:if-user-has-added-app  "
   attribute.each do |key,value| 
      ml += "#{key}=\"#{value}\" "
   end
   ml += ">"
end

def end_if_is_app_user()
   ml = "</my:if-user-has-added-app>"
end

def mlelse()
   ml = "<my:else>"
end

def end_mlelse()
   ml = "</my:else>"
end

def request_form(attribute)
    ml = "<my:request-form  "
   attribute.each do |key,value| 
      ml += "#{key}=\"#{value}\" "
   end
   ml += "/>"
end

def end_request_form()
   ml = "</my:request-form>"
end

def request_form_submit(attribute)
   ml = "<my:request-form-submit "
   attribute.each do |key,value| 
      ml += "#{key}=\"#{value}\" "
   end
   ml += "/>"
end

def image(imgcase)
   ml = "<img src=\""
   case imgcase 
       when "dock"
	      ml += "http://uchome.developer.manyou.com/uchome/attachment/200810/14/965493_1224007801aGSj.jpg"
	   when "small_skull"
	      ml += "http://uchome.developer.manyou.com/uchome/attachment/200810/14/965493_1224007802t2E5.jpg"
   end
   ml += "\" border=\"0\" >"
end
end