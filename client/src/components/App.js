import { BrowserRouter, Routes, Route } from 'react-router-dom'
import '../App.css';
import Form from './Form';
import LandingPage from './LandingPage';
import ProductionDetails from './ProductionDetails';

function App() {
	return (
		<div className="App">
			<BrowserRouter>
				<Routes>
					<Route path="/" element={<LandingPage />} />
					<Route path="/add" element={<Form />} />
					<Route path="/productions/:id" element={<ProductionDetails/>} />
				</Routes>
			</BrowserRouter>
		</div>
	);
}

export default App;
