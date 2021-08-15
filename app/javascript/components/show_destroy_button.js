
const showDestroyButtons = () => {
  const editButton = document.querySelector('#edit-button');
  const destroyButton = document.querySelectorAll('#destroy-button');
  editButton.addEventListener('click', (e) => {
    destroyButton.forEach((button) => {
      button.classList.remove('hidden')
    })
  })
};

export { showDestroyButtons };
