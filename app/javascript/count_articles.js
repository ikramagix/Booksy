document.addEventListener("DOMContentLoaded", () => {
    const countButton = document.getElementById("count-articles-btn");
    countButton.addEventListener("click", () => {
      const articles = document.querySelectorAll(".article-row");
      alert(`Listed items : ${articles.length}`);
    });
  });
  