usership = Usership.find(:all,:condition => [" updated_at > ?" Time.now - 60.hour])
puts "--------usership.length:#{usership.length}---------------"
usership.each do |ship|
    	ship.attack=ship.ship.attack
		ship.capacity=ship.ship.capacity
		ship.robspeed=ship.ship.robspeed
        if ship.captain_user
		     ship.captain_user.add_att_to_usership
		end
		ship.save
		puts "ship_id:#{ship.id},ship.capacity:#{ship.capacity}"
end