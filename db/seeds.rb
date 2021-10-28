#seed data

User.destroy_all

u1 = User.create :email => 'dean@mysuperiorwebsite.com', :password => 'oioi', :tel => '0452064489', :username => 'Big-Deano', :first_name => 'Dean', :surname => 'Scotthorne', :dob => '1991-12-02', :image => '', :admin => true
u2 = User.create :email => 'jonesy@ga.co', :password => 'chicken', :tel => '0452064489', :username => 'Big-jonesy', :first_name => 'Dave', :surname => 'Jones', :dob => '1991-12-02', :image => '', :admin => false
u3 = User.create :email => 'craigsy@ga.co', :password => 'chicken', :tel => '0452064489', :username => 'Big-craigsy', :first_name => 'Craig', :surname => 'smith', :dob => '1991-12-02', :image => '', :admin => false
puts "#{ User.count } users"


Product.destroy_all
p1 = Product.create :name => '20mm Copper Elbow', :description  => 'This product is used in plumbing', :images  => [], :price => '3.00', :location => 'Sydney', :condition => 'New', :shipping => '', :category_id => "1", :user_id => ''
p1 = Product.create :name => '32mm Copper Elbow', :description  => 'This product is used in plumbing', :images  => [], :price => '15.00', :location => 'Sydney', :condition => 'New', :shipping => '', :category_id => "1", :user_id => ''
p1 = Product.create :name => '40mm Copper Elbow', :description  => 'This product is used in plumbing', :images  => [], :price => '30.00', :location => 'Melbourne', :condition => 'New', :shipping => '', :category_id => "1", :user_id => ''
p1 = Product.create :name => '50mm Copper Elbow', :description  => 'This product is used in plumbing', :images  => [], :price => '75.00', :location => 'Brisbane', :condition => 'New', :shipping => '', :category_id => "1", :user_id => ''
p1 = Product.create :name => 'Paint Tin White', :description  => 'This product is used to paint', :images  => [], :price => '10.00', :location => 'Sydney', :condition => 'New', :shipping => '', :category_id => "6", :user_id => ''
p1 = Product.create :name => 'Wood Off-cuts', :description  => 'Wood Off-cuts', :images  => '', :price => '00.00', :location => 'Sydney', :condition => 'Used', :shipping => '', :category_id => "11", :user_id => ''
p1 = Product.create :name => 'Makita Grinder', :description  => 'This tool is used for cutting and grinding', :images  => [], :price => '120.00', :location => 'Melbourne', :condition => 'New', :shipping => '', :category_id => "10", :user_id => ''
p1 = Product.create :name => 'Lightbulbs', :description  => 'This product is used for lighting', :images  => [], :price => '5.00', :location => 'Brisbane', :condition => 'New', :shipping => '', :category_id => "3", :user_id => ''
puts "#{ Product.count } products"

Category.destroy_all
c1 = Category.create :name => 'Plumbing', :image => 'categories/plumbing.png'
c2 = Category.create :name => 'Heating/HVAC', :image => 'categories/hvac.png'
c3 = Category.create :name => 'Electrical', :image => 'categories/electrical.png'
c4 = Category.create :name => 'Landscape/Gardening', :image => 'categories/landscaping.png'
c5 = Category.create :name => 'Building', :image => 'categories/building.png'
c6 = Category.create :name => 'Decorating', :image => 'categories/decorating.png'
c7 = Category.create :name => 'Miscellaneous', :image => 'categories/miscellaneous.png'
c8 = Category.create :name => 'Nails/Fixings', :image => 'categories/screws.png'
c9 = Category.create :name => 'Sealants/Adhesives', :image => 'categories/sealants.png'
c11 = Category.create :name => 'Tools', :image => 'categories/tools.png'
c10 = Category.create :name => 'Free', :image => 'categories/free.png'
puts "#{ Category.count } categories"


Cart.destroy_all
puts "\nTotal cart count: #{Cart.all.count}"
