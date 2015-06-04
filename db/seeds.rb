# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

joey = User.create(name: 'Joey F. Poon', email: 'poonjf@gmail.com')
dummy_person = User.create(name: 'Dummy Person', email: 'dummy@person.com')
test_user = User.create(name: 'Test User', email: 'test@user.com')

Post.create(title: 'Some post', content: 'Bacon ipsum dolor amet jowl bacon meatball swine tenderloin, ham pig. Pork chop prosciutto doner jerky corned beef pig alcatra brisket picanha turducken meatball strip steak. Pork loin andouille tail, shoulder fatback spare ribs turducken chicken tenderloin alcatra landjaeger. Turducken ground round filet mignon pork chop, landjaeger venison ball tip meatball cow tail ham hock. Pork belly ham hock tri-tip, spare ribs meatball pork chop strip steak salami swine ball tip frankfurter sirloin shoulder. Turkey shank fatback, frankfurter picanha beef salami andouille meatball short loin swine.', votes: 6, user_id: joey.id)

Post.create(title: 'Some other post', content: 'Meatloaf boudin landjaeger, jerky pancetta tongue ham corned beef ground round. Strip steak capicola meatball, meatloaf corned beef pork loin sirloin turducken. Boudin doner sausage pork belly frankfurter, strip steak venison capicola chicken kevin sirloin jowl shank. Tongue ball tip leberkas, chicken fatback pork belly pork chop meatball capicola andouille pastrami. Chuck biltong ham hock, flank pork belly beef sausage brisket spare ribs.', votes: 7, user_id: dummy_person.id)

Post.create(title: 'Yet another post', content: 'Tri-tip strip steak shank, pork loin andouille hamburger picanha ball tip drumstick pig tenderloin. Kielbasa shankle chuck, chicken jerky swine cow. Venison kevin rump, ham hock sausage capicola porchetta picanha. Ribeye tri-tip bacon jerky leberkas ham hock.', votes: 0, user_id: test_user.id)

Post.create(title: 'Yet another post', content: 'Butt potatoooo aaaaaah chasy tulaliloo uuuhhh. Jiji ti aamoo! Aaaaaah tulaliloo gelatooo underweaaar la bodaaa tatata bala tu poopayee. Me want bananaaa! po kass tank yuuu! Pepete po kass. Jeje wiiiii uuuhhh hana dul sae wiiiii belloo! Wiiiii bee do bee do bee do poopayee tank yuuu! Para tú chasy para tú poulet tikka masala aaaaaah butt gelatooo. Tatata bala tu butt la bodaaa gelatooo. Aaaaaah chasy poopayee underweaaar para tú me want bananaaa! Poopayee.', votes: -4, user_id: joey.id)

Post.create(title: 'More Posts!', content: 'Minions ipsum underweaaar hana dul sae tatata bala tu. Butt bee do bee do bee do poulet tikka masala la bodaaa me want bananaaa! Po kass tulaliloo. Butt underweaaar hana dul sae tatata bala tu hahaha poopayee wiiiii. Daa jeje po kass daa butt wiiiii po kass bappleees tatata bala tu bee do bee do bee do butt. Underweaaar butt bee do bee do bee do baboiii bananaaaa underweaaar la bodaaa para tú bananaaaa. Daa jiji gelatooo underweaaar hahaha ti aamoo! Bee do bee do bee do poopayee para tú. Chasy baboiii bee do bee do bee do jeje poopayee pepete poulet tikka masala tulaliloo baboiii tulaliloo. Para tú jeje para tú poopayee uuuhhh baboiii tatata bala tu. ', votes: 3, user_id: dummy_person.id)
