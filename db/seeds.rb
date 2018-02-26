# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Resources
Resource.create({
	:slug => 'resources/how-to-choose-ahi',
	:title => 'How to Choose A Home Inspector',
	:seo_title => 'How to Choose A Home Inspector',
	:seo_description => 'An unqualified home inspector may do more harm than good. So it is important you help your customers choose a home inspector you can all count on to get the job done right.',
	:seo_keywords => 'Home Inspector',
  :body => '<p>A professional home inspection is a very important step in the home buying process. Unfortunately not all home inspectors are created equal. An untrained, uninsured or otherwise unqualified home inspector may do more harm than good. So it is important you help your customers or clients choose a home inspector you can all count on to get the job done right. To assist you in this effort, you can distribute to your customers and clients this checklist to further demonstrate your commitment to helping them make a fully informed decision.</p>
<p>Not all home inspection services are created equal. More than ever it&#x2019;s important that you Inspect the Inspector. While licensing requirements or trade association memberships are good to look for when selecting a home inspector, they are not the ONLY qualifications to look for. The following is a list of &#x201c;must have&#x201d; credentials that have been prepared to help consumers evaluate and select the most qualified home inspection service.</p>
<h2>Inspection Guarantee*</h2>
<p>The company you select should stand behind their service. A written guarantee documents how post-inspection issues will be addressed and demonstrates the company&#x2019;s confidence in the quality and thoroughness of their inspections.</p>
<h3>Questions To Ask: </h3>
<ul>
<li>Does the company stand behind their inspection reports in writing? </li>
<li>Does the company include a complimentary limited guarantee with each inspection report? </li>
<li>What protection does your company offer against defects found after purchase? </li>
<li>How long does the guarantee last and what are its limitations? </li>
</ul>
<p>*Guarantee not permitted in all areas.</p>
<h2>Formally Trained or Certified Inspectors</h2>
<p>There is no single professional background that fully trains an individual for all the different conditions that may be detected during a home inspection. Regardless of previous technical experience, ALL HOME INSPECTORS should be required to be trained and tested in the field of home inspections and have access to on-going technical support.</p>
<h3>Questions To Ask: </h3>
<ul>
<li>What kind of formal training do your inspectors receive? </li>
<li>What is the extent of their on-going training? </li>
<li>Are your inspectors tested annually? </li>
<li>Do your inspectors have access to technical support if they have a question?</li>
</ul>
<h2>Insurance</h2>
<p>One of the most important credentials to look for when selecting a home inspection company is whether or not they carry Professional Liability Insurance, also known as E&amp;O insurance. Inspectors with little experience, no training, or a poor track record find this insurance difficult to purchase and often operate without it. Additionally, General Liability Insurance should be in place to cover the inspector if anything should be damaged during the inspection. While no one anticipates anything going wrong, it can happen. Make sure you select a home inspector that is properly insured!</p>
<h3>Questions To Ask: </h3>
<ul>
<li>Are your inspectors covered by E&amp;O Insurance? </li>
<li>Does the company carry General Liability Insurance?</li>
</ul>
<h2>Report Quality and Access</h2>
<p>The home inspection company you choose should encourage your attendance on the inspection and should provide you with an easy-to-understand written report on the findings of the inspection. You should verify that all the major elements will be accurately described in the report and not just rated as &#x201c;functional&#x201d; or &#x201c;not functional.&#x201d; Your inspection report should give the approximate ages of all the major elements of the home, as well as an estimated life span of those elements. It should also include detailed information/images of the major systems inspected and conditions found.</p>
<h3>Questions To Ask: </h3>
<ul>
<li>Can I accompany the inspector on the inspection and ask questions? </li>
<li>Will your report reflect estimated ages of all the major elements?</li>
</ul>',
  :is_featured => 1,
	:published_date => Date.strptime('2015-09-21 00:00:00'),
	:view_count => 1,
	:author => 'HouseMaster',
	:author_image => '',
	:header_image_home => 'NULL',
	:header_image => 'https://s3-us-west-2.amazonaws.com/hm-com/resources/howtochooseahomeinspector.jpg',
	:article_image => 'https://s3-us-west-2.amazonaws.com/hm-com/resources/howtochooseahomeinspector.jpg'
})
Resource.create({
	:slug => 'resources/spring-tips',
	:title => 'Tips for Agents This Spring Season',
	:seo_title => 'Tips for Agents This Spring Season',
	:seo_description => 'Spring is a busy agent season with the upturn in the economy. Here are some tips for your spring selling season.',
	:seo_keywords => 'Tips for Agents',
	:body => '<p>Spring is in full swing, flowers are blooming, trees are budding and the market is flooded with home buyers feverishly looking for their dream home. It promises to be a busy season with all signs pointing to an upturn in the economy. What does this mean for you? A fantastically busy season filled with new clients and serious stress!</p>
<h2>Think ahead</h2>
<p>Keep in mind, this busy season won&#x2019;t last forever. Delegate some responsibilities to staff so you can keep your current customers happy and you can also work towards cultivating future business.</p>
<h2>Answer the Question Before it is Asked</h2>
<p>Keep in touch with your clients often to make sure everyone is on the same page. A consistent flow of information means that your clients are less stressed and in turn, so are you.</p>
<h2>Educate your Buyers</h2>
<p>When you speak to your buyers, make sure they are aware of the market basics and the reality of making a fast, confident offer. When you speak to your sellers, it is important that they are educated on the condition of their home and its value.</p>
<p>With interest rates projected to be a point higher by the third quarter, buyers will be clamoring to buy &#x2013; good luck this season!</p>',
  :is_featured => 1,
	:published_date => Date.strptime('2015-09-21 00:00:00'),
	:view_count => 1,
	:author => 'HouseMaster',
	:author_image => '',
	:header_image_home => 'NULL',
	:header_image => 'https://s3-us-west-2.amazonaws.com/hm-com/resources/tipsforagentsthisspring.jpg',
	:article_image => 'https://s3-us-west-2.amazonaws.com/hm-com/resources/tipsforagentsthisspring.jpg'
})
Resource.create({
	:slug => 'resources/buying-a-home',
	:title => 'Buying a Home, Solo',
	:seo_title => 'Buying a Home, Solo',
	:seo_description => 'Here are some great insights for home buyers looking at going it alone.',
	:seo_keywords => 'Buying a Home',
  :body => '<p>Taking on the challenges of home ownership and maintenance can be challenging enough for two people - here are some great insights for people looking to go it alone.</p>
<h2>An upward trend in single home buyers</h2>
<p>Real estate remains one of the most secure financial investments, regardless of who is making it. There are great tax advantages of home ownership, and with people staying single longer, the trend of single home ownership is continuing to rise. </p>
<h2>What makes it different?</h2>
<p>Single buyers need to consider the same list of things that couples consider, plus a few more. The biggest consideration for a single buyer is re-sale value. Few single buyers stay in the homes they buy for extended periods of time. Job transfers, marriage, and new adventures can shake things up.</p>',
  :is_featured => 1,
	:published_date => Date.strptime('2015-09-21 00:00:00'),
	:view_count => 1,
	:author => 'HouseMaster',
	:author_image => '',
	:header_image_home => 'NULL',
	:header_image => 'https://s3-us-west-2.amazonaws.com/hm-com/resources/buyingahousesolo.jpg',
	:article_image => 'https://s3-us-west-2.amazonaws.com/hm-com/resources/buyingahousesolo.jpg'
})
Resource.create({
	:slug => 'resources/first-time-buyers',
	:title => 'First Time Buyers',
	:seo_title => 'First Time Buyers',
	:seo_description => 'First time home buyers can help themselves in the home buying process with these simple tips and tricks.',
	:seo_keywords => 'Home Buyers',
  :body => '<h2>Expert Advice on Selecting and Buying a Home</h2>
<p>Buying a home is one of the largest investments you might ever make, and can be an overwhelming experience. As the oldest and most experienced real estate inspection service in the US and Canada, HouseMaster has helped nearly three million homebuyers reduce their stress and make sound real estate decisions.</p>
<h2>Things to keep in mind</h2>
<p>At HouseMaster, we like to say the three most important words in real estate are LOCATION, LOCATION, CONDITION!</p>
<h2>Location, location</h2>
<p>Many considerations must be taken into account when determining where you should buy a home. Proximity to employment and the quality of the schools are common factors to determine if the location is suitable.</p>
<p>Many communities now have websites full of information you can review when selecting your future home location. Once you\'ve narrowed your search to a few towns or communities, contact local real estate agents to learn more about real estate in that area.</p>
<p>In addition to getting a feel for housing in the area, we recommend you spend some time in the town you are considering. Have a meal at a local restaurant, do some shopping, or visit the library to get a feel for the community. And make sure you visit the area during the day and at night, on weekdays as well as weekends.</p>
<h2>Condition</h2>
<p>Condition is a significant factor to be calculated into your home purchase equation. Which is why a certified inspection service should be an important part of your team.</p>
<p>All homes require constant care; care that will cost money. Most homebuyers take into consideration what the cost of paying the home\'s mortgage, taxes and utilities will be, but fail to factor in home repairs and maintenance. HouseMaster estimates that to adequately maintain a home in today\'s economy, home owners need to spend between 1-3% of the cost of the home each year on maintenance. Many HouseMaster customers ask if it\'s better to buy a home in a good condition at a higher price or a home in need of repairs at a lower price?</p>
<p>The answer is: It depends! While this response may seem vague, this is where the information provided by your inspector on the inspection will be important for the buyer to consider. </p>
<h2>New Construction</h2>
<p>Many homebuyers who are considering purchasing a newly built home wonder if a real estate inspection is necessary. The answer is yes! Even though local municipality officials will perform code inspections, this does not ensure that all defects will be found by the municipal inspectors and the home will be constructed properly and free of defects.</p>
<p>Even though local municipality officials will perform code inspections, this does not ensure that all defects will be found by the municipal inspectors and that the home was constructed properly and free of defects. In addition, the clich&eacute; "they don\'t make them like they used to" holds very true for new construction homes. Many builders require home inspections on the homes they build because they understand the value of a real estate inspector providing an objective check of the construction of the home is in everyone\'s best interest.</p>
<h2>Once you\'ve found a home</h2>
<p>Your real estate agent and/or law professional should explain the purchasing process, make and negotiate the offer, and prepare the contracts. Once the contract has been accepted you will need to make arrangements for your home inspection. Most contracts only allow 7-14 days for you to obtain all necessary inspections. HouseMaster offices generally schedule inspection appointments within 48-72 hours of the request, which is normally more than enough time. We encourage you to attend the inspection and follow along with your inspector. HouseMaster inspectors will be eager to address your particular concerns and explain their findings as well as demonstrate how to operate many of the systems in the home.</p>
<h2>Don\'t forget to inspect the inspector</h2>
<p>All home inspectors are NOT created equal. Choosing the right inspection organization is crucial. To make certain your home inspector is qualified you need to "Inspect the Inspector". Follow this important advice and you will be able to make an informed real estate purchase.</p>',
	:published_date => Date.strptime('2015-09-21 00:00:00'),
	:view_count => 1,
	:author => 'HouseMaster',
	:author_image => '',
	:header_image_home => 'NULL',
	:header_image => 'https://s3-us-west-2.amazonaws.com/hm-com/resources/firsttimehomebuyers.jpg',
	:article_image => 'https://s3-us-west-2.amazonaws.com/hm-com/resources/firsttimehomebuyers.jpg'
})
Resource.create({
	:slug => 'resources/what-type-of-buyer-are-you',
	:title => 'What Type of Buyer Are You?',
	:seo_title => 'What Type of Buyer Are You?',
	:seo_description => 'There are many different types of home buyers - determine which type you are.',
	:seo_keywords => 'Home Buyers',
  :body => '<p>There are several different types of buyers when it comes to the purchasing of a new home. Your needs may be different from another buyer depending on the nature of your purchase, your life situation, and the location and size of home you&#x2019;re looking at. For example, if you are looking at purchasing a second home or a vacation home, the amount of maintenance the home will require may be a big concern. On the other hand, if you are a handy home buyer and have always dreamed of buying your own fixer upper and making needed repairs and upgrades yourself, you may have different requirements. Here you can find buyer information specific to many different types of buying options and properties.</p>
<h2>First Time Buyers</h2>
<p>Buying a home is often one of the most important - and expensive - decisions you can make. If this is your first time, gathering all of the information you possibly can is be crucial. Try to ensure you know everything you can about a home before you buy. A HouseMaster home inspection is a great place to start. </p>
<h2>Vintage Property Buyers</h2>
<p>Older homes have charm and details that are often missing from newer construction. Because of their advanced age and methods of construction, vintage homes require a trained eye that can provide an objective opinion. It&#x2019;s also important to ask the right questions and to ask a lot of questions &#x2013; you will want each piece of information available on the home before you buy.</p>
<h2>Townhouse/Condo Buyers</h2>
<p>Although these types of dwellings generally require less maintenance than detached, single-family homes, there are things to look out for - especially when it comes to shared systems and structural elements. What will the HOA fee be? What amenities are included? Will you be able to have pets, a barbeque grill, a parking spot? How has the condo or townhome been maintained over the years? Asking these questions is important.</p>
<h2>Vacation Home Buyers</h2>
<p>Because these homes are often located in areas of extreme environmental conditions (salt air, humidity, snow, etc.), vacation homes are subject to more weather related wear and tear than homes in more moderate areas. Also, since these homes are usually occupied only part-time, owners need to be more vigilant about maintenance. </p>
<h2>Investment Properties</h2>
<p>Real estate, including commercial property, continues to be a sound investment. Your local HouseMaster inspector can be instrumental in helping you determine the condition of the building or unit and understanding some of the systems that are present behind what is visible to the eye.</p>',
	:published_date => Date.strptime('2015-09-21 00:00:00'),
	:view_count => 1,
	:author => 'HouseMaster',
	:author_image => '',
	:header_image_home => 'NULL',
	:header_image => 'https://s3-us-west-2.amazonaws.com/hm-com/resources/whattypeofbuyerareyou.jpg',
	:article_image => 'https://s3-us-west-2.amazonaws.com/hm-com/resources/whattypeofbuyerareyou.jpg'
})
Resource.create({
	:slug => 'resources/why-you-need-housemaster',
	:title => 'Why You Need HouseMaster',
	:seo_title => 'Why You Need HouseMaster',
	:seo_description => 'Without a home inspection performed by a professional, neither the buyer nor the seller can really know what defects may exist.',
	:seo_keywords => 'Home Inspections',
  :body => '<h2>A home inspection protects all parties</h2>
<p>The truth is, without a thorough home inspection performed by a qualified professional, neither the buyer nor the seller can really know what defects may exist in a home.</p>
<p>HouseMaster has more experience with home inspections and buying than any other franchise company. As part of your home inspection, your local HouseMaster professional will evaluate all the major elements of the home, including heating, cooling, structure, electrical, plumbing - and more, so that you can make an informed decision.</p>
<h2>Why a home inspection is a smart investment</h2>
<p>Whether this is your first time buying a home or you have bought and sold many homes, HouseMaster recommends you obtain a professional home inspection to take advantage of these benefits:</p>
<ul>
<li>Find out what type of systems and components exist in your new home.</li>
<li>Determine the condition of the systems and major components of the home.</li>
<li>Understand how the systems and structural components of your new home function.</li>
<li>Learn how to maintain your new home to improve the enjoyment and value of your home.</li>
</ul>
<h2>Important tips when arranging a home inspection</h2>
<ol>
<li>When buying a home, you will want to order a home inspection soon after your purchase offer has been accepted.
<br><br>
Many of the real estate contracts allow a limited number of days to complete a home inspection (and then to request repairs, or cancel the contract if needed).</li>
<li>Inspect the inspector.
<br><br>
There is no one background that fully trains an individual for all the different conditions that may exist in a home. And even in areas where licensing exists, many programs fall short. Regardless of their technical background or licensing, all home inspectors should be formally trained/certified to perform a home inspection by an organization such as the National Institute of Building Inspectors (NIBI&#x00ae;), thus insuring their knowledge of the home inspection and home buying process. Choose a home inspector who has earned credentials for competence and professionalism. Make sure the inspector you select has access to on-going technical support and offers you post-inspection advice if needed.</li>
<li>If the home is vacant, confirm that the seller will have all utilities on during the home inspection.
<br><br>
Failure to do so may require a second trip to the home when the utilities are on, and you will incur additional fees. To properly evaluate a home a professional inspector must be able to operate the systems, thus requiring the utilities to be on.</li>
<li>Accompany the inspector during the home inspection.
<br><br>
This is your opportunity to gain knowledge of major systems, appliances and fixtures, learn maintenance tips, better understand the items that will be outlined in the written report, and ask questions of the inspector.</li>
<li>If your inspector recommends a further evaluation, please have a specialist in the area conduct a more extensive examination PRIOR to closing.</li>
<li>Be sure you understand all conditions identified in the inspection report and reported defects/and or areas of concern have been resolved to your satisfaction before closing.</li>
<li>Insist on a final walk-through
<br><br>
Prior to close of escrow, insist on a final walk-through to verify that repairs have been made and that no new problems have surfaced since the home inspection, particularly in the areas where furnishings and storage may have previously obstructed the defect.</li>
</ol>
<h2>What is involved in a "Pre-purchase Home Inspection"</h2>
<p>A home inspector conducts a visual examination of the home you are planning to buy. He or she will examine all of the major elements of the home, such as the roof, structure, exterior siding, interior electrical, interior plumbing, heating and air conditioning. A thorough inspection usually takes 2 to 3 hours, depending on home size and age. Normally, the buyer pays for the home inspection, although more and more sellers are retaining the services of a professional home inspector before sale negotiations begin.</p>',
	:published_date => Date.strptime('2015-09-21 00:00:00'),
	:view_count => 1,
	:author => 'HouseMaster',
	:author_image => '',
	:header_image_home => 'NULL',
	:header_image => 'https://s3-us-west-2.amazonaws.com/hm-com/resources/whyyouneedhousemaster.jpg',
	:article_image => 'https://s3-us-west-2.amazonaws.com/hm-com/resources/whyyouneedhousemaster.jpg'
})
Resource.create({
	:slug => 'resources/common-home-styles',
	:title => 'Common Home Styles',
	:seo_title => 'Common Home Styles',
	:seo_description => 'Brush up on your residential architecture with a quick overview of the 9 most common home styles.',
	:seo_keywords => 'Home Styles',
  :body => '<p>Are you in the process of buying a home and don\'t know your cape cods from your colonials? You can brush up on your residential architecture with our quick overview of the 9 most common home styles.</p>
<h2>Ranch</h2>
<p>Ranch style homes feature one-level living. There may be a full or partial basement. Generally, a garage is attached to the side of the house. These are often preferred by home-buyers looking for a low impact, easy to navigate layout.</p>
<img style="margin-bottom:20px" src="https://s3-us-west-2.amazonaws.com/hm-com/resources/common-home-styles/ranch.jpg"/>
<h2>Split Level</h2>
<p>This style of house became very popular following World War II because of the amount of space and utility provided. Split levels fall into two types: side-to-side and front-to-back. These are often preferred by families looking for multiple bedrooms, or multiple areas of the home to be used for different purposes.</p>
<img style="margin-bottom:20px" src="https://s3-us-west-2.amazonaws.com/hm-com/resources/common-home-styles/split.jpg"/>
<h2>Colonial</h2>
<p>This style of two-story house has been a mainstay of residential architecture for many years. These are generally well-built homes, with many being custom built. The main appeal seems to be the spaciousness and elegance. </p>
<img style="margin-bottom:20px" src="https://s3-us-west-2.amazonaws.com/hm-com/resources/common-home-styles/colonial.jpg"/>
<h2>Cape Cod</h2>
<p>This very practical one and one-half story style home has been popular for many years, with most capes concentrated in the northern regions. Many resale capes have been expanded over the years for increased living area. </p>
<img style="margin-bottom:20px" src="https://s3-us-west-2.amazonaws.com/hm-com/resources/common-home-styles/capecod.jpg"/>
<h2>Contemporary</h2>
<p>These "casual" houses are usually sheathed in redwood or stained hardwood and come in many sizes and shapes. </p>
<img style="margin-bottom:20px" src="https://s3-us-west-2.amazonaws.com/hm-com/resources/common-home-styles/contemporary.jpg"/>
<h2>Bi-Level</h2>
<p>This style of home is also referred to as a split ranch. The bi-level house is a modified version of the ranch house, with the major difference being that the lower level is more out of the ground than in the ground. Seldom is there a basement. </p>
<img style="margin-bottom:20px" src="https://s3-us-west-2.amazonaws.com/hm-com/resources/common-home-styles/bilevel.jpg"/>
<h2>Victorian</h2>
<p>The Victorian style house was built in various models during the turn of the last century. Home buyers appreciate the architectural nuances of Victorian houses including large porches and interesting bay windows. </p>
<img style="margin-bottom:20px" src="https://s3-us-west-2.amazonaws.com/hm-com/resources/common-home-styles/victorian.jpg"/>
<h2>Townhouse</h2>
<p>This style of house takes its name from the type of house that dominated the early residential development of our early cities, notably the row houses. </p>
<img style="margin-bottom:20px" src="https://s3-us-west-2.amazonaws.com/hm-com/resources/common-home-styles/townhouse.jpg"/>
<h2>Tudor</h2>
<p>Tudors and other English style homes were commonly built during the period of the late 1800s through the 1920s. The combination of stucco and distinctive wood trim exterior provides the Tudor style house with a uniqueness that is very appealing.</p>
<img style="margin-bottom:20px" src="https://s3-us-west-2.amazonaws.com/hm-com/resources/common-home-styles/tudor.jpg"/>',
	:published_date => Date.strptime('2015-09-21 00:00:00'),
	:view_count => 1,
	:author => 'HouseMaster',
	:author_image => '',
	:header_image_home => 'NULL',
	:header_image => 'https://s3-us-west-2.amazonaws.com/hm-com/resources/common-home-styles/tudor.jpg',
	:article_image => 'https://s3-us-west-2.amazonaws.com/hm-com/resources/common-home-styles/tudor.jpg'
})
Resource.create({
	:slug => 'resources/how-to-inspect-your-inspector',
	:title => 'How to Inspect Your Inspector',
	:seo_title => 'How to Inspect Your Inspector',
	:seo_description => 'Choosing an inspection company is just as important as choosing a home. Some common questions to consider when shopping for a quality home inspection.',
	:seo_keywords => 'Home Inspector',
  :body => '<p>Choosing the right inspection company can be just as important as choosing the right home. Here are a few common questions to consider when shopping for a quality service.</p>
<p>My inspector doesn\'t have a guarantee, but says he never had a problem and would fix anything that went wrong. Isn\'t that good enough? </p>
<p>No. Any home inspector with a good track record should be willing to provide a guarantee in writing to avoid any miscommunications should a post-sale problem arise.</p>
<p>In our area, house inspectors are licensed. Will that guarantee I get a quality inspection? </p>
<p>While licensing is a good first step, it won\'t guarantee you get a good inspector. Most licensing programs do not require on-going training, provide any technical assistance or require malpractice insurance. Even in areas where licensing exists, you should look at an inspector\'s qualifications beyond these licensing requirements.</p>
<p>My inspector says he doesn\'t need insurance because he\'s never had a problem. Should I accept that? </p>
<p>A well-trained inspector will not experience significant problems, but you should never use a house inspector without insurance. A proven track record of quality inspections actually makes it much less expensive to maintain this insurance. Inspectors who are new to the inspection industry or those who have a spotty track record may not have access to this type of coverage. You\'ll find that the most reputable of inspection firms carry Errors and Omissions insurance.</p>
<p>My agent suggested an inspector and told me her experience with him has always been good. Can I rely on her recommendation? </p>
<p>Regardless of where you learn about an inspector, you should check them out yourself. Most real estate professionals encourage this as well. Ask if the inspector has any literature on his firm or a web site. Call the inspection company and ask questions. This way you are certain you are comfortable with your choice of inspector.</p>
<p>My inspector rates things in either functional or not functional condition. Is this enough detail for a good inspection report? </p>
<p>While all home inspectors use relatively broad terms, the term "functional" covers a very wide spectrum of conditions. Is the system functional but in need of repair or is it functional and expected to last many more years? These are important considerations to make when thinking about future repair and maintenance costs.</p>',
	:published_date => Date.strptime('2015-09-21 00:00:00'),
	:view_count => 1,
	:author => 'HouseMaster',
	:author_image => '',
	:header_image_home => 'https://s3-us-west-2.amazonaws.com/hm-com/resources/how-to-inspect-your-inspector/bg02.jpg',
	:header_image => 'https://s3-us-west-2.amazonaws.com/hm-com/resources/how-to-inspect-your-inspector/homesellerhowtoinspectyourinpector.jpg',
	:article_image => 'https://s3-us-west-2.amazonaws.com/hm-com/resources/how-to-inspect-your-inspector/homesellerhowtoinspectyourinpector.jpg'
})
Resource.create({
	:slug => 'resources/the-charm-and-challenges-of-vintage-homes',
	:title => 'The Charm and Challenges of Vintage Homes',
	:seo_title => 'The Charm and Challenges of Vintage Homes',
	:seo_description => 'Nothing compares to the charm and workmanship found in an older homes. And although they are beautiful, they can require a bit of extra attention.',
	:seo_keywords => 'Older Homes',
  :body => '<p>For many people, nothing compares to the charm and workmanship found in an older home. The individuality of the home is reflected in the type of buyer attracted to these homes. And although these homes are unique and beautiful, they often require a little bit of extra attention. </p>
<h2>Money</h2>
<p>When purchasing an older home, it&#x2019;s important to keep in mind the possibility of repairs and upkeep popping up along the way. A leaky faucet, an older furnace and a worn roof can all require attention once you&#x2019;ve purchased an older home.</p>
<p>Because of the home&#x2019;s age, you will need to budget for higher than average maintenance costs. </p>
<p>If the older home you are considering buying is currently in need of many repairs, plan a budget which prioritizes the work needed as well as desired cosmetic changes. The internet is a wonderful tool to use for this purpose.</p>
<p>Sites such as trusthss.com (The Home Service Store), and HGTV.com provide information on many remodeling projects, repairs and additions. Knowledge is important when buying an older home &#x2013; knowing what you&#x2019;re getting into and it will require will help you understand the work that will be required later down the road.</p>
<h2>Motivation</h2>
<p>Even if you have the resources to make the necessary changes, being motivated is important. Repairs and cosmetic needs performed by a professional contractor can make things easier on you, but you will still need to dedicate time to researching the right contractor as well as the correct materials and products. There will also be a need for someone to deal with changes and surprises when doing the renovations, and someone will need to oversee the progress.</p>
<p>Many people are excited about a challenge like this &#x2013; a project to put time and energy into can be a very fun and exciting thing. If this sounds like you, an older home might be a great choice!</p>
<h2>Muscle</h2>
<p>Renovating, repairing, and maintaining an older home requires perseverance and determination. As with motivation, even if you are not planning on doing repairs or renovations yourself, managing your contractors will take strength and energy.</p>
<p>Are you comfortable in this role? Do you have experience managing or performing renovation projects? Either way, we wish you good luck with your new/old home!</p>',
	:published_date => Date.strptime('2015-09-21 00:00:00'),
	:view_count => 1,
	:author => 'HouseMaster',
	:author_image => '',
	:header_image_home => 'https://s3-us-west-2.amazonaws.com/hm-com/resources/the-charm-and-challenges-of-vintage-homes/bg01.jpg',
	:header_image => 'https://s3-us-west-2.amazonaws.com/hm-com/resources/the-charm-and-challenges-of-vintage-homes/TheCharmAndChallengesOfVintageHomes.jpg',
	:article_image => 'https://s3-us-west-2.amazonaws.com/hm-com/resources/the-charm-and-challenges-of-vintage-homes/TheCharmAndChallengesOfVintageHomes.jpg'
})
Resource.create({
	:slug => 'resources/common-electrical-concerns',
	:title => 'Common Electrical Concerns When Selling an Older Home',
	:seo_title => 'Common Electrical Concerns When Selling an Older Home',
	:seo_description => 'Although a professional home inspection is always recommended, here\'s a short list of common electrical concerns to get you thinking.',
	:seo_keywords => 'Electrical Concerns',
  :body => '<p>Although a thorough and professional home inspection is always recommended to determine the state of your electrical systems in your home, here&#x2019;s a short list of common concerns to get you thinking about things. </p>
<h2>ELECTRICAL SERVICE </h2>
<p>The use of electric appliances and devices has increased substantially since the first homes were wired for electricity. For the typical size home, 100 amps are generally considered the minimum acceptable electric capacity. For large homes or homes occupied by the typical modern family making use of many of the electric devices now available, at least 150 amps would be more appropriate. While a certain service size may have been adequate for a particular home in the past, any renovation work or the upgrading of major appliances may necessitate an increase in the capacity of the panel and/or household service.</p>
<h2>ELECTRIC PANELS</h2>
<p>The main panel is the connection point between the incoming service lines and the house wiring. It typically contains a service disconnect (the main shut-off), overload protection (circuit breakers or fuses), and associated conductors (wiring). All circuits in the panel should be clearly labeled so that a particular circuit can be readily located in an emergency or for servicing needs. It is generally recommended, and now often required, that there be a main disconnect to shut down the house\'s electrical system quickly and easily. If there is no main circuit, consideration should be given to providing one, particularly if there are numerous sub-mains or household circuits.</p>
<p>The rating of circuit breakers and fuses must be compatible with the connected wire. Oversized fuses or circuit breakers present a potential hazard. The standard household wire sizes are 14 AWG (American Wire Gauge) and 12 AWG; these conductors should be protected by 15 and 20 amp fuses or breakers, respectively. Multiple circuits connected to a single overload device are often found. While this practice is common, the potential for an operational nuisance or overload hazard may exist. It is good practice (and in many cases required) to have only one wire connected to an individual circuit breaker or fuse.</p>
<h2>GROUNDING </h2>
<p>Electric continuity or bonding must be provided from all points in an electrical system to a grounding electrode (rod). Ungrounded components should be corrected. Older two-prong electrical receptacles without grounding provisions do not allow for the proper grounding of appliances. While an adapter may work in certain temporary situations, permanently grounded three-prong receptacles is recommended in locations where appliance grounding is required. In some situations, rewiring of the circuit(s) may be necessary. </p>
<h2>KNOB AND TUBE WIRING</h2>
<p>Know and tube wiring was originally used in many older homes. While it may still be functional, there are likely areas with damaged insulation and other concerns. It is a two-wire system that is not compatible with modern appliances that require grounding. If present, an electrician should check all areas to determine the repairs or upgrades required.</p>
<h2>ALUMINUM WIRING ON HOUSEHOLD CIRCUITS</h2>
<p>While now commonly used primarily on main service lines and major appliance circuits, aluminum wiring was also used on household circuits between 1964 and the mid 1970s. The inherent characteristics of aluminum, and the wiring methods and/or materials used for household circuits, resulted in faulty connections, which created hazardous conditions. Since then, warnings about fire concerns and the development of new devices designed for aluminum led to remedial work being done on many systems. However, it is still generally recommended that all aluminum systems be checked prior to title transfer, and periodically thereafter, to determine if remedial work is required.</p>',
	:published_date => Date.strptime('2015-09-21 00:00:00'),
	:view_count => 1,
	:author => 'HouseMaster',
	:author_image => '',
	:header_image_home => 'https://s3-us-west-2.amazonaws.com/hm-com/resources/common-electrical-concerns/bg04.jpg',
	:header_image => 'https://s3-us-west-2.amazonaws.com/hm-com/resources/common-electrical-concerns/CommonElectricalConcerns.jpg',
	:article_image => 'https://s3-us-west-2.amazonaws.com/hm-com/resources/common-electrical-concerns/CommonElectricalConcerns.jpg'
})
Resource.create({
	:slug => 'resources/deal-killers',
	:title => '4 Real Estate Deal Killers',
	:seo_title => '4 Real Estate Deal Killers',
	:seo_description => 'Find out how to prepare for and avoid these 4 real estate deal killers.',
	:seo_keywords => 'Real Estate Deal Killers',
  :body => '<p>Are you in the process of buying a home and don\'t know your cape cods from your colonials? Improving your knowledge will help you communicate better with your real estate agent and get you on the short path to your dream home! You can brush up on your residential architecture with our home buyer quick guide to common home styles.</p>
<p>This guide covers the most popular styles of homes in North America, including why some people prefer certain layouts.</p>
<h2>Ranch</h2>
<p>This style of house features one-level living. There may be a full or partial basement. The major advantage is step-saving convenience. Ranch houses are usually more expensive to build than colonials or split-levels. But they are often easier to maintain than a multi-level house. There are many different floor plans to satisfy almost every desire. </p>
<h2>Split Level</h2>
<p>This style of house became very popular following World War II because of the amount of space and utility provided. Split levels fall into two types: side-to-side and front-to-back.</p>
<p>Many split level houses have a basement. The next level, usually at ground level, contains a den/playroom. The next levels contain the kitchen/dining room/living room and the final level the bedrooms/bathrooms. </p>
<h2>Colonial</h2>
<p>These are generally well-built houses, with many being custom built. Their main appeal seems to be the spaciousness and elegance. There are many variations of colonial style houses available. The colonial house built in the past 40 years may consist of a partially finished basement, a first floor with a living room, dining room, eat-in kitchen, family room, porch and powder room. The second floor contains the bedrooms and bathrooms.</p>
<h2>Cape Cod</h2>
<p>This very practical one and one-half story style of house has been popular for many years, with most capes concentrated in the northern regions. Standard cape cods have a first floor kitchen, living room, dining room, bathroom and a bedroom. The second floor contains one or two small bedrooms. Capes are space-efficient and seem to maintain their value over the years.</p>
<h2>Bi-Level</h2>
<p>This style of house is also referred to as a split ranch. The bi-level house is a modified version of the ranch house, with the major difference being that the lower level is more out of the ground than in the ground. Seldom is there a basement. Entry is often to the center of the house, with the foyer being split between the lower and upper levels. The lower area will frequently consist of a built-in garage and a storage area. </p>
<h2>Victorian</h2>
<p>The Victorian style of house was built in various models during the turn of the last century. Home buyers appreciate the architectural nuances of Victorian houses including large porches and interesting bay windows. As with most older houses, conditions and selling prices vary greatly. The houses that have been mechanically updated through the years and have been well maintained may command premium prices.</p>
<h2>Tudor</h2>
<p>Tudors and other English style houses were built during the period of the late 1800s through the 1920s. The combination of stucco and distinctive wood trim exterior provides the Tudor style house with a uniqueness that is most appealing. Tudors are also noted for their gables, large angular chimney\'s and slate roofs. Tudors are particularly appealing to families with large space needs. </p>
<h2>Townhouse</h2>
<p>This style of house takes its name from the type of house that dominated the early residential development of our early cities, notably the row houses. The townhouse, often sold in condominium developments, is an independent structure, usually of two or three stories, attached to another similar building on either one or two sides. This style of house is usually economical to purchase and its maintenance needs and utility costs are lower than other house styles.</p>',
	:published_date => Date.strptime('2015-09-21 00:00:00'),
	:view_count => 1,
	:author => 'HouseMaster',
	:author_image => '',
	:header_image_home => 'NULL',
	:header_image => 'https://s3-us-west-2.amazonaws.com/hm-com/resources/4realestatedealkillers.jpg',
	:article_image => 'https://s3-us-west-2.amazonaws.com/hm-com/resources/4realestatedealkillers.jpg'
})
Resource.create({
	:slug => 'resources/sell-well',
	:title => 'Sell Well: Home Negotiation Tips',
	:seo_title => 'Sell Well: Home Negotiation Tips',
	:seo_description => 'Sellers are better positioned to fend off unrealistic price negotiations by getting using this home negotiation strategy.',
	:seo_keywords => 'Selling a Home',
  :body => '<ol>
<li>Be realistic. Avoid souring a deal by trying to over-exploit a situation during negotiations. If defects are discovered, get reputable or solid estimates to substantiate your position so that negotiations are realistic and professional.</li>
<li>Consider a home warranty. If many of the major systems in the home are working but are older, consider offering a home warranty as a bonus. Most warranty programs are renewable so a buyer can opt to continue the coverage after the warranty period expires.</li>
</ol>
<p>A professional inspection report and estimates for repairs will provide you with the right documentation to engage in realistic negotiations. With the right preparation, you can sell your home in a way that feels fair and straightforward.</p>
<p>Remember, these tips are only general guidelines. Since each situation is different, contact a real estate or home inspection professional if you have questions about a specific issue. More information is available online at housemaster.com.</p>
<p>Price negotiations are a part of most real estate deals. Sellers usually brace themselves as the buyer\'s home inspector combs through the house, but sellers do not need to feel powerless and anxious. Sellers are better positioned to fend off unrealistic price negotiations by getting a pre-listing home inspection first.</p>
<p>Stay Ahead of the Game A pre-listing inspection allows the seller to stay a step ahead. There are three major benefits for the seller to get his or her own inspection:</p>
<ol>
<li>Better preparation for a more efficient sale: You can choose to fix potential defects that could turn off a prospective buyer. So when you\'re ready to list your home it\'s in a highly marketable condition.</li>
<li>Positive impressions: The fact that you took the time to inspect your home and address defects in advance shows house hunters that you\'re serious about selling your home, trustworthy and conscientious.</li>
<li>Helps avoid last-minute deal breakers: Pre-listing inspections help reduce the probability of last-minute complications at closing. A defect discovered during a buyer\'s inspection can derail a deal at the last minute, after weeks have gone by.</li>
</ol>
<h2>Pre-Listing Inspection Tips:</h2>
<ol>
<li>Choose your inspector carefully. Your home inspector should be qualified and credible. Check the inspector\'s training, ongoing education programs, any certifications they may carry and if they have all the necessary local licenses.</li>
<li>Attend the inspection. A good home inspector will encourage you to attend the inspection because it makes the written report much more meaningful.</li>
<li>Focus on the major elements. Every home has minor or cosmetic flaws which you should consider correcting. An inspector will not really focus on peeling wallpaper or cracked sidewalks, although he may document it. In general, anything that would cost less than $500 to fix should be considered normal maintenance. Repairs that exceed that amount are more likely to be negotiable.</li>
</ol>',
	:published_date => Date.strptime('2015-09-21 00:00:00'),
	:view_count => 1,
	:author => 'HouseMaster',
	:author_image => '',
	:header_image_home => 'NULL',
	:header_image => 'https://s3-us-west-2.amazonaws.com/hm-com/resources/sellwellhomenegotiationtips.jpg',
	:article_image => 'https://s3-us-west-2.amazonaws.com/hm-com/resources/sellwellhomenegotiationtips.jpg'
})
Resource.create({
	:slug => 'resources/thinking-of-selling-your-home',
	:title => 'Thinking of Selling Your Home?',
	:seo_title => 'Thinking of Selling Your Home?',
	:seo_description => 'Being involved in the process can go a long way towards saving you time and money when selling a home. Here are a few quick and easy suggestions.',
	:seo_keywords => 'Selling a Home',
  :body => '<p>Hiring qualified real estate professionals, such as a licensed broker or agent, is the first step toward success when selling a home. However, as a home owner looking to sell, being involved in the process can go a long way towards saving you time and money.</p>
<p>Here are a few quick and easy suggestions.</p>
<h2>Save Time and Money</h2>
<p>Just like a professional home inspection makes good sense for a home buyer, it can be equally as helpful to the home seller. The market analysis prepared by your real estate agent can help in determining a fair listing price for your home, but is not a complete resource and will not reflect the true physical condition of the home. This is an area where only a professional home inspection can be of assistance. If the major systems in your home are new, you\'ve updated your home over time and the structural components of your home have been well maintained, you should consider promoting this information through a home listing inspection report that reflects it.</p>
<h2>What About Repairs?</h2>
<p>The ideal use of a pre-inspection by a home seller is to determine what repairs are needed in the home and make them.</p>
<p>Sellers with homes found in need of repairs should make the repairs and provide the listing inspection report to buyers along with documentation (warranties on the work or receipts) that the repairs have been made. This generates enormous good faith between buyers and sellers and increases the likelihood of a quick and amicable sale. </p>
<h2>Ways to Enhance The Appeal of Your Home</h2>
<p>HouseMaster has performed over 3 million home inspections and knows the most common things that tend to sour a deal. These problems can be the difference in turning good prospects into passers by.</p>
<p>If any of conditions below can be found in your home, it would be a worthwhile investment to correct it before you put your house up for sale. If you are unaware of any of these problems, call your local HouseMaster office today for a complete check of your home.</p>
<ul>
<li>Water in the Basement</li>
<li>Termites/Carpenter Ants</li>
<li>Low Water Pressure</li>
<li>Kitchen Appliance Problems</li>
<li>Inadequate Electrical Power</li>
<li>Roof Leaks</li>
<li>Too Few Electrical Outlets</li>
<li>Broken Window Seals</li>
<li>Squeaky Floors/Stairs</li>
<li>Malfunctioning Windows</li>
</ul>',
	:published_date => Date.strptime('2015-09-21 00:00:00'),
	:view_count => 1,
	:author => 'HouseMaster',
	:author_image => '',
	:header_image_home => 'NULL',
	:header_image => 'https://s3-us-west-2.amazonaws.com/hm-com/resources/ThinkingOfSellingYourHome.jpg',
	:article_image => 'https://s3-us-west-2.amazonaws.com/hm-com/resources/ThinkingOfSellingYourHome.jpg'
})
