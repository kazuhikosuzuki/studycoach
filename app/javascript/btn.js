window.addEventListener('load', function(){
  let btn = document.querySelectorAll("a")

  for (var i = 0; i < btn.length; i++) {
    btn.item(i).addEventListener("mouseover", function () {
      this.setAttribute("style", "background-color:#FFBEDA;");}, false);

    btn.item(i).addEventListener("mouseout", function () {
        this.removeAttribute("style", "background-color:#FFBEDA;");}, false);


    }
    
    
})