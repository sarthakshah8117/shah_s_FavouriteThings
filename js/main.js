import { fetchData } from "./modules/TheDataMiner.js";

(() => {
    console.log('loaded');
    
    function popErrorBox(message) {
        alert("Something has gone horribly, horribly wrong");
    }


    function retrieveProjectInfo(event) {
        
        // debugger;
        
        if (!event.target.id) { return }
        fetchData(`./includes/index.php?ID=${event.target.id}`).then(data => console.log(data)).catch(err => console.log(err));
    }

    function renderPortfolioThumbnails(thumbs) {
        let userSection = document.querySelector('.user-section'),
            userTemplate = document.querySelector('#user-template').content;

        for (let user in thumbs) {
            let currentUser = userTemplate.cloneNode(true),
                currentUserText = currentUser.querySelector('.user').children;

            currentUserText[1].src = `images/${thumbs[user].Image}`;
            currentUserText[1].id = thumbs[user].ID;
            currentUser.addEventListener("click", retrieveProjectInfo);
            userSection.appendChild(currentUser);
        }

        userSection.addEventListener("click", retrieveProjectInfo);
    }
        
    fetchData("./includes/index.php").then(data => renderPortfolioThumbnails(data)).catch(err => console.log(err));


    
    
})();