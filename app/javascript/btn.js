window.addEventListener('load', function(){
  let titles = document.querySelectorAll("a")

  for (var i = 0; i < titles.length; i++) {
    titles.item(i).addEventListener("mouseover", function () {
      this.setAttribute("style", "background-color:#FFBEDA;");}, false);

    titles.item(i).addEventListener("mouseout", function () {
        this.removeAttribute("style", "background-color:#FFBEDA;");}, false);


    }
    
    
})