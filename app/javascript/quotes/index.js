import React from 'react'
import ReactDOM from 'react-dom'
import App from './components/App'

const quotes = document.querySelector('#quotes')
document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(<App />, quotes)
})
