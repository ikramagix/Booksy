document.addEventListener("DOMContentLoaded", () => {
    const countButton = document.getElementById("count-articles-btn");
    if (countButton) {
      countButton.addEventListener("click", () => {
        const articles = document.querySelectorAll(".article-row");
        const countDisplay = document.getElementById("articles-count");
        countDisplay.textContent = `Articles listés : ${articles.length}`;
      });
    }
  });
  