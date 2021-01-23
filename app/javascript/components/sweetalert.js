const sweetAlertOnBooking = () => {
  const AlertBtn = document.getElementById('booking-button');
  if (AlertBtn) {
    AlertBtn.addEventListener('click', (event)=>{
      const Redirect = '<a href="../dashboard/bookings" style="color: white">ok</a>'
      Swal.fire({
        title: "Booking pending!",
        text: "We have sent your booking request to the owner. Check the booking tab in your dashboard to see if your request has been accepted",
        icon: "success",
        confirmButtonText: Redirect
      });
    })
  }
};

export { sweetAlertOnBooking };


