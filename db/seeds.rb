#seed data

User.destroy_all

u1 = User.create :email => 'jonesy@ga.co', :password => 'chicken', :tel => '0452064489', :username => 'Big-jonesy', :first_name => 'Dave', :surname => 'Jones', :dob => '1991-12-02', :image => '', :admin => false
u2 = User.create :email => 'craigsy@ga.co', :password => 'chicken', :tel => '0452064489', :username => 'Big-craigsy', :first_name => 'Craig', :surname => 'smith', :dob => '1991-12-02', :image => '', :admin => true
puts "#{ User.count } users"

Product.destroy_all
p1 = Product.create :name => '20mm Copper Elbow', :description  => 'This product is used in plumbing', :image  => '', :price => '3.00', :location => 'Sydney', :condition => 'New', :shipping => '', :category_id => "1", :user_id => ''
p1 = Product.create :name => '32mm Copper Elbow', :description  => 'This product is used in plumbing', :image  => '', :price => '15.00', :location => 'Sydney', :condition => 'New', :shipping => '', :category_id => "1", :user_id => ''
p1 = Product.create :name => '40mm Copper Elbow', :description  => 'This product is used in plumbing', :image  => '', :price => '30.00', :location => 'Melbourne', :condition => 'New', :shipping => '', :category_id => "1", :user_id => ''
p1 = Product.create :name => '50mm Copper Elbow', :description  => 'This product is used in plumbing', :image  => '', :price => '75.00', :location => 'Brisbane', :condition => 'New', :shipping => '', :category_id => "1", :user_id => ''
p1 = Product.create :name => 'Paint Tin White', :description  => 'This product is used to paint', :image  => '', :price => '10.00', :location => 'Sydney', :condition => 'New', :shipping => '', :category_id => "6", :user_id => ''
p1 = Product.create :name => 'Wood Off-cuts', :description  => 'Wood Off-cuts', :image  => '', :price => '00.00', :location => 'Sydney', :condition => 'Used', :shipping => '', :category_id => "11", :user_id => ''
p1 = Product.create :name => 'Makita Grinder', :description  => 'This tool is used for cutting and grinding', :image  => '', :price => '120.00', :location => 'Melbourne', :condition => 'New', :shipping => '', :category_id => "10", :user_id => ''
p1 = Product.create :name => 'Lightbulbs', :description  => 'This product is used for lighting', :image  => '', :price => '5.00', :location => 'Brisbane', :condition => 'New', :shipping => '', :category_id => "3", :user_id => ''
puts "#{ Product.count } products"

Category.destroy_all
c1 = Category.create :name => 'Plumbing'
c2 = Category.create :name => 'Heating/HVAC'
c3 = Category.create :name => 'Electrical'
c4 = Category.create :name => 'Landscape/Gardening'
c5 = Category.create :name => 'Building'
c6 = Category.create :name => 'Decorating'
c7 = Category.create :name => 'Miscellaneous'
c8 = Category.create :name => 'Nails/Fixings'
c9 = Category.create :name => 'Sealants/Adhesives'
c11 = Category.create :name => 'Tools'
c10 = Category.create :name => 'Free'
puts "#{ Category.count } categories"
