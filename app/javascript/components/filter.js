const hideCard = (productCards, categoryName) => {
  productCards.forEach(card => {
    // Lorsqu'on click, récupérer le nom de la catégorie
    const productCategory = card.dataset.category;
    // Pour chaque carte, comparer la catégorie avec le data-category du produit
    if (categoryName.toLowerCase() !== productCategory.toLowerCase()){
      // Si différent, cacher la carte
      card.style.display = "none";
    } else {
      card.style.display = "block";
    }
  });
}

const changeButtonColor = (event) => {
  event.currentTarget.classList.toggle('card-active')
}

const handleClickOnCard = (event) => {
  const productCards = document.querySelectorAll('[data-category]');
  const categoryName = event.target.innerText;
  changeButtonColor(event);
  hideCard(productCards, categoryName);
}

const resetFilters = () => {
  document.querySelector('.remove-filters').addEventListener('click', () => {
    const productCards = document.querySelectorAll('[data-category]');
    productCards.forEach(card => card.style.display = "block");
  })
}

const filter = () => {
  const categoryElements = document.querySelectorAll('.card-category');
  // Placer un micro sur chaque catégorie
  categoryElements.forEach(element => {
    element.addEventListener("click", handleClickOnCard);
  })
  resetFilters();
}

export default filter;
