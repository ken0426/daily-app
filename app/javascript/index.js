window.addEventListener('load', () => {
  const targetElement = document.querySelectorAll(".scroll");
  document.addEventListener("scroll", function() {
    for (let i = 0; i < targetElement.length; i++) {
      const getElementDistance = targetElement[i].getBoundingClientRect().top
      if (window.innerHeight > getElementDistance) {
        targetElement[i].classList.add("show");
      }
    }
  })
});