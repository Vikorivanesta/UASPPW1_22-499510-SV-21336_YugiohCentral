// -----Prevent form to reset after submit-----
document.addEventListener('DOMContentLoaded', function() {
  var form = document.querySelector('form');

  // Intercept form submission
  form.addEventListener('submit', function(event) {
    event.preventDefault(); // Prevent default form submission

    // Serialize form data and store in local storage
    var formData = serializeForm(form);
    localStorage.setItem('formValues', JSON.stringify(formData));

    // Submit the form programmatically
    form.submit();
  });

  // Check if there are stored form values and populate the form
  var storedValues = localStorage.getItem('formValues');
  if (storedValues) {
    storedValues = JSON.parse(storedValues);
    populateForm(form, storedValues);
    localStorage.removeItem('formValues'); // Clear stored form values
  }
});

// Serialize form data into an object
function serializeForm(form) {
  var formData = {};
  var inputs = form.querySelectorAll('input, select, textarea');
  for (var i = 0; i < inputs.length; i++) {
    var input = inputs[i];
    if (input.name) {
      if (input.type === 'checkbox' || input.type === 'radio') {
        formData[input.name] = input.checked;
      } else {
        formData[input.name] = input.value;
      }
    }
  }
  return formData;
}

// Populate form fields with values
function populateForm(form, data) {
  var inputs = form.querySelectorAll('input, select, textarea');
  for (var i = 0; i < inputs.length; i++) {
    var input = inputs[i];
    if (input.name && data.hasOwnProperty(input.name)) {
      if (input.type === 'checkbox' || input.type === 'radio') {
        input.checked = data[input.name];
      } else {
        input.value = data[input.name];
      }
    }
  }
}

//-----Range styling-----
const rangeInputs = document.querySelectorAll('input[type="range"]')
const numberInput = document.querySelector('input[type="number"]')

function handleInputChange(e) {
  let target = e.target
  if (e.target.type !== 'range') {
    target = document.getElementById('range')
  } 
  const min = target.min
  const max = target.max
  const val = target.value
  
  target.style.backgroundSize = (val - min) * 100 / (max - min) + '% 100%'
}

rangeInputs.forEach(input => {
  input.addEventListener('input', handleInputChange)
})

numberInput.addEventListener('input', handleInputChange)