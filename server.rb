require 'sinatra'
require 'JSON'
require './justdesserts.rb'

@@url = "https://api.spoonacular.com/recipes/search"

get '/' do
  erb :index
end

get '/info' do
  erb :info
end

get '/cakes' do
  # req = HTTParty.get('https://api.spoonacular.com/recipes/search?query=cake&number=3&apiKey=889d85cffdfd45c58e3d6762bb4b446d')
  # data = JSON.parse(req.body)
  cheesecake_cake = Cake.new("Cheesecake", "https://i2.wp.com/www.livewellbakeoften.com/wp-content/uploads/2019/05/Classic-Cheesecake-Recipe-25.jpg?fit=1200%2C1200&ssl=1")
  gc = Cake.new("German Chocolate", "https://tatyanaseverydayfood.com/wp-content/uploads/2019/08/The-BEST-German-Chocolate-Cake-3.jpg")
  birthday = Cake.new("Birthday", "https://truffle-assets.imgix.net/671e1dd0-strawberry-dream-birthday-cake_pc.jpg")
  red_vel_c = Cake.new("Red Velvet", "https://www.modernhoney.com/wp-content/uploads/2017/12/Red-Velvet-Cake-12.jpg")
  flan = Cake.new("Flan", "https://tmbidigitalassetsazure.blob.core.windows.net/secure/RMS/attachments/37/1200x1200/Creamy-Caramel-Flan_exps2197_GPW2337930A12_09_2bC_RMS.jpg")
  erb :cakes
end

get '/cookies' do
  # req = HTTParty.get('https://api.spoonacular.com/recipes/search?query=cookie&number=3&apiKey=889d85cffdfd45c58e3d6762bb4b446d')
  # data = JSON.parse(req.body)
  choco_chip = Cookie.new("Chocolate Chip", "https://chefsavvy.com/wp-content/uploads/soft-and-cakey-chocolate-chip-pumpkin-cookies.jpg")
  red_vel = Cookie.new("Red Velvet", "https://glutenfreeonashoestring.com/_main_site/wp-content/uploads/2018/12/Red-Velvet-CCCs-bunch-on-tray.jpg")
  peanut_b = Cookie.new("Peanut Butter", "https://www.browneyedbaker.com/wp-content/uploads/2009/06/Irresistible-Peanut-Butter-Cookies-2-754.jpg")
  snickerdoodles = Cookie.new("Snickerdoodles", "https://www.lifeloveandsugar.com/wp-content/uploads/2018/12/Classic-Chewy-Snickerdoodles4.jpg")
  sugar = Cookie.new("Sugar", "https://www.aspicyperspective.com/wp-content/uploads/2018/10/best-sugar-cookies-1.jpg")
  erb :cookies
end

get '/muffins' do
  # req = HTTParty.get('https://api.spoonacular.com/recipes/search?query=muffin&number=3&apiKey=889d85cffdfd45c58e3d6762bb4b446d')
  # data = JSON.parse(req.body)
  fudge = Muffin.new("Fudge", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcUh5PPTikvR9ZAFS0TwMkIvQSR8Ezh-xuM69L3SwYtfv36_aE&s")
  red_vel_cc = Muffin.new("Red Velvet", "https://www.berries.com/blog/wp-content/uploads/2016/01/1-martha-sprinkles.jpg")
  oc = Muffin.new("Orange Cream", "https://www.berries.com/blog/wp-content/uploads/2016/01/14-gluten-free.jpg")
  uc = Muffin.new("Ultimate Chocolate", "https://www.berries.com/blog/wp-content/uploads/2016/01/29-pretty-simple-sweet.jpg")
  cheesecake_cc = Muffin.new("Cheesecake", "https://www.berries.com/blog/wp-content/uploads/2016/01/30-.jpg")
  erb :muffins
end
