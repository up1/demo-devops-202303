import { useEffect, useState } from 'react'
import './App.css'
import axios from "axios";

const client = axios.create({
  baseURL: "/api" 
});

const App = () => {
  const [message, setMessage] = useState('');

   // GET with Axios
  useEffect(() => {
     const fetchAPI = async () => {
        let response = await client.get('/hi');
        setMessage(response.data.message);
     };
     fetchAPI();
  });

  return (
    <div className="App">
      <h1>Vite + React</h1>
      <div className="card">
        <p id="hello_message">
          {message}
        </p>
      </div>
    </div>
  )
}

export default App
