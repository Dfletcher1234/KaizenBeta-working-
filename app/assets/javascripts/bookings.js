document.addEventListener("DOMContentLoaded", function(event) {

  var button = document.querySelectorAll('.button')


  for (var i = 0; i < button.length; i++) {
  button[i].addEventListener('click', function(event){
    button = this
    $.ajax({
      url: "/bookings/"+this.id+"/confirm",
      dataType: 'JSON'
    }).done(function(response) {
      console.log(button);
      button.style.display = "none";
      button.parentNode.innerText += "CONFIRMED"
    }).failure(function(response){
      console.log("failed to render response");
    }).always(function(response){
      console.log("success kinda");
    })

});
}

$(".card").click(function() {
  window.location = $(this).find("a").attr("href");
  return false;
});
});
