import React, { useState } from "react";
import CurrencyConvertor from "./CurrencyConvertor";

function App() {
  const [count, setCount] = useState(5);

  const handleIncrement = () => {
    incrementCount();
    sayHello("Member1");
  };

  const incrementCount = () => {
    setCount(prevCount => prevCount + 1);
  };

  const decrementCount = () => {
    setCount(prevCount => prevCount - 1);
  };

  const sayHello = (name) => {
    alert(`Hello! ${name}`);
  };

  const sayWelcome = (message) => {
    alert(message);
  };

  const handleClick = () => {
    alert("I was clicked");
  };

  return (
    <div style={{ padding: "20px" }}>
      <div>{count}</div>
      <button onClick={handleIncrement}>Increment</button>
      <button onClick={decrementCount}>Decrement</button>
      <button onClick={() => sayWelcome("welcome")}>Say welcome</button>
      <button onClick={handleClick}>Click on me</button>

      <CurrencyConvertor />
    </div>
  );
}

export default App;
