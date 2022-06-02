var radioElement = document.getElementsByName('radio-lang');
var prev = null;
var langInputs = {'en': document.getElementsByClassName('en'),
                  'uk': document.getElementsByClassName('uk')};

for (var i = 0; i < radioElement.length; i++) {
  radioElement[i].addEventListener('change', function() {
        
        if (this !== prev) {
          
            prev = this;

            for (const key of Object.keys(langInputs)) {

              for (var i = 0; i < langInputs[key].length; i++) {

                showElement   = (key == this.value) || (this.value == 'all');
                parentElement = (langInputs[key][i].parentElement.className == 'django-ckeditor-widget') ? langInputs[key][i].parentElement.parentElement : langInputs[key][i].parentElement;
                if ((key == this.value) || (this.value == 'all')) {
                  parentElement.style =  '';
                } else {
                  parentElement.style.display =  'none';
                }
              }

            }

          }

    });
}

