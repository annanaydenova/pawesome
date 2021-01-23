const sweetAlertOnAccept = () => {
  const AlertBtn = document.getElementById('accept');
  if (AlertBtn) {
    AlertBtn.addEventListener('click', (event)=>{
      Swal.fire({
        title: "Booking pending!",
        text: "We have sent your booking request to the owner. Check the booking tab in your dashboard to see if your request has been accepted",
        icon: "success",
        imageUrl: "https://media.giphy.com/media/l0unkiodQqmA3lPO5e/giphy.gif",
        imageWidth: 400,
        imageHeight: 200,
        imageAlt: 'Custom image',
        confirmButtonText: "ok"
      });
    })
  }
};

export { sweetAlertOnAccept };
