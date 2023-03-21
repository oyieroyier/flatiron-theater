import { BrowserRouter, Routes, Route, Navigate } from 'react-router-dom';
import '../App.css';
import Form from './Form';
import LandingPage from './LandingPage';
import Login from './Login';
import ProductionDetails from './ProductionDetails';
import React, { useState, useEffect } from 'react';

function App() {
	const [user, setUser] = useState('');
	const [productions, setProductions] = useState([]);

	function onLogin(username) {
		setUser(username);
	}

	useEffect(() => {
		fetch('/productions')
			.then((res) => res.json())
			.then(setProductions);
	}, []);

	return (
		<div className="App">
			<BrowserRouter>
				<Routes>
					<Route
						path="/"
						element={productions && <LandingPage productions={productions} />}
					/>
					<Route path="/add" element={<Form />} />
					<Route path="/productions/:id" element={<ProductionDetails />} />
					<Route
						path="/login"
						element={!user ? <Login onLogin={onLogin} /> : <Navigate to="/" />}
					/>
				</Routes>
			</BrowserRouter>
		</div>
	);
}

export default App;
