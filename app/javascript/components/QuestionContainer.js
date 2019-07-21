import React, { Component } from 'react';
import PropTypes from "prop-types";
import axios from 'axios';
import Question from './Question'

class QuestionContainer extends Component {
  constructor(props){
    super(props)
    this.state = {
      question: []
    }
  }

  componentDidMount() {
    axios.get('http://localhost:3000/api/random')
    .then(response => {
      console.log(response.data[0])
      this.setState({
        question: response.data
      })
    })
    .catch(error => console.log(error))
  }

  render() {
    return (
      <div className="Question-container">
        {this.state.question.map( question => {
          return (<Question question={question} key={question.id} />)
        })}
      </div>
    )
  }
}

export default QuestionContainer;
