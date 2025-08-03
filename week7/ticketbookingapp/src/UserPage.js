import React from 'react';

function UserPage({ onLogout }) {
  return (
    <div style={{ textAlign: 'center', marginTop: '100px' }}>
      <h1>Welcome back</h1>
      <button onClick={onLogout}>Logout</button>

      <div style={{ marginTop: '40px' }}>
        <h2>Book Your Ticket</h2>
        <ul style={{ listStyle: 'none' }}>
          <li>✈️ Delhi → Mumbai - ₹5000 <button>Book</button></li>
          <li>✈️ Hyderabad → Bangalore - ₹4000 <button>Book</button></li>
          <li>✈️ Chennai → Kolkata - ₹4500 <button>Book</button></li>
        </ul>
      </div>
    </div>
  );
}

export default UserPage;
