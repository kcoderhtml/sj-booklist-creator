window.onload = function() {
    const btn = document.getElementById('btn');
    btn.addEventListener('click', () => {
        console.log('clicked');
        fetch('/.netlify/functions/google-spreadsheet-fn', {
        method: 'POST',
        body: JSON.stringify({
            randomNumberField: Math.floor(Math.random() * 230),
            field2: 'potato'
        })
        })
        .then((res) => res.json())
        .catch(error);
    });
};