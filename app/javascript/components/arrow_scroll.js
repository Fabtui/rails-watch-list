const arrowScroll = () => {
  const arrow = document.getElementById('up-arrow-container')
  if (arrow) {
    arrow.addEventListener('click', () => {
      window.scrollTo({top: 0, behavior: 'smooth'});
    })
  }
};

export { arrowScroll };
