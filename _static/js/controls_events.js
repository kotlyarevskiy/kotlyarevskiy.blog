var deleteBTNs = document.getElementsByClassName('delete-btn');


for (var i = 0; i < deleteBTNs.length; i++) {
  deleteBTNs[i].addEventListener('click', function(event) {
      
    event.preventDefault();

    var choice =  confirm(gettext('Are you sure you want to delete this?'));

    if (choice) {
      window.location.href = this.getAttribute('href');
    }  

  });
}

