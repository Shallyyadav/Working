document.addEventListener("DOMContentLoaded", function() {
    const priceRangeSelect = document.getElementById("price-range");
    const colorSelect = document.getElementById("color-filter");
    const items = document.querySelectorAll(".item");
  
    priceRangeSelect.addEventListener("change", filterItems);
    colorSelect.addEventListener("change", filterItems);
  
    function filterItems() {
      const priceRangeValue = priceRangeSelect.value;
      const colorValue = colorSelect.value;
  
      items.forEach(item => {
        const price = parseFloat(item.getAttribute("data-price"));
        const color = item.getAttribute("data-color");
  
        const priceInRange = (priceRangeValue === "all" || isPriceInRange(priceRangeValue, price));
        const colorMatch = (colorValue === "all" || color === colorValue);
  
        if (priceInRange && colorMatch) {
          item.style.display = "inline-block";
        } else {
          item.style.display = "none";
        }
      });
    }
  
    function isPriceInRange(range, price) {
      const [min, max] = range.split("-").map(Number);
      return price >= min && price <= max;
    }
  });
  