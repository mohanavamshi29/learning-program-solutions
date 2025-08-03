import React from 'react';
import './App.css';

function App() {
  const element = "Office Space";

  const officeList = [
    { Name: "DBS", Rent: 50000, Address: "Chennai", img: "https://images.unsplash.com/photo-1573164574572-cb89e39749b4" },
    { Name: "WeWork", Rent: 65000, Address: "Bangalore", img: "https://images.unsplash.com/photo-1504384308090-c894fdcc538d" },
    { Name: "Regus", Rent: 58000, Address: "Hyderabad", img: "https://images.unsplash.com/photo-1557800636-894a64c1696f" }
  ];

  return (
    <div className="App">
      <h1>{element}, at Affordable Range</h1>
      {officeList.map((ItemName, index) => {
        // Dynamic color class
        const rentClass = ItemName.Rent <= 60000 ? "textRed" : "textGreen";

        return (
          <div key={index} className="office-card">
            <img src={ItemName.img} width="50%" alt="Office Space" />
            <h2>Name: {ItemName.Name}</h2>
            <h3 className={rentClass}>Rent: Rs. {ItemName.Rent}</h3>
            <h3>Address: {ItemName.Address}</h3>
          </div>
        );
      })}
    </div>
  );
}

export default App;
