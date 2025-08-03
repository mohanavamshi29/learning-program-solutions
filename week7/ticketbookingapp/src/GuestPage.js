import React from 'react';

function GuestPage({ onLogin }) {
  return (
    <div style={{ textAlign: 'center', marginTop: '100px' }}>
      <h1>Please sign up.</h1>
      <button onClick={onLogin}>Login</button>

      <div style={{ marginTop: '40px' }}>
        <h2>Available Flights</h2>
        <ul style={{ listStyle: 'none' }}>
          <li>✈️ Delhi → Mumbai - 8:00 AM</li>
          <li>✈️ Hyderabad → Bangalore - 9:30 AM</li>
          <li>✈️ Chennai → Kolkata - 11:00 AM</li>
        </ul>
      </div>
    </div>
  );
}

export default GuestPage;
