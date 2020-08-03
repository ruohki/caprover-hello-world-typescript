import express from 'express';

(async () => {
  const App = express();
  const Port = process.env?.PORT ?? 3000;

  App.get('/', (_req, res) => {
    res.send("Hello, World!").end();
  })
  
  App.get('/status', ( _req, res) => {
    res.status(200).end();
  })

  App.listen(Port, () => {
    console.log("App running on port", Port);
  });
})();