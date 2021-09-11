const newMoviePreview = () => {
  const newMovieInput = document.getElementById('movie_title')
  if (newMovieInput) {
    newMovieInput.addEventListener('keyup', (e) => {
      const results = document.querySelector("#results");
      fetch(`http://www.omdbapi.com/?s=${newMovieInput.value}&apikey=adf1f2d7`)
        .then(response => response.json())
        .then((data) => {

          // SHOW ALL THE RESULTS
          // data.Search.forEach((result) => {
          //   const movieTag = `<li class="list-inline-item">
          //     <img src="${result.Poster}" alt="">
          //     <p>${result.Title}</p>
          //   </li>`;
          //   results.insertAdjacentHTML("beforeend", movieTag);
          // });

          // SHOW THE FIRST RESULT
            const movieTag = `<li class="list-inline-item">
              <h2><bold>${data.Search[0].Title}</bold></h2>
              <img src="${data.Search[0].Poster}" alt="">
            </li>`;
            results.innerHTML = movieTag
        });
    })
  }
};

export { newMoviePreview };
