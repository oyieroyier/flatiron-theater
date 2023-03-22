import React, { useState } from 'react';
// import { useParams } from 'react-router';

const Signup = ({ onSignup }) => {
	const [username, setUsername] = useState('');
	const [password, setPassword] = useState('');

	function handleSubmit(e) {
		e.preventDefault();
		fetch(`/signup/`, {
			method: 'POST',
			headers: {
				'Content-Type': 'application/json',
			},
			body: JSON.stringify({ username, password }),
		})
			.then((r) => r.json())
			.then((user) => onSignup(user));
	}

	return (
		<div className="form">
			<form onSubmit={handleSubmit}>
				<label htmlFor="">username</label>
				<input
					type="text"
					value={username}
					required
					onChange={(e) => setUsername(e.target.value)}
				/>

				<label htmlFor="">password</label>
				<input
					type="password"
					value={password}
					required
					onChange={(e) => setPassword(e.target.value)}
				/>
				<button type="submit">Signup</button>
			</form>
		</div>
	);
};
export default Signup;
