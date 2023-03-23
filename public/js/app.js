const tempElement = document.getElementById('temperature');
const cityElement = document.getElementById('city');
const url = `https://api.openweathermap.org/data/2.5/weather?q=Mogi Mirim&appid=ec8686046d75b63040bab1bae08c984a&lang=pt_br&units=metric`;
fetch(url)
.then(response => response.json())
.then(data => {
    const {main, name, weather} = data;
    tempElement.innerHTML = Math.round(main.temp) + ' &deg;C, ' + weather[0]['description'];
    cityElement.innerHTML = data.name;
})
