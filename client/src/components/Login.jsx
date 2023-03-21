import React, { useState } from 'react';

const Login = ({ onLogin }) => {
	const [username, setUsername] = useState('');

	function handleSubmit(e) {
		e.preventDefault();
		fetch('/login', {
			method: 'POST',
			headers: {
				'Content-Type': 'application/json',
			},
			body: JSON.stringify({ username }),
		})
			.then((r) => r.json())
			.then((user) => onLogin(user));
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
				<button type="submit">Login</button>
			</form>
		</div>
	);
};
export default Login;
