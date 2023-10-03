// Gets data.json and checks current language selection
const doLanguageCheck = () => {
  // Getting data.json
  fetch("data.json")
    .then((response) => response.json())
    .then((data) => {
      // checking language
      let language = localStorage.getItem("language");
      if (!language || language !== "dutch") {
        doLanguageInput(data.en);
      } else doLanguageInput(data.nl);
    })
    .catch((error) => console.log(error));
};

// Actually changes text to text in data.json
const doLanguageInput = (data) => {
  // checks if index.html by checking if SDG_Overview exists
  if (document.getElementById("SDG_Overview")) {
    document.getElementById("SDG_Overview").innerHTML = data.index.Overview;
    document.getElementById("play_SDG").innerHTML = data.index.PlaySDG;
    document.getElementById("our_SDGs").innerHTML = data.index.OurSDGs;
  }
  // Checks if contact.html by checking if contact_title exists
  else if (document.getElementById("contact_title")) {
    document.getElementById("contact_title").innerHTML = data.contact.Title;
  }
  // Checks if sdg.html by checking if sdg_title exists
  else if (document.getElementById("sdg_title")) {
    document.getElementById("sdg_title").innerHTML = data.sdg.Title;
    document.getElementById("sdg_button").innerHTML = data.sdg.Button;
  }
};

// Language to set language to dutch or english by using argument "lang", activated by english--b and dutch--b in header
const setLanguage = (lang) => {
  if (lang == "dutch") {
    localStorage.setItem("language", "dutch");
  } else {
    localStorage.setItem("language", "english");
  }
  doLanguageCheck();
};

// Initial language check for page load
doLanguageCheck();
