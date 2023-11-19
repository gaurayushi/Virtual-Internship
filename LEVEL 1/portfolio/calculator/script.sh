 <script>
    let display = document.getElementById('display');

    function appendToDisplay(value) {
      display.value += value;
    }

    function clearDisplay() {
      display.value = '';
    }
    function  DelDisplay()
    {
        display.value = display.value.slice(0, -1);
    }

    function logbase() {
    
      let x = parseFloat(display.value);
      if (!isNaN(x) && x > 0) {
        let result = Math.log(x);
        display.value = result;
      } else {
        display.value = 'Error';
      }
    }
    

    function calculate() {
      try {

        display.value = eval(display.value);
      } catch (error) {
        display.value = 'Error';
      }
     
    }

</script>