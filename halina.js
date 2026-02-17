const btn = document.getElementById('actionBtn');

btn.addEventListener('click', function() {
    // This changes the text when the button is clicked
    btn.textContent = "You clicked it!";
    btn.style.backgroundColor = "green"; // Changes CSS via JS
});
