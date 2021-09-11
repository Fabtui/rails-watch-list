const displayArrow = () => {
  const arrow = document.getElementById('up-arrow-container')
  window.addEventListener('scroll', (e) => {
    if (window.scrollY > 100) {
      arrow.classList.remove('hidden-arrow')
    } else {
      arrow.classList.add('hidden-arrow')
    }
  })
};

export { displayArrow };
