document.addEventListener("DOMContentLoaded", function() {
var availiabilityButton = document.getElementById('your_id');

availiabilityButton.addEventListener('change', function() {
// if checked then set availiablity column to true
$.ajax({
    url: '/mentor_availabilities',
    dataType: 'JSON'
}).done(function(response){
  console.log("Congratulations, you are availiable");
  console.log(response);
}).fail(function(){
  console.log("Sorry, something is not working.");

});
});
});
