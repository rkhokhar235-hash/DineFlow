document.addEventListener('DOMContentLoaded', function () {
    var cartToast = document.querySelector('.cart-toast');
    if (cartToast) {
        window.setTimeout(function () {
            cartToast.classList.add('is-leaving');
            window.setTimeout(function () {
                cartToast.remove();
            }, 250);
        }, 3200);
    }

    var searchInput = document.getElementById('menuSearch');
    var clearButton = document.getElementById('menuSearchClear');
    var filterBar = document.getElementById('menuFilters');
    var emptyState = document.getElementById('menuEmptyState');
    var cards = Array.prototype.slice.call(document.querySelectorAll('.menu-card-shell'));

    if (!searchInput || !filterBar || !cards.length) {
        return;
    }

    var categories = cards.reduce(function (items, card) {
        var category = card.querySelector('.menu-category');
        var value = category ? category.textContent.trim() : '';
        if (value && items.indexOf(value) === -1) {
            items.push(value);
        }
        return items;
    }, []);

    var activeFilter = 'all';
    var allButton = createFilterButton('All dishes', 'all', true);
    filterBar.appendChild(allButton);
    categories.forEach(function (category) {
        filterBar.appendChild(createFilterButton(category, category, false));
    });

    function createFilterButton(label, value, active) {
        var button = document.createElement('button');
        button.type = 'button';
        button.className = 'menu-filter' + (active ? ' is-active' : '');
        button.textContent = label;
        button.setAttribute('aria-selected', active ? 'true' : 'false');
        button.addEventListener('click', function () {
            activeFilter = value;
            filterBar.querySelectorAll('.menu-filter').forEach(function (item) {
                var isActive = item === button;
                item.classList.toggle('is-active', isActive);
                item.setAttribute('aria-selected', isActive ? 'true' : 'false');
            });
            applyFilters();
        });
        return button;
    }

    function applyFilters() {
        var query = searchInput.value.trim().toLowerCase();
        var visibleCount = 0;

        if (clearButton) {
            clearButton.hidden = query.length === 0;
        }

        cards.forEach(function (card) {
            var category = card.querySelector('.menu-category');
            var searchableText = card.textContent.toLowerCase();
            var categoryText = category ? category.textContent.trim() : '';
            var matchesFilter = activeFilter === 'all' || categoryText === activeFilter;
            var matchesSearch = !query || searchableText.indexOf(query) !== -1;
            var visible = matchesFilter && matchesSearch;
            card.hidden = !visible;
            if (visible) {
                visibleCount += 1;
            }
        });

        if (emptyState) {
            emptyState.hidden = visibleCount !== 0;
        }
    }

    searchInput.addEventListener('input', applyFilters);

    clearButton?.addEventListener('click', function () {
        searchInput.value = '';
        searchInput.focus();
        applyFilters();
    });
});