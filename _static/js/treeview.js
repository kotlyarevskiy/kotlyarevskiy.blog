var toggler = document.getElementsByClassName("caret_folder");
var i;

for (i = 0; i < toggler.length; i++) {
  toggler[i].addEventListener("click", function() {
    
    if (this.parentElement.querySelector(".nested_mod") !== null){ 

      this.parentElement.querySelector(".nested_mod").classList.toggle("active_mod");
      this.classList.toggle("caret-down_folder");

    }
  }
  );
}

var toggler = document.getElementsByClassName("caret_item");
var i;

for (i = 0; i < toggler.length; i++) {
  toggler[i].addEventListener("click", function() {
    
    if (this.parentElement.querySelector(".nested_mod") !== null){ 

      this.parentElement.querySelector(".nested_mod").classList.toggle("active_mod");
      this.classList.toggle("caret-down_item");

    }
  }
  );
}