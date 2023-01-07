
/*
$(document).ready(function () {

  $(window).scroll(function () {
    let scroll = $(window).scrollTop();
    if (scroll > 70) {
      $(".nav-parent").addClass("nav-changeColor")
    }
    else {
      $(".nav-parent").removeClass("nav-changeColor")
    }
  });

  $(".hamburger").click(function () {
    $(".bar1").toggleClass("bar1-open")
    $(".bar2").toggleClass("bar2-open")
    $(".bar3").toggleClass("bar3-open")
    $(".nav-menu").toggleClass("menu-open")

    let scroll = $(window).scrollTop();
    if (scroll < 70) {
      $(".nav-parent").toggleClass("nav-changeColor")
    }
  })

  $(".nav-item").click(function () {

    $(".bar1").toggleClass("bar1-open")
    $(".bar2").toggleClass("bar2-open")
    $(".bar3").toggleClass("bar3-open")
    $(".nav-menu").toggleClass("menu-open")
  })

  // slick 

  $('.our-game-slider-parent').slick({
    dots: true,
    infinite: true,
    speed: 300,
    slidesToShow: 1,
    adaptiveHeight: true
  });


})
*/
editAccount = document.querySelector('#edit_accButton')

editAccount.addEventListener('click', (e) => {
  $('body,html').animate({scrollTop: 0}, 100); 
})

chatbotNew = document.querySelector('#chatbotNew')

chatbotNew.addEventListener('click', (e) => {
  setTimeout(function () {
    
    $('body,html').animate({scrollTop: 0}, 100); 
},2);
})


more_faqs = document.querySelector('#faq_more')
fare = document.querySelector('#faqs')
i = 0




more_faqs.addEventListener('click', (e) => {
  i += 1;
  console.log("ok");
  let doc = `<div class="faq-single" id='addedfaq_${i}' >
  <div class="faq-question">
    <label for="lname">Question</label><br>
    <input type="text" id="q${i}" name="q${i}" value=""><br><br>
  </div>
  <div class="faq-answer">
    <label for="lname">Answer</label><br>
    <input type="text" id="a${i}" name="a${i}" value=""><br><br>
  </div>
  
</div>

`;

  fare.insertAdjacentHTML("beforeend", doc);
  
})

