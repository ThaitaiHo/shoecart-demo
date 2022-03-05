# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
Product.create(:name => 'Nike Air Zoom Pegasus 36',
    :description => 
    %{
      The iconic Nike Air Zoom Pegasus 36 offers more cooling and mesh that targets breathability across high-heat areas. A slimmer heel collar and tongue reduce bulk, while exposed cables give you a snug fit at higher speeds.
    },
    :price => 108.97,
    :image => 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/1315882/air-zoom-pegasus-36-mens-running-shoe-wide-D24Mcz-removebg-preview.png',
    :color => '#e1e7ed')
 
Product.create(:name => 'Nike Air Zoom Pegasus 36 Shield',
    :description => 
    %{
      The Nike Air Zoom Pegasus 36 Shield gets updated to conquer wet routes. A water-repellent upper combines with an outsole that helps create grip on wet surfaces, letting you run in confidence despite the weather.
    },
    :price => 89.97,
    :image => 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/1315882/air-zoom-pegasus-36-shield-mens-running-shoe-24FBGb__1_-removebg-preview.png',
    :color => '#4D317F')
Product.create(:name => 'Nike CruzrOne',
    :description => 
    %{
      Designed for steady, easy-paced movement, the Nike CruzrOne keeps you going. Its rocker-shaped sole and plush, lightweight cushioning let you move naturally and comfortably. The padded collar is lined with soft wool, adding luxury to every step, while mesh details let your foot breathe. There’s no finish line—there’s only you, one step after the next.
    },
    :price => 100.97,
    :image => 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/1315882/cruzrone-unisex-shoe-T2rRwS-removebg-preview.png',
    :color => '#E8D026')
Product.create(:name => 'Nike Epic React Flyknit 2',
  :description => 
  %{
    The Nike Epic React Flyknit 2 takes a step up from its predecessor with smooth, lightweight performance and a bold look. An updated Flyknit upper conforms to your foot with a minimal, supportive design. Underfoot, durable Nike React technology defies the odds by being both soft and responsive, for comfort that lasts as long as you can run.
  },
  :price => 89.97,
  :image => 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/1315882/epic-react-flyknit-2-mens-running-shoe-2S0Cn1-removebg-preview.png',
  :color => '#FD584A')
Product.create(:name => 'Nike Odyssey React Flyknit 2',
  :description => 
  %{
    The Nike Odyssey React Flyknit 2 provides a strategic combination of lightweight Flyknit construction and synthetic material for support. Underfoot, Nike React cushioning delivers a soft, springy ride for a route that begs to be crushed.
  },
  :price => 71.97,
  :image => 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/1315882/odyssey-react-flyknit-2-mens-running-shoe-T3VG7N-removebg-preview.png',
  :color => '#D4D7D6')
Product.create(:name => 'Nike Odyssey React Flyknit 2',
  :description => 
  %{
    The Nike Odyssey React Flyknit 2 provides a strategic combination of lightweight Flyknit construction and synthetic material for support. Underfoot, Nike React cushioning delivers a soft, springy ride for a route that begs to be crushed.
  },
  :price => 71.97,
  :image => 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/1315882/odyssey-react-flyknit-2-mens-running-shoe-T3VG7N-removebg-preview.png',
  :color => '#D4D7D6')
Product.create(:name => 'Nike React Infinity Run Flyknit',
  :description => 
  %{
    A pioneer in the running shoe frontier honors the original pioneer of running culture with the Nike React Infinity Run Flyknit. Blue Ribbon Track Club-inspired details pay homage to the haven that was created before running was even popular. This running shoe is designed to help reduce injury and keep you on the run. More foam and improved upper details provide a secure and cushioned feel.
  },
  :price => 160,
  :image => 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/1315882/react-infinity-run-flyknit-mens-running-shoe-RQ484B__2_-removebg-preview.png',
  :color => '#F2F5F4')
Product.create(:name => 'Nike React Infinity Run Flyknit',
  :description => 
  %{
    The Nike React Miler gives you trusted stability for miles with athlete-informed performance. Made for dependability on your long runs, its intuitive design offers a locked-in fit and a durable feel.
  },
  :price => 130,
  :image => 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/1315882/react-miler-mens-running-shoe-DgF6nr-removebg-preview.png',
  :color => '#22AFDC')
Product.create(:name => 'Nike Renew Ride',
  :description => 
  %{
    The Nike Renew Ride helps keep the committed runner moving with plush cushioning. Firm support at the outsole helps you maintain stability no matter the distance.
  },
  :price => 60.97,
  :image => 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/1315882/renew-ride-mens-running-shoe-JkhdfR-removebg-preview.png',
  :color => '#B50320')
Product.create(:name => 'Nike Vaporfly 4% Flyknit',
  :description => 
  %{
    Built to meet the exacting needs of world-class marathoners, Nike Vaporfly 4% Flyknit is designed for record-breaking speed. The Flyknit upper delivers breathable support, while the responsive foam and full-length plate provide incredible energy return for all 26.2.
  },
  :price => 187.97,
  :image => 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/1315882/vaporfly-4-flyknit-running-shoe-v7G3FB-removebg-preview.png',
  :color => '#3569A1')
Product.create(:name => 'Nike Zoom Fly 3 Premium',
  :description => 
  %{
    Inspired by the Vaporfly, the Nike Zoom Fly 3 Premium gives distance runners race-day comfort and durability. The power of a carbon fiber plate keeps you in the running mile after mile.
  },
  :price => 160,
  :image => 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/1315882/zoom-fly-3-premium-mens-running-shoe-XhzpPH-removebg-preview.png',
  :color => '#54D4C9')