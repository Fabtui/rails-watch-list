const youtubeEdit = () => {
  const youtubeIcon = document.querySelector(".youtube-edit-button")
  const youtubeEdit = document.getElementById("youtube-edit")
  if (youtubeEdit) {
    youtubeIcon.addEventListener('click', (e) => {
      youtubeEdit.classList.toggle("youtube-hidden")
    })
  }
};

export { youtubeEdit };
