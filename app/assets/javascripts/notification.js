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
      notification_data.innerHTML += "<a class='dropdown-item' href="+response.notification[i].url+">"+response.notification[i].name+ " <small>"+response.notification[i].status+"<br/>Date:" + response.notification[i].date +"<br/>Time:" + response.notification[i].time +"</small></a>"
      //<span class="dropdown-item">Action</span>
    }
  })
}


setInterval(mentorInfoNotification, 2000)

// in controller check if user is a student or a mentor--use the booking status
