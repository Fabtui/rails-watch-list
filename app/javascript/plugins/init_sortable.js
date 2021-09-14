import Sortable from 'sortablejs';

const initSortable = () => {
  const list = document.querySelector('.movies-container');
  Sortable.create(list, {
  ghostClass: "ghost",
  handle: '#handle',
  animation: 150,
});
};

export { initSortable };
