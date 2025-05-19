const http = require('http');
const port = process.env.PORT || 3333;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  const msg = 'test page!\n'
  res.end(msg);
});

server.listen(port, () => {
  console.log(`Server ON ->  http://localhost:${port}/`);
});
