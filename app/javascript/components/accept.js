const sweetAlertOnAccept = () => {
  const AlertBtn = document.querySelector('.accept');
  if (AlertBtn) {
    AlertBtn.addEventListener('click', (event)=>{
      const id = event.currentTarget.id
      const Redirect = `<a href="../dashboard/bookings#${id}" style="color: white"><i class="fas fa-paw"></i> Great</a>`
      Swal.fire({
        title: "Booking accepted!",
        text: "Your animal is going on a break! Make sure to contact the booker to organize the details",
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

const sweetAlertOnRefuse = () => {
  const AlertBtn = document.querySelector('.refuse');
  if (AlertBtn) {
    AlertBtn.addEventListener('click', (event)=>{
      const id = event.currentTarget.id
      const Redirect = `<a href="../dashboard/bookings#${id}" style="color: white"><i class="fas fa-paw"></i> So sad</a>`
      Swal.fire({
        title: "Booking refused!",
        text: "Your animal is going nowhere, how sad!",
        icon: "error",
        imageUrl: "https://media.giphy.com/media/eJ9XEX2KnDZ7MsExru/giphy.gif",
        imageWidth: 300,
        imageHeight: 400,
        imageAlt: 'Custom image',
        confirmButtonText: Redirect
      });
    })
  }
};

const sweetAlertOnCancel = () => {
  const AlertBtn = document.querySelector('.cancel');
  if (AlertBtn) {
    AlertBtn.addEventListener('click', (event)=>{
      const id = event.currentTarget.id
      const Redirect = '<a href="../dashboard/bookings#${id}" style="color: white"><i class="fas fa-paw"></i> So sad</a>'
      Swal.fire({
        title: "Booking cancelled!",
        text: "You're going to be so lonely!",
        icon: "error",
        imageUrl: "https://media.giphy.com/media/eJ9XEX2KnDZ7MsExru/giphy.gif",
        imageWidth: 300,
        imageHeight: 400,
        imageAlt: 'Custom image',
        confirmButtonText: Redirect
      });
    })
  }
};

export { sweetAlertOnAccept, sweetAlertOnRefuse, sweetAlertOnCancel };
