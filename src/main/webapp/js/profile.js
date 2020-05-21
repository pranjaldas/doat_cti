$("#logout").click(() => {
    swal({
      title: "Log Out",
      text: "Are you sure ?",
      icon: "warning",
      buttons: true,
      dangerMode: true,
    })
      .then((willLogOut) => {
        if (willLogOut) {
          console.log("logged out");
        }
      })
  })
