// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.



$(document).on("turbolinks:load", function(event){

  console.log("suhhhh");

	
	$('.button-start').on("click", function(event){
 
      $('.bye').removeClass("appear");
     $('.bye').addClass("disppear");
     $('.js-location-modal').addClass("image_background");
    $(".js-activity-box").addClass("hidden");
    $(".js-activity-yoga").addClass("hidden");
    $(".js-activity-pilates").addClass("hidden");
    $(".js-activity-barre").addClass("hidden");
    $(".js-activity-cycle").addClass("hidden");
    



    $('.js-location-modal').modal("show");


  });






  $('.js-location-modal').on('hidden.bs.modal', function(){
     $('.bye').removeClass("disappear");

    
    $('.whole-page').removeClass("image_background");
    $('.bye').addClass("appear");

  });

		$('.js-location-btn').on("click", function (event) {


      var studArea = $(event.currentTarget).text().toLowerCase();
      $('.js-activity-name').data("area", studArea)

      $.ajax({
        type: "GET",
        url: "/api/studios/" + studArea,
      success: function(response){
        console.log(response);
        $('.js-location-modal').modal("hide");
        var activityArray = []
        response.forEach(function (act){
          activityArray.push(act.activity);
        });
        console.log(activityArray);
        

        if (activityArray.includes("Yoga")) {
          $(".js-activity-yoga").removeClass("hidden");
          $(".js-activity-yoga a").attr("href", `/welcome/${studArea}/yoga`);

        }
        if (activityArray.includes("Pilates")) {
          $(".js-activity-pilates").removeClass("hidden");
          $(".js-activity-pilates a").attr("href", `/welcome/${studArea}/pilates`);

        }
         if (activityArray.includes("Cycling")) {
          $(".js-activity-cycle").removeClass("hidden");
          $(".js-activity-cycle a").attr("href", `/welcome/${studArea}/cycling`);

        }

         if (activityArray.includes("Barre")) {
          $(".js-activity-barre").removeClass("hidden");
          $(".js-activity-barre a").attr("href", `/welcome/${studArea}/barre`);

        }

         if (activityArray.includes("Boxing")) {
          $(".js-activity-box").removeClass("hidden");
          $(".js-activity-box a").attr("href", `/welcome/${studArea}/boxing`);
        }
    // $('.bye').removeClass("appear");
    //  $('.bye').toggle("disppear");
     $('.js-location-modal').addClass("appear");
     $('.js-location-modal').removeClass("disappear");
     $('.js-activity-modal').addClass("image_background");


     $('.js-activity-modal').modal("show");
     
      },
      error: function (error) {
      console.log("Error!!");
    }  
	}); 
      });








		$('.button-back1').on("click", function(){
		$('.js-location-modal').modal("hide");


	});

		$('.button-back2').on("click", function(){
		$('.js-activity-modal').modal("hide");
    $(".js-activity-box").addClass("hidden");
    $(".js-activity-yoga").addClass("hidden");
    $(".js-activity-pilates").addClass("hidden");
    $(".js-activity-barre").addClass("hidden");
    $(".js-activity-cycle").addClass("hidden");
		$('.js-location-modal').modal("show");
	});

		// $('.btn-act').on("click", function (event){
  //     studArea = $('.js-activity-name').data("area")
   
  //     var studAct = $(event.currentTarget).text().toLowerCase();
  //     $.ajax({
  //       type: "GET",
  //       url: "/api/studios/" + studArea + "/" + studAct,
  //     success: function(response){
        
  //      console.log(response);

  //   response.forEach(function (x) {

      
  //     var details = `
  //     <ul>Activity Type:
  //      <li> ${x.activity} </li>
  //      Where?
  //      <li> ${x.area} </li>

    
  //       </ul>
 
  //     `; $(".js-time-name").append(details);
  //   });
  //    // $('.js-location-modal').addClass("appear");
  //    // $('.js-location-modal').removeClass("disappear");
  //    // $('.js-activity-modal').addClass("image_background");
    


  //    $('.js-activity-modal').modal("show");
  //     },
  //     error: function (error) {
  //     console.log("Error!!");
  //   }  
  // });
 




	// 	$('.js-activity-modal').modal("hide");

	// 	$('.js-time-modal').modal("show");
 //    $('.js-activity-modal').addClass("appear");
 //     $('.js-activity-modal').removeClass("disappear");
 //     $('.js-time-modal').addClass("image_background")

	// });

	// 	$('.button-back3').on("click", function(){
	// 	$('.js-time-modal').modal("hide");

	// 	$('.js-activity-modal').modal("show");
	// });
		// $('.button-next').on("click", function(show details){
});

// $('.button-result').on("click", function () {
//   redirect_t
// });
var t;
var seekers = [];

function setup() {
  createCanvas(windowWidth, windowHeight);

  t = new Target();
  for (var i = 0; i < 30; i++) {
    seekers[i] = new Seeker();
  }
}

function draw() {
  background(100);

  t.update();
  t.display();

  for (var i = 0; i < seekers.length; i++) {
    seekers[i].update();
    seekers[i].seek(createVector(t.pos.x, t.pos.y));
    seekers[i].display();

    //seekers[i].seek(createVector(mouseX, mouseY));	
  }

}

function mouseReleased() {
  for (var i = 0; i < seekers.length; i++) {
    var explode = createVector(random(-width, width), random(-height, height));
    console.log(explode);
    explode.mag(10);
    seekers[i].seek(explode);
  }

}



function Seeker() {

  this.pos = createVector(random(width), random(height));
  this.vel = createVector(random(-2, 2), random(-2, 2));
  this.acc = createVector(0, 0);
  this.sz = 10;
  this.maxSpeed = random(5, 8);
  this.maxForce = random(0.025, 0.75);
  this.trail = [];

  this.display = function() {
    fill(255);
    ellipse(this.pos.x, this.pos.y, this.sz, this.sz);

    for (var i = 0; i < this.trail.length; i++) {
      var pos = this.trail[i];

      noStroke();
      fill(200, i);
      ellipse(pos.x, pos.y, this.sz, this.sz);
    }
  }

  this.update = function() {
    this.vel.add(this.acc);
    this.pos.add(this.vel);
    this.acc.mult(0);

    if (this.trail.length > 50) {
      this.trail.splice(0, 1);
    }

    var v = createVector(this.pos.x, this.pos.y);
    this.trail.push(v);
  }

  this.applyForce = function(force) {
    this.acc.add(force);
  }
  this.seek = function(target) {
    var desired = p5.Vector.sub(target, this.pos);
    desired.setMag(this.maxSpeed);

    var steering = p5.Vector.sub(desired, this.vel);
    steering.limit(this.maxForce);
    this.applyForce(steering);
  }
}

function Target() {
  this.pos = createVector(width/2, height/2);
  this.newPos = createVector(width/2, height/2); 
  this.velX = 0.01;
  this.velY = 0.01;

  this.display = function() {
    fill(255, 0, 0);
    ellipse(this.pos.x, this.pos.y, 30, 30);

    if (frameCount % 75 === 0) {
      this.moveTarget();
    }
  }

  this.update = function() {
    this.pos.x = lerp(this.pos.x, this.newPos.x, this.velX);
    this.pos.y = lerp(this.pos.y, this.newPos.y, this.velY);
  }
  this.moveTarget = function() {
    this.newPos = createVector(random(30, width - 30), random(30, height - 30));
    this.velX = random(0.0085, 0.05);
    this.velY = random(0.0085, 0.05);
  }
}
