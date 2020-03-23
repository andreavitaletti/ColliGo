const express = require('express');
const app = express();
const port = 3000;

app.set('views', './views');
app.set('view engine', 'pug');

// https://scriptverse.academy/tutorials/nodejs-express-pug.html

var data = require("./data.json");

app.get('/', (req, res, next) => {
    const memberDetails = {
		lat: data.shops[0].lat,
        lon: data.shops[0].lon,
        name: data.shops[0].name,
        description: data.shops[0].description,
        link:data.shops[0].link
	}
	res.render('show',memberDetails);
});

app.get('/member/:name/planet/:home', (req, res) => {
	const memberDetails = {
		member: req.params.name,
		planet: req.params.home
	}
	res.render('guardian', memberDetails);
});

app.get('*', (req, res, next) => {
	res.status(200).send('Sorry, page not found');
	next();
});

app.listen(port, () => {
	console.log(`Server started at port ${port}`);
});