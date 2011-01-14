$(document).ready(function(){
	// $('#prj_gallery').galleria({
	// 	autoplay: true
	// });
  $('.nivoSlider').nivoSlider({
  	effect:'random',
  	keyboardNav:true,
  	pauseOnHover:true
  });
		
	var customers = [
	  [ "They exceeded our expectations and we recommend them wholeheartedly.*Helena | Managing Director, Go-Trendy.com",
	    "If you're looking for quality development and quality people, look no further.*Helena | Managing Director, Go-Trendy.com",	
	    "The working demo that Vinova produced has spurred significant evolution in our own conversations.*Helena | Managing Director, Go-Trendy.com",
	    "They take a very professional approach, but are easy to work with.*Helena | Managing Director, Go-Trendy.com",
	    "They are excellent Ruby on Rails developers. Good communication and driven. Will use Vinova on future projects.*Helena | Managing Director, Go-Trendy.com",
	    "They were a great team to work with and brought solid ideas and enthusiasm to the task at hand.*Helena | Managing Director, Go-Trendy.com",
	    "They are very professional and responsive at helping us resolve our issues. An excellent find.*Helena | Managing Director, Go-Trendy.com",
	    "I highly recommend Vinova team. We worked with them for over a year and they always delivered on time and as promised.*Helena | Managing Director, Go-Trendy.com",
	    "They did a great job on my tricky project. The transition was very smooth.*Helena | Managing Director, Go-Trendy.com",
	    "Their skills are outstanding and all the works they did was on time with high quality.*Helena | Managing Director, Go-Trendy.com",
	    "If you are fortunate to see them available for hire, by all means take them, they are well worth the money.*Helena | Managing Director, Go-Trendy.com",
	    "Their agile practices and disciplined project management allowed them to understand and build our system in a surprisingly short time.*Helena | Managing Director, Go-Trendy.com",
	    "All the work was extremely professional and completed within a timely manner.*Helena | Managing Director, Go-Trendy.com",
	    "Vinova did an outstanding job for us and it is greatly appreciated. Above and beyond what I would have expected when going into this.*Helena | Managing Director, Go-Trendy.com",
	    "It has been a real pleasure to work with people who are so responsive, prompt and creative.*Helena | Managing Director, Go-Trendy.com"
	  ],
	  [ "I had a tight schedule and a somewhat unrealistic specs. Vinova helped me decide what's important AND kept to the timeline. Highly recommended.*Kevin Ng | Business Development Manager, Maha Chemicals Pte Ltd"
	  ],
	  [ "They have shown great abilities and knowledge to get things done in the most challenging and difficult period even at odd hours.*Joe Lim | Asst Manager, Singapore Safety Driving Centre Ltd"	
	  ],
	  [ 
		"We have been looking for long time a team who can bring new, artistic and creative ideas to our projects. Then we've met Vinova. It was the best team we've ever worked with.*Tam Nguyen | Founder & Director at Vncrafts.com & Khaitamlacquerware.com",
		"The quality of their work exceeded our expectations! Thanks to Vinova, now our beautiful products could touch and stay forever in our clients’ heart. Very impressive and effective!*Tam Nguyen | Founder & Director at Vncrafts.com & Khaitamlacquerware.com",
		"We would recommend them to anyone who is looking for a professional, talented group to help your projects developed in a right way.*Tam Nguyen | Founder & Director at Vncrafts.com & Khaitamlacquerware.com"
	  ]
	];
	
	var testimonials = customers[Math.floor(Math.random()*customers.length)];	
	var testimonial = testimonials[Math.floor(Math.random()*testimonials.length)];
	$("#testimonial_content").text('"' + testimonial.split("*")[0] + '"');
	$("#testimonial_author").text(testimonial.split("*")[1]);
});