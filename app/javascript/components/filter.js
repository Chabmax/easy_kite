const productCards = document.querySelectorAll('[data-category]');

const resetFilters = () => {
  const productCards = document.querySelectorAll('[data-category]');
  productCards.forEach(card => card.style.display = "block");
}

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
    const allCards = document.querySelectorAll('.card-category')
    allCards.forEach(card => {
      card.classList.remove('card-active')
    })
    event.currentTarget.classList.add('card-active')
  }

  const handleClickOnCard = (event) => {
    const categoryName = event.target.innerText;
    changeButtonColor(event);
    if (categoryName === "Remove Filters") {
      resetFilters();
    } else {
      hideCard(productCards, categoryName);
    }
  }

  const filter = () => {
    const categoryElements = document.querySelectorAll('.card-category');
    if (categoryElements) {
    // Placer un micro sur chaque catégorie
      categoryElements.forEach(element => {
        element.addEventListener("click", handleClickOnCard);
      })
    }
}


export default filter;
