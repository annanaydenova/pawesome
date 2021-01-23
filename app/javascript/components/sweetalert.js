const sweetAlertOnBooking = () => {
  const AlertBtn = document.getElementById('booking-button');
  if (AlertBtn) {
    AlertBtn.addEventListener('click', (event)=>{
      const Redirect = '<a href="../dashboard/bookings" style="color: white"><i class="fas fa-paw"></i> Great</a>'
      Swal.fire({
        title: "Booking pending!",
        text: "We have sent your booking request to the owner. Check the booking tab in your dashboard to see if your request has been accepted",
        icon: "success",
        imageUrl: "https://media.giphy.com/media/l0unkiodQqmA3lPO5e/giphy.gif",
        imageWidth: 400,
        imageHeight: 200,
        imageAlt: 'Custom image',
        confirmButtonText: Redirect
      });
    })
  }
};

export { sweetAlertOnBooking };


