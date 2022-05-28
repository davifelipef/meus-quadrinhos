import React from 'react';
import { Link } from 'react-router-dom';

function Home(){
  return (
    <div>
      <h1>Meus Quadrinhos</h1>
      <p>Bem-vindo(a) ao melhor APP para gerenciamento da sua coleção de quadrinhos!</p>
      <p>O APP <strong>Meus Quadrinhos</strong> foi criado para facilitar o controle de quais quadrinhos você possui, se são encadernados, caso sejam quais edições são compiladas etc.</p>
      <p><Link to="/Register">Clique aqui</Link> para começar a cadastrar os seus quadrinhos!</p>
    </div>
  );
}

export default Home;