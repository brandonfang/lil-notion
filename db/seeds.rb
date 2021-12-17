# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Page.destroy_all
Block.destroy_all

# ADD USERS 

u1 = User.create!(
  first_name: 'Doug',
  last_name: 'Engelbart',
  email: 'doug@engelbart.com',
  password: 'password'
)

u2 = User.create!(
  first_name: 'Ted',
  last_name: 'Nelson',
  email: 'ted@nelson.com',
  password: 'password'
)

u3 = User.create!(
  first_name: 'Ada',
  last_name: 'Lovelace',
  email: 'ada@lovelace.com',
  password: 'password'
)

u4 = User.create!(
  first_name: 'Alan',
  last_name: 'Kay',
  email: 'alan@kay.com',
  password: 'password'
)

u5 = User.create!(
  first_name: 'Steve',
  last_name: 'Jobs',
  email: 'steve@jobs.com',
  password: 'password'
)

# ADD PAGES

# Get Started
p1 = Page.create!(
  user_id: u1.id,
  title: "Get Started",
  gallery_image_url: '',
  icon: {
    "id": "sparkles",
    "name": "Sparkles",
    "short_names": [
      "sparkles"
    ],
    "colons": ":sparkles:", "emoticons": [],
    "unified": "2728",
    "skin": nil,
    "native": "✨"
  }
)

# Do Things that Don't Scale
p2 = Page.create!(
  user_id: u1.id,
  title: "Do Things that Don't Scale",
  gallery_image_url: '',
  icon: {
    "id": "herb",
    "name": "Herb",
    "short_names": [
      "herb"
    ],
    "colons": ":herb:",
    "emoticons": [],
    "unified": "1f33f",
    "skin": nil,
    "native": "🌿"
  }
)
# p2.cover.attach(io: URI.open('https://lilnotion-prod.s3.us-west-1.amazonaws.com/'), filename: '')

# 3 Minute Journal
p3 = Page.create!(
  user_id: u1.id,
  title: '3 Minute Journal',
  icon: {
    "id": "sun_with_face",
    "name": "Sun with Face",
    "short_names": [
      "sun_with_face"
    ],
    "colons": ":sun_with_face:",
    "emoticons": [],
    "unified": "1f31e",
    "skin": nil,
    "native": "🌞"
  }
)

# Blog Post
p4 = Page.create!(
  user_id: u1.id,
  title: 'Blog Post',
  icon: {
    "id": "pencil2",
    "name": "Pencil",
    "short_names": [
      "pencil2"
    ],
    # "colons": ":pencil2:",
    "emoticons": [],
    "unified": "270f-fe0f",
    "skin": nil,
    "native": "✏️"
  }
)
# p4.cover.attach(io: URI.open('https://lilnotion-prod.s3.us-west-1.amazonaws.com/blog-post-0.jpg'), filename: 'blog-post-0.jpg')

# ADD P1 BLOCKS

b1 = Block.create!({
  user_id: u1.id,
  page_id: p1.id,
  block_type: 'h1',
  text: '👋 Welcome to lilNotion! This is a private page for you to play around with.'
})

b2 = Block.create!({
  user_id: u1.id,
  page_id: p1.id,
  block_type: 'paragraph',
  text: 'Give these things a try:'
})

b3 = Block.create!({
  user_id: u1.id,
  page_id: p1.id,
  block_type: 'todo',
  checked: true,
  text: 'Create an account'
})

b4 = Block.create!({
  user_id: u1.id,
  page_id: p1.id,
  block_type: 'todo',
  text: 'Add a new line and insert something'
})

b5 = Block.create!({
  user_id: u1.id,
  page_id: p1.id,
  block_type: 'image',
  text: ''
})
b5.photo.attach(io: URI.open('https://lilnotion-prod.s3.us-west-1.amazonaws.com/plus-menu.gif'), filename: 'plus-menu.gif')

b6 = Block.create!({
  user_id: u1.id,
  page_id: p1.id,
  block_type: 'todo',
  text: 'Drag the ⋮⋮ button on the left of this to-do to reorder'
})

b7 = Block.create!({
  user_id: u1.id,
  page_id: p1.id,
  block_type: 'todo',
  text: 'Click the ⋮⋮ button and delete something'
})

b8 = Block.create!({
  user_id: u1.id,
  page_id: p1.id,
  block_type: 'todo',
  text: 'Click the ⋮⋮ button and change this block into a Heading 2'
})

b9 = Block.create!({
  user_id: u1.id,
  page_id: p1.id,
  block_type: 'todo',
  text: "Type '/' for slash commands"
})

b10 = Block.create!({
  user_id: u1.id,
  page_id: p1.id,
  block_type: 'paragraph',
  text: ""
})

b11 = Block.create!({
  user_id: u1.id,
  page_id: p1.id, 
  block_type: 'divider',
})

b12 = Block.create!({
  user_id: u1.id,
  page_id: p1.id,
  block_type: 'quote',
  # text: "In such a future working relationship between human problem-solver and computer 'clerk,' the capability of the computer for executing mathematical processes would be used whenever it was needed. However, the computer has many other capabilities for manipulating and displaying information that can be of significant benefit to the human in nonmathematical processes of planning, organizing, studying, etc. Every person who does his thinking with symbolized concepts (whether in the form of the English language, pictographs, formal logic, or mathematics) should be able to benefit significantly. (Douglas Engelbart)"
  text: "The hope is that, in not too many years, human brains and computing machines will be coupled together very tightly, and that the resulting partnership will think as no human brain has ever thought and process data in a way not approached by the information-handling machines we know today. (J. C. R. Licklider)"
})

#  ADD P2 BLOCKS 

b13 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "Source: <a contenteditable='false' href='http://www.paulgraham.com/ds.html' target='_blank'>Paul Graham</a>"
})

b14 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "July 2013"
})

b15 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "One of the most common types of advice we give at Y Combinator is to do things that don't scale. A lot of would-be founders believe that startups either take off or don't. You build something, make it available, and if you've made a better mousetrap, people beat a path to your door as promised. Or they don't, in which case the market must not exist."
})

b16 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "Actually startups take off because the founders make them take off. There may be a handful that just grew by themselves, but usually it takes some sort of push to get them going. A good metaphor would be the cranks that car engines had before they got electric starters. Once the engine was going, it would keep going, but there was a separate and laborious process to get it going."
})

b17 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'h3',
  text: "Recruiting"
})

b18 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "The most common unscalable thing founders have to do at the start is to recruit users manually. Nearly all startups have to. You can't wait for users to come to you. You have to go out and get them."
})

b19 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "Stripe is one of the most successful startups we've funded, and the problem they solved was an urgent one. If anyone could have sat back and waited for users, it was Stripe. But in fact they're famous within YC for aggressive early user acquisition."
})

b20 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "Startups building things for other startups have a big pool of potential users in the other companies we've funded, and none took better advantage of it than Stripe. At YC we use the term \"Collison installation\" for the technique they invented. More diffident founders ask \"Will you try our beta?\" and if the answer is yes, they say \"Great, we'll send you a link.\" But the Collison brothers weren't going to wait. When anyone agreed to try Stripe they'd say \"Right then, give me your laptop\" and set them up on the spot."
})

b21 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "There are two reasons founders resist going out and recruiting users individually. One is a combination of shyness and laziness. They'd rather sit at home writing code than go out and talk to a bunch of strangers and probably be rejected by most of them. But for a startup to succeed, at least one founder (usually the CEO) will have to spend a lot of time on sales and marketing."
})

b22 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "The other reason founders ignore this path is that the absolute numbers seem so small at first. This can't be how the big, famous startups got started, they think. The mistake they make is to underestimate the power of compound growth. We encourage every startup to measure their progress by weekly growth rate. If you have 100 users, you need to get 10 more next week to grow 10% a week. And while 110 may not seem much better than 100, if you keep growing at 10% a week you'll be surprised how big the numbers get. After a year you'll have 14,000 users, and after 2 years you'll have 2 million."
})

b23 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "You'll be doing different things when you're acquiring users a thousand at a time, and growth has to slow down eventually. But if the market exists you can usually start by recruiting users manually and then gradually switch to less manual methods."
})

b24 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "Airbnb is a classic example of this technique. Marketplaces are so hard to get rolling that you should expect to take heroic measures at first. In Airbnb's case, these consisted of going door to door in New York, recruiting new users and helping existing ones improve their listings. When I remember the Airbnbs during YC, I picture them with rolly bags, because when they showed up for tuesday dinners they'd always just flown back from somewhere."
})

b25 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'h3',
  text: "Fragile"
})

b26 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "Airbnb now seems like an unstoppable juggernaut, but early on it was so fragile that about 30 days of going out and engaging in person with users made the difference between success and failure."
})

b27 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "That initial fragility was not a unique feature of Airbnb. Almost all startups are fragile initially. And that's one of the biggest things inexperienced founders and investors (and reporters and know-it-alls on forums) get wrong about them. They unconsciously judge larval startups by the standards of established ones. They're like someone looking at a newborn baby and concluding \"there's no way this tiny creature could ever accomplish anything.\""
})

b28 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "It's harmless if reporters and know-it-alls dismiss your startup. They always get things wrong. It's even ok if investors dismiss your startup; they'll change their minds when they see growth. The big danger is that you'll dismiss your startup yourself. I've seen it happen. I often have to encourage founders who don't see the full potential of what they're building. Even Bill Gates made that mistake. He returned to Harvard for the fall semester after starting Microsoft. He didn't stay long, but he wouldn't have returned at all if he'd realized Microsoft was going to be even a fraction of the size it turned out to be."
})

b29 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "The question to ask about an early stage startup is not \"is this company taking over the world?\" but \"how big could this company get if the founders did the right things?\" And the right things often seem both laborious and inconsequential at the time. Microsoft can't have seemed very impressive when it was just a couple guys in Albuquerque writing Basic interpreters for a market of a few thousand hobbyists (as they were then called), but in retrospect that was the optimal path to dominating microcomputer software. And I know Brian Chesky and Joe Gebbia didn't feel like they were en route to the big time as they were taking   \"professional\" photos of their first hosts' apartments. They were just trying to survive. But in retrospect that too was the optimal path to dominating a big market."
})

b30 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "How do you find users to recruit manually? If you build something to solve your own problems, then you only have to find your peers, which is usually straightforward. Otherwise you'll have to make a more deliberate effort to locate the most promising vein of users. The usual way to do that is to get some initial set of users by doing a comparatively untargeted launch, and then to observe which kind seem most enthusiastic, and seek out more like them. For example, Ben Silbermann noticed that a lot of the earliest Pinterest users were interested in design, so he went to a conference of design bloggers to recruit users, and that worked well."
})

b31 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'h3',
  text: "Delight"
})

b32 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "You should take extraordinary measures not just to acquire users, but also to make them happy. For as long as they could (which turned out to be surprisingly long), Wufoo sent each new user a hand-written thank you note. Your first users should feel that signing up with you was one of the best choices they ever made. And you in turn should be racking your brains to think of new ways to delight them."
})

b33 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "Why do we have to teach startups this? Why is it counterintuitive for founders? Three reasons, I think."
})

b34 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "One is that a lot of startup founders are trained as engineers, and customer service is not part of the training of engineers. You're supposed to build things that are robust and elegant, not be slavishly attentive to individual users like some kind of salesperson. Ironically, part of the reason engineering is traditionally averse to handholding is that its traditions date from a time when engineers were less powerful — when they were only in charge of their narrow domain of building things, rather than running the whole show. You can be ornery when you're Scotty, but not when you're Kirk."
})

b35 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "Another reason founders don't focus enough on individual customers is that they worry it won't scale. But when founders of larval startups worry about this, I point out that in their current state they have nothing to lose. Maybe if they go out of their way to make existing users super happy, they'll one day have too many to do so much for. That would be a great problem to have. See if you can make it happen. And incidentally, when it does, you'll find that delighting customers scales better than you expected. Partly because you can usually find ways to make anything scale more than you would have predicted, and partly because delighting customers will by then have permeated your culture."
})

b36 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "I have never once seen a startup lured down a blind alley by trying too hard to make their initial users happy."
})

b37 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "But perhaps the biggest thing preventing founders from realizing how attentive they could be to their users is that they've never experienced such attention themselves. Their standards for customer service have been set by the companies they've been customers of, which are mostly big ones. Tim Cook doesn't send you a hand-written note after you buy a laptop. He can't. But you can. That's one advantage of being small: you can provide a level of service no big company can."
})

b38 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "Once you realize that existing conventions are not the upper bound on user experience, it's interesting in a very pleasant way to think about how far you could go to delight your users."
})

b39 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'h3',
  text: "Experience"
})

b40 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "I was trying to think of a phrase to convey how extreme your attention to users should be, and I realized Steve Jobs had already done it: insanely great. Steve wasn't just using \"insanely\" as a synonym for \"very.\" He meant it more literally — that one should focus on quality of execution to a degree that in everyday life would be considered pathological."
})

b41 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "All the most successful startups we've funded have, and that probably doesn't surprise would-be founders. What novice founders don't get is what insanely great translates to in a larval startup. When Steve Jobs started using that phrase, Apple was already an established company. He meant the Mac (and its documentation and even packaging — such is the nature of obsession) should be insanely well designed and manufactured. That's not hard for engineers to grasp. It's just a more extreme version of designing a robust and elegant product."
})

b42 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "What founders have a hard time grasping (and Steve himself might have had a hard time grasping) is what insanely great morphs into as you roll the time slider back to the first couple months of a startup's life. It's not the product that should be insanely great, but the experience of being your user. The product is just one component of that. For a big company it's necessarily the dominant one. But you can and should give users an insanely great experience with an early, incomplete, buggy product, if you make up the difference with attentiveness."
})

b43 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "Can, perhaps, but should? Yes. Over-engaging with early users is not just a permissible technique for getting growth rolling. For most successful startups it's a necessary part of the feedback loop that makes the product good. Making a better mousetrap is not an atomic operation. Even if you start the way most successful startups have, by building something you yourself need, the first thing you build is never quite right. And except in domains with big penalties for making mistakes, it's often better not to aim for perfection initially. In software, especially, it usually works best to get something in front of users as soon as it has a quantum of utility, and then see what they do with it. Perfectionism is often an excuse for procrastination, and in any case your initial model of users is always inaccurate, even if you're one of them."
})

b44 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "The feedback you get from engaging directly with your earliest users will be the best you ever get. When you're so big you have to resort to focus groups, you'll wish you could go over to your users' homes and offices and watch them use your stuff like you did when there were only a handful of them."
})

b45 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'h3',
  text: "Fire"
})

b46 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "Sometimes the right unscalable trick is to focus on a deliberately narrow market. It's like keeping a fire contained at first to get it really hot before adding more logs."
})

b47 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "That's what Facebook did. At first it was just for Harvard students. In that form it only had a potential market of a few thousand people, but because they felt it was really for them, a critical mass of them signed up. After Facebook stopped being for Harvard students, it remained for students at specific colleges for quite a while. When I interviewed Mark Zuckerberg at Startup School, he said that while it was a lot of work creating course lists for each school, doing that made students feel the site was their natural home.
"
})

b48 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "Any startup that could be described as a marketplace usually has to start in a subset of the market, but this can work for other startups as well. It's always worth asking if there's a subset of the market in which you can get a critical mass of users quickly."
})

b49 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "Most startups that use the contained fire strategy do it unconsciously. They build something for themselves and their friends, who happen to be the early adopters, and only realize later that they could offer it to a broader market. The strategy works just as well if you do it unconsciously. The biggest danger of not being consciously aware of this pattern is for those who naively discard part of it. E.g. if you don't build something for yourself and your friends, or even if you do, but you come from the corporate world and your friends are not early adopters, you'll no longer have a perfect initial market handed to you on a platter."
})

b50 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "Among companies, the best early adopters are usually other startups. They're more open to new things both by nature and because, having just been started, they haven't made all their choices yet. Plus when they succeed they grow fast, and you with them. It was one of many unforeseen advantages of the YC model (and specifically of making YC big) that B2B startups now have an instant market of hundreds of other startups ready at hand."
})

b51 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'h3',
  text: "Meraki"
})

b52 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "For hardware startups there's a variant of doing things that don't scale that we call \"pulling a Meraki.\" Although we didn't fund Meraki, the founders were Robert Morris's grad students, so we know their history. They got started by doing something that really doesn't scale: assembling their routers themselves."
})

b53 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "Hardware startups face an obstacle that software startups don't. The minimum order for a factory production run is usually several hundred thousand dollars. Which can put you in a catch-22: without a product you can't generate the growth you need to raise the money to manufacture your product. Back when hardware startups had to rely on investors for money, you had to be pretty convincing to overcome this. The arrival of crowdfunding (or more precisely, preorders) has helped a lot. But even so I'd advise startups to pull a Meraki initially if they can. That's what Pebble did. The Pebbles assembled the first several hundred watches themselves. If they hadn't gone through that phase, they probably wouldn't have sold $10 million worth of watches when they did go on Kickstarter."
})

b54 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "Like paying excessive attention to early customers, fabricating things yourself turns out to be valuable for hardware startups. You can tweak the design faster when you're the factory, and you learn things you'd never have known otherwise. Eric Migicovsky of Pebble said one of the things he learned was \"how valuable it was to source good screws.\" Who knew?"
})

b55 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'h3',
  text: "Consult"
})

b56 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "Sometimes we advise founders of B2B startups to take over-engagement to an extreme, and to pick a single user and act as if they were consultants building something just for that one user. The initial user serves as the form for your mold; keep tweaking till you fit their needs perfectly, and you'll usually find you've made something other users want too. Even if there aren't many of them, there are probably adjacent territories that have more. As long as you can find just one user who really needs something and can act on that need, you've got a toehold in making something people want, and that's as much as any startup needs initially."
})

b57 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "Consulting is the canonical example of work that doesn't scale. But (like other ways of bestowing one's favors liberally) it's safe to do it so long as you're not being paid to. That's where companies cross the line. So long as you're a product company that's merely being extra attentive to a customer, they're very grateful even if you don't solve all their problems. But when they start paying you specifically for that attentiveness — when they start paying you by the hour — they expect you to do everything."
})

b58 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "Another consulting-like technique for recruiting initially lukewarm users is to use your software yourselves on their behalf. We did that at Viaweb. When we approached merchants asking if they wanted to use our software to make online stores, some said no, but they'd let us make one for them. Since we would do anything to get users, we did. We felt pretty lame at the time. Instead of organizing big strategic e-commerce partnerships, we were trying to sell luggage and pens and men's shirts. But in retrospect it was exactly the right thing to do, because it taught us how it would feel to merchants to use our software. Sometimes the feedback loop was near instantaneous: in the middle of building some merchant's site I'd find I needed a feature we didn't have, so I'd spend a couple hours implementing it and then resume building the site."
})

b59 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'h3',
  text: "Manual"
})

b60 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "There's a more extreme variant where you don't just use your software, but are your software. When you only have a small number of users, you can sometimes get away with doing by hand things that you plan to automate later. This lets you launch faster, and when you do finally automate yourself out of the loop, you'll know exactly what to build because you'll have muscle memory from doing it yourself."
})

b61 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "When manual components look to the user like software, this technique starts to have aspects of a practical joke. For example, the way Stripe delivered \"instant\" merchant accounts to its first users was that the founders manually signed them up for traditional merchant accounts behind the scenes."
})

b62 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "Some startups could be entirely manual at first. If you can find someone with a problem that needs solving and you can solve it manually, go ahead and do that for as long as you can, and then gradually automate the bottlenecks. It would be a little frightening to be solving users' problems in a way that wasn't yet automatic, but less frightening than the far more common case of having something automatic that doesn't yet solve anyone's problems."
})

b63 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "Big"
})

b64 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "I should mention one sort of initial tactic that usually doesn't work: the Big Launch. I occasionally meet founders who seem to believe startups are projectiles rather than powered aircraft, and that they'll make it big if and only if they're launched with sufficient initial velocity. They want to launch simultaneously in 8 different publications, with embargoes. And on a tuesday, of course, since they read somewhere that's the optimum day to launch something."
})

b65 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "It's easy to see how little launches matter. Think of some successful startups. How many of their launches do you remember? All you need from a launch is some initial core of users. How well you're doing a few months later will depend more on how happy you made those users than how many there were of them."
})

b66 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "So why do founders think launches matter? A combination of solipsism and laziness. They think what they're building is so great that everyone who hears about it will immediately sign up. Plus it would be so much less work if you could get users merely by broadcasting your existence, rather than recruiting them one at a time. But even if what you're building really is great, getting users will always be a gradual process — partly because great things are usually also novel, but mainly because users have other things to think about."
})

b67 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "Partnerships too usually don't work. They don't work for startups in general, but they especially don't work as a way to get growth started. It's a common mistake among inexperienced founders to believe that a partnership with a big company will be their big break. Six months later they're all saying the same thing: that was way more work than we expected, and we ended up getting practically nothing out of it."
})

b68 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "It's not enough just to do something extraordinary initially. You have to make an extraordinary effort initially. Any strategy that omits the effort — whether it's expecting a big launch to get you users, or a big partner — is ipso facto suspect."
})

b69 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'h3',
  text: "Vector"
})

b70 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "The need to do something unscalably laborious to get started is so nearly universal that it might be a good idea to stop thinking of startup ideas as scalars. Instead we should try thinking of them as pairs of what you're going to build, plus the unscalable thing(s) you're going to do initially to get the company going."
})

b71 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "It could be interesting to start viewing startup ideas this way, because now that there are two components you can try to be imaginative about the second as well as the first. But in most cases the second component will be what it usually is — recruit users manually and give them an overwhelmingly good experience — and the main benefit of treating startups as vectors will be to remind founders they need to work hard in two dimensions."
})

b72 = Block.create!({
  user_id: u1.id,
  page_id: p2.id,
  block_type: 'paragraph',
  text: "In the best case, both components of the vector contribute to your company's DNA: the unscalable things you have to do to get started are not merely a necessary evil, but change the company permanently for the better. If you have to be aggressive about user acquisition when you're small, you'll probably still be aggressive when you're big. If you have to manufacture your own hardware, or use your software on users's behalf, you'll learn things you couldn't have learned otherwise. And most importantly, if you have to work hard to delight users when you only have a handful of them, you'll keep doing it when you have a lot."
})

#  ADD P3 BLOCKS 

b73 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'h2',
  text: 'Morning 🌞'
})

b74 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'h3',
  text: 'What did I dream?'
})

b75 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'paragraph',
  text: ''
})

b76 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'h3',
  text: 'Three things I am grateful for'
})

b77 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'numberedList',
  text: ''
})

b78 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'paragraph',
  text: ''
})

b79 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'h3',
  text: 'Looking forward to'
})

b80 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'paragraph',
  text: ''
})

b81 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'h3',
  text: 'What under my control would make today even more great'
})

b82 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'paragraph',
  text: ''
})

b83 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'h3',
  text: 'Idea for Experiment to Run'
})

b84 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'paragraph',
  text: ''
})

b85 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'h3',
  text: 'If I lived even more consciously, freely, and courageously I would:'
})

b86 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'paragraph',
  text: ''
})

b87 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'h3',
  text: 'I am'
})

b88 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'paragraph',
  text: ''
})

b89 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'h3',
  text: 'Most Important Thing to Focus On'
})

b90 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'paragraph',
  text: ''
})

b91 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'paragraph',
  text: ''
})

b92 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'divider',
})

b93 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'h2',
  text: 'Night 🌛'
})

b94 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'h3',
  text: 'Three wins'
})

b95 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'numberedList',
  text: ''
})

b96 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'paragraph',
  text: ''
})

b97 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'h3',
  text: 'One thing I learned'
})

b98 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'paragraph',
  text: ''
})

b99 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'h3',
  text: 'Is it a Breakthrough Idea?'
})

b100 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'paragraph',
  text: ''
})

b101 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'h3',
  text: 'One thing I could have done to make today better and how can I apply it tomorrow? Something I could have said better?'
})

b102 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'paragraph',
  text: ''
})

b103 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'h3',
  text: 'Am I resisting something? What?'
})

b104 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'paragraph',
  text: ''
})

b105 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'h3',
  text: 'Favorite thing of my day?'
})

b106 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'paragraph',
  text: ''
})

b107 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'h3',
  text: 'Short story of a moment today:'
})

b108 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'paragraph',
  text: ''
})

b109 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'h3',
  text: 'Experiment/hypothesis from today?'
})

b110 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'paragraph',
  text: ''
})

b111 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'h3',
  text: 'What could I do tomorrow that is High Leverage? High/boundless upside, low downside.'
})

b112 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'paragraph',
  text: ''
})

b113 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'h3',
  text: 'Request for subconscious mind to sleep on:'
})

b114 = Block.create!({
  user_id: u1.id,
  page_id: p3.id,
  block_type: 'paragraph',
  text: ''
})

#  ADD P4 BLOCKS 

b115 = Block.create!({
  user_id: u1.id,
  page_id: p4.id,
  block_type: 'paragraph',
  text: "A conversation with Ray Garcia, Jonathan Gold, Evan Kleiman, Bricia Lopez, and Carlos Salgado about the evolving role of Mexican cuisine in LA as culture, art, and craft"
})

b116 = Block.create!({
  user_id: u1.id,
  page_id: p4.id,
  block_type: 'paragraph',
  text: "Source: <a contenteditable='false' href='http://blogs.getty.edu/iris/5-food-icons-on-the-evolving-role-of-mexican-cuisine-in-la/' target='_blank'>Food Icons on the Evolving Role of Mexican Cuisine in LA</a>"
})

b117 = Block.create!({
  user_id: u1.id,
  page_id: p4.id,
  block_type: 'paragraph',
  text: "Together, critic Jonathan Gold, food scholar Evan Kleiman, and chefs Ray Garcia, Bricia Lopez, and Carlos Salgado have spent more than a lifetime preparing, eating, and writing about Latin American cuisine. Before their recent panel discussion at the Getty, offered in conjunction with Pacific Standard Time, they sat down with us to reflect on the role of Mexican cuisine in the life of Los Angeles and how we might expand our taste buds to go deeper."
})

b118 = Block.create!({
  user_id: u1.id,
  page_id: p4.id,
  block_type: 'image',
  image_caption: 'In the Getty Center auditorium for the recent “There Will Be Food“ panel.'
})
b118.photo.attach(io: URI.open('https://lilnotion-prod.s3.us-west-1.amazonaws.com/blog-post-1.jpg'), filename: 'blog-post-1.jpg')

b119 = Block.create!({
  user_id: u1.id,
  page_id: p4.id,
  block_type: 'h3',
  text: "SS: As a chef (or critic), do you consider yourself an artist?"
})

b120 = Block.create!({
  user_id: u1.id,
  page_id: p4.id,
  block_type: 'paragraph',
  text: "EK: Art to me often has an intellectual component. I think of food preparation as a craft–I don’t think of it as art."
})

b121 = Block.create!({
  user_id: u1.id,
  page_id: p4.id,
  block_type: 'paragraph',
  text: "RG: My personal approach to food is more of a craftsman. I like having my tools in hand, sort of creating and building, and my approach is much more trial and error. It’s part social scientist, and part repair person or builder. I put food out, and wait for the reaction, and see what we can push, what we can improve."
})

b122 = Block.create!({
  user_id: u1.id,
  page_id: p4.id,
  block_type: 'paragraph',
  text: "JG: I’m a writer. Some people can call writers artists, some people cannot. In terms of food, there are people who approach cuisine from an art angle. Carlos Salgado is astonishing that way. His food is rooted in Mexican flavors, but there’s this level of abstraction in his food. Is it art as opposed to food? No, it’s food, but it’s being approached in a different way."
})

b123 = Block.create!({
  user_id: u1.id,
  page_id: p4.id,
  block_type: 'paragraph',
  text: "CS: The highest point in my life is being with close family and friends, in the backyard over a fire, cooking over the course of many hours, sitting under the sky, and just filling this space with so much warmth. When I’m cooking there, I feel much more like an artist than when I worked in the highest-concept restaurants. They are like museums of food, accessible only with a certain level of literacy on the part of the diner, with a certain level of cultural experience and background."
})

b124 = Block.create!({
  user_id: u1.id,
  page_id: p4.id,
  block_type: 'image',
  image_caption: 'Tamale with pepitas at Taco María in Costa Mesa'
})
b124.photo.attach(io: URI.open('https://lilnotion-prod.s3.us-west-1.amazonaws.com/blog-post-2.jpg'), filename: 'blog-post-2.jpg')

b125 = Block.create!({
  user_id: u1.id,
  page_id: p4.id,
  block_type: 'h3',
  text: "SS: This panel represents Mexican American cuisine in LA. What other kinds of Latin American cuisine or particular dishes from other regions do you like?"
})

b126 = Block.create!({
  user_id: u1.id,
  page_id: p4.id,
  block_type: 'paragraph',
  text: "JG: El Salvadoreño cooking. It’s very basic, but the ways they use corn and greens and cheese. The fermentations are lovely."
})

b127 = Block.create!({
  user_id: u1.id,
  page_id: p4.id,
  block_type: 'paragraph',
  text: "EK: I love Guatemalan tamales, maybe more than Mexican tamales. The masa is often mixed with potato, so it’s much more tender. They’re wrapped in banana leaves, so there’s a different flavor. And the way they are filled is different; often there’s olives or raisins or prunes in them."
})

b128 = Block.create!({
  user_id: u1.id,
  page_id: p4.id,
  block_type: 'paragraph',
  text: "BL: I love Peruvian food. Everything from the ceviche to rice and beans, all of the flavors. It has so much depth."
})

b129 = Block.create!({
  user_id: u1.id,
  page_id: p4.id,
  block_type: 'paragraph',
  text: "CS: Baja coastal cuisine. The freshness of it–you eat seafood in the morning because it just came in. Very simply prepared, very intense, briny ocean flavors: big clams, oysters, shrimp. Big, big flavors."
})

b130 = Block.create!({
  user_id: u1.id,
  page_id: p4.id,
  block_type: 'image',
  image_caption: 'Dishes at Broken Spanish, in Downtown LA.'
})
b130.photo.attach(io: URI.open('https://lilnotion-prod.s3.us-west-1.amazonaws.com/blog-post-3.jpg'), filename: 'blog-post-3.jpg')

b131 = Block.create!({
  user_id: u1.id,
  page_id: p4.id,
  block_type: 'h3',
  text: "SS: If you could recommend one dish or element in Mexican-American cuisine that a total beginner must try, what would it be?"
})

b132 = Block.create!({
  user_id: u1.id,
  page_id: p4.id,
  block_type: 'paragraph',
  text: "EK: Tacos, because anything you eat with your hands is less intimidating than something that requires silverware. It takes you back to the permission of childhood, and that joy of just eating that is super direct. There is nothing in between you and the food."
})

b133 = Block.create!({
  user_id: u1.id,
  page_id: p4.id,
  block_type: 'paragraph',
  text: "BL: I think mole is a really good one. A lot of people think of it as a chocolate sauce, and yes, it has chocolate, but it also has like 18 other things. I always recommend three things: mole, the barbacoa, and the chiles rellenos at my restaurant, just because I think they are universally delicious."
})

b134 = Block.create!({
  user_id: u1.id,
  page_id: p4.id,
  block_type: 'paragraph',
  text: "CS: I would say try more and different types of chilies, and the salsas that result from them. The range of flavors, and balance of flavors, is really exciting, and is my favorite part of Mexican food."
})

b135 = Block.create!({
  user_id: u1.id,
  page_id: p4.id,
  block_type: 'paragraph',
  text: "RG: Put aside your thoughts and limitations on what Mexican food can be, and how much it can cost. Especially in LA, there is almost a cult-like following for cheap Mexican food, for the greasy taco truck. There is something people find exciting about that, but I think it’s good to stop and wonder why your taco costs a dollar. There must be a lot behind it that allows you to eat a dollar taco. It probably doesn’t include a living wage, a safe work environment, or the best quality ingredients for you and your body. We could understand where our food is coming from and be a bit more conscious in our choices."
})

# SET BLOCK_IDS FOR PAGES

p1.block_ids = [
  b1.id,
  b2.id,
  b3.id,
  b4.id,
  b5.id,
  b6.id,
  b7.id,
  b8.id,
  b9.id,
  b10.id,
  b11.id,
  b12.id,
]

p2.block_ids = [
  b13.id,
  b14.id,
  b15.id,
  b16.id,
  b17.id,
  b18.id,
  b19.id,
  b20.id,
  b21.id,
  b22.id,
  b23.id,
  b24.id,
  b25.id,
  b26.id,
  b27.id,
  b28.id,
  b29.id,
  b30.id,
  b31.id,
  b32.id,
  b33.id,
  b34.id,
  b35.id,
  b36.id,
  b37.id,
  b38.id,
  b39.id,
  b40.id,
  b41.id,
  b42.id,
  b43.id,
  b44.id,
  b45.id,
  b46.id,
  b47.id,
  b48.id,
  b49.id,
  b50.id,
  b51.id,
  b52.id,
  b53.id,
  b54.id,
  b55.id,
  b56.id,
  b57.id,
  b58.id,
  b59.id,
  b60.id,
  b61.id,
  b62.id,
  b63.id,
  b64.id,
  b65.id,
  b66.id,
  b67.id,
  b68.id,
  b69.id,
  b70.id,
  b71.id,
  b72.id,
]

p3.block_ids = [
  b73.id,
  b74.id,
  b75.id,
  b76.id,
  b77.id,
  b78.id,
  b79.id,
  b80.id,
  b81.id,
  b82.id,
  b83.id,
  b84.id,
  b85.id,
  b86.id,
  b87.id,
  b88.id,
  b89.id,
  b90.id,
  b91.id,
  b92.id,
  b93.id,
  b94.id,
  b95.id,
  b96.id,
  b97.id,
  b98.id,
  b99.id,
  b100.id,
  b101.id,
  b102.id,
  b103.id,
  b104.id,
  b105.id,
  b106.id,
  b107.id,
  b108.id,
  b109.id,
  b110.id,
  b111.id,
  b112.id,
  b113.id,
  b114.id,
]

p4.block_ids = [
  b115.id,
  b116.id,
  b117.id,  
  b118.id,  
  b119.id,
  b120.id,
  b121.id,
  b122.id,
  b123.id,
  b124.id,
  b125.id,
  b126.id,
  b127.id,
  b128.id,
  b129.id,
  b130.id,
  b131.id,
  b132.id,
  b133.id,
  b134.id,
  b135.id,
]

# p('p1', p1.block_ids)
# p('p2', p2.block_ids)
# p('p3', p3.block_ids)
# p('p4', p4.block_ids)