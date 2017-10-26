// mentor_info notification
var mentorInfoNotification = function(){
  $.ajax({
    url: "/bookings/notification",
    method: "GET"
  }).done(function(response){
    console.log(response.number);
    var notification = document.querySelector(".number-notifications")
    notification.innerHTML = response.number;
  })
}


setInterval(mentorInfoNotification, 1000)

// in controller check if user is a student or a mentor--use the booking status
