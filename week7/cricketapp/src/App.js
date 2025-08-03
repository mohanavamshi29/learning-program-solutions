import React from 'react';
import ListofPlayers from './components/ListofPlayers';
import Scorebelow70 from './components/Scorebelow70';
import { OddPlayers } from './components/OddPlayers';
import { EvenPlayers } from './components/EvenPlayers';
import ListofIndianPlayers from './components/ListofIndianPlayers';

function App() {
  var flag = true;

  const players = [
    { name: 'Vamshi', score: 50 },
    { name: 'Datta', score: 70 },
    { name: 'Ranga', score: 40 },
    { name: 'Hima', score: 61 },
    { name: 'Manu', score: 61 },
    { name: 'Naimi', score: 95 },
    { name: 'Leo', score: 100 },
    { name: 'Rohit', score: 84 },
    { name: 'Hanuman', score: 64 },
    { name: 'Ram', score: 75 },
    { name: 'Laxman', score: 80 },
  ];

  const T20Players = ['First Player', 'Second Player', 'Third Player'];
  const RanjiTrophyPlayers = ['Fourth Player', 'Fifth Player', 'Sixth Player'];
  const IndianPlayers = [...T20Players, ...RanjiTrophyPlayers];

  const IndianTeam = ['Vamshi1', 'Ranga2', 'Hima3', 'Rohit4', 'Datta5', 'Manu6'];

  if (flag === true) {
    return (
      <div>
        <h1>List of Players</h1>
        <ListofPlayers players={players} />
        <hr />
        <h1>List of Players having Scores Less than 70</h1>
        <Scorebelow70 players={players} />
      </div>
    );
  } else {
    return (
      <div>
        <div>
          <h1>Indian Team</h1>
          <h1>Odd Players</h1>
          <OddPlayers {...[IndianTeam]} />
          <hr />
          <h1>Even Players</h1>
          <EvenPlayers {...[IndianTeam]} />
        </div>
        <hr />
        <div>
          <h1>List of Indian Players Merged:</h1>
          <ListofIndianPlayers IndianPlayers={IndianPlayers} />
        </div>
      </div>
    );
  }
}

export default App;
