
const showDestroyButtons = () => {
  const editButton = document.querySelector('#edit-button');
  const destroyButton = document.querySelectorAll('#destroy-button');
  editButton.addEventListener('click', (e) => {
    event.preventDefault()
    destroyButton.forEach((button) => {
      button.classList.toggle('hidden')
    })
  })
};

export { showDestroyButtons };
