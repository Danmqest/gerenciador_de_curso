const form = document.querySelector('form');
const input = document.querySelector('input[type="text"]');
form.addEventListener('submit', (event) => {
  event.preventDefault();
  const query = input.value;
  window.location.href = `/search?q=${query}`;
});