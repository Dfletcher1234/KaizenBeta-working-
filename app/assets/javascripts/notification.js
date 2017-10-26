// mentor_info notification
var mentorInfoNotification = function(){
  $.ajax({
    url: "/bookings/notification",
    method: "GET"
  }).done(function(response){
    console.log(response.notification);
    var notification = document.querySelector(".number-notifications")
    notification.innerHTML = response.number;
    var notification_data = document.querySelector(".dropdown-menu")
    notification_data.innerHTML = "";
    for (var i = 0; i < response.notification.length; i++) {
      notification_data.innerHTML += "<span class='dropdown-item'>"+response.notification[i].name+ "<button class='button' id="+response.notification[i].id+">CONFIRM</button>"+"</span>"
      //<span class="dropdown-item">Action</span>
    }
  })
}


setInterval(mentorInfoNotification, 5000)

// in controller check if user is a student or a mentor--use the booking status
