import React from 'react';
import '../Stylesheets/mystyle.css';

function CalculateScore() {
  const name = "Vamshi";
  const school = "KTS High School";
  const total = 264;
  const goal  = "90%";
  return (
    <div className="score-container">
      <h2>Student Details :</h2>
      <p>Name: {name}</p>
      <p>School: {school}</p>
      <p>Total Marks: {total}</p>
      <p>Score: {goal}</p>
    </div>
  );
}

export default CalculateScore;
