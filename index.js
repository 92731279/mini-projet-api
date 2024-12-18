const express = require('express');
const app = express();

app.get('/', (req, res) => {
    res.send('Bienvenue sur votre API statique !');
});

const PORT = 3000;
app.listen(PORT, () => {
    console.log(`Server running on http://localhost:${PORT}`);
});
