




  const refreshRandom = () => {

    fetch('/api/random')
    .then((response) => response.json())
    .then((data) => {
      console.log('Response:', data)
        let currData = data[0];
        document.getElementById("clueValue").textContent = currData.value;
        document.getElementById("clueCategory").textContent = currData.category.title;
        document.getElementById("clueQuestion").textContent = currData.question;
        document.getElementById("clueAnswer").textContent = currData.answer;
        document.getElementById("clueAirDate").textContent = currData.airdate;
        document.getElementById("clueId").textContent = currData.id;
        document.getElementById("clueRaw").textContent = JSON.stringify(currData);
    });
  };


  document.getElementById('refresh-question').addEventListener('click', () => {
    refreshRandom();
  });

  refreshRandom();




