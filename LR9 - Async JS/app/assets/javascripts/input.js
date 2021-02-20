// table = (data) => {
// }
// querySelector = getElementById
// output?val - value of @result 
// (http://localhost:3000/input/output?utf8=%E2%9C%93&val=3&commit=Find+all+Armstrong+Numbers)

document.addEventListener("DOMContentLoaded", function() {
    document.querySelector("#submit").onclick = function () {
      fetch('output?val=' + document.querySelector('#data').value)   // id store in <input>
        .then(data => data.json())   // ?                                // convert data returned from fetch to json format
        .then(data => document.querySelector("#numbers").innerHTML = function() { // add data to span
            let view = '<table border = "1" bordercolor = "black" cellspacing = "0" style = "margin-top: 5px;"><tr><th>Index</th><th>Armstrong Numbers in range</th></tr>';
              let i = 1;
              for (let cell in data) { // ?
                view += "<tr><td>" + i + "</td><td>" + data[cell] + "</td></tr>";
                i++;
              }
            view += "</table>";
            return view;
        }())
    }
  });
  