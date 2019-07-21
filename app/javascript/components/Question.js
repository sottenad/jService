import React from 'react';

const Question = ({question}) =>
  <div className="single-question" key={(question.id)}>
    <h2>{question.category.title}</h2>
    <p>{question.question}</p>
  </div>

export default Question;
