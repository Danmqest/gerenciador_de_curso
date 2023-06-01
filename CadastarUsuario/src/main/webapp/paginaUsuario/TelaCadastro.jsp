<%--
  Created by IntelliJ IDEA.
  User: Genivaldo Alves
  Date: 31/05/2023
  Time: 21:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div class="link-bar">
    <div class="search-container">
        <form
                action="https://www.youtube.com/results"
                method="get"
                target="_blank"
        >
            <input
                    name="search_query"
                    placeholder="Pesquisar no YouTube"
                    type="text"
            />
            <button type="submit">Pesquisar</button>
        </form>
    </div>

    <div class="container-video">
        <div class="add-video-form">
            <label for="video-id-input">Adicionar vídeo:</label>
            <input
                    id="video-id-input"
                    placeholder="Insira o ID do vídeo do YouTube"
                    type="text"
            />
            <button id="add-video-btn">Adicionar</button>
            <button id="remove-video-btn">Remover Vídeo</button>
        </div>
    </div>
</div>

<div class="carousel">
    <div class="carousel-container" id="carousel-inner">
    </div>
    <div class="carousel-controls">
        <button id="prev-btn"><</button>
        <button id="next-btn">></button>
    </div>
</div>

<div id="videos-table"></div>
<style>
    body {
        background: linear-gradient(89.7deg, rgb(0, 0, 0) -10.7%, rgb(53, 92, 125) 88.8%)

    }
    .link-bar {
        display: flex;
        justify-content: space-between;
        align-items: center;
        background-color:#fffefe ;
        padding: 20px;
        margin: 20px;
        border: 6px solid #c8cbcf;
    }

    .search-container {
        display: flex;
        align-items: center;

    }

    .search-container input[type="text"] {
        margin-right: 10px;

    }

    .container-video {
        display: flex;
        align-items: center;


    }

    .add-video-form {
        display: flex;
        align-items: center;


    }

    .add-video-form label {
        margin-right: 10px;
    }

    .add-video-form input[type="text"] {
        margin-right: 10px;
    }

    .carousel {
        display: flex;
        margin: 20px;
        z-index: revert;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        width: 100%;
        margin: 30px auto;
        padding: 1rem 0;
        left: -50px;
        height: 460px; /*adicionado para ocupar todo o espaço do container pai */
        border: 0.3px solid #000000;
    }

    /*
      .carousel {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            width: 60%;
            margin: 0 auto;
            padding: 2rem 0;


        .carousel-container {
          border: 3px solid #721c24;
            display: flex;
            flex-wrap: nowrap;
            overflow-x: scroll;
            width: 100%;
            height: 400px;
            scroll-behavior: smooth;
        }*/
    .carousel-container {
        border: 3px solid yellow;
        display: flex;
        flex-wrap: unset;
        overflow-x: scroll;
        width: 100%;
        height: inherit;
        scroll-behavior: auto;
    }


    .carousel-item {

        flex-shrink: 0;
        width: 100%;
        height: 100%;
        padding: 0 0.5rem;
    }

    .carousel-item iframe {

        width: 100%;
        height: 100%;
        border: #721c24;
        position: relative;
        left: 50px;
    }

    .carousel-controls {

        display: flex;
        justify-content: center;
        align-items: center;
        margin-top: 1rem;
    }

    .carousel-controls button {

        background-color: transparent;
        border: 1px solid #000;
        color: #000;
        font-size: 1.5rem;
        padding: 0.5rem;
        margin: 0 0.5rem;
        cursor: pointer;
    }

    .carousel-controls button:disabled { /*botaocarrocel aponta <<*/
        opacity: 0.5;
        cursor: default;
    }
</style>
<script>

    const videosTable = document.getElementById("videos-table");
    const carouselInner = document.getElementById("carousel-inner");
    const videoIds = ["HgzGwKwLmgM", "7ImLmrIwW1A", "Mh4f9AYRCZY","VvaBJrs9oZE"];
    let videoIndex = 0;

    function addVideo(videoId) {
        const videoContainer = document.createElement("div");
        videoContainer.classList.add("video-container");
        const videoIframe = document.createElement("iframe");
        videoIframe.src = `https://www.youtube.com/embed/${videoId}`;
        videoIframe.frameborder = "0";
        videoIframe.allowfullscreen = "";
        videoContainer.appendChild(videoIframe);
        videosTable.appendChild(videoContainer);

        const carouselItem = document.createElement("div");
        carouselItem.classList.add("carousel-item");
        const carouselItemIframe = document.createElement("iframe");
        carouselItemIframe.src = `https://www.youtube.com/embed/${videoId}`;
        carouselItemIframe.frameborder = "0";
        carouselItemIframe.allowfullscreen = "";
        carouselItem.appendChild(carouselItemIframe);
        carouselInner.appendChild(carouselItem);
    }

    function removeVideo() {
        const lastVideoContainer = videosTable.lastElementChild;
        if (lastVideoContainer) {
            videosTable.removeChild(lastVideoContainer);
            carouselInner.removeChild(carouselInner.lastElementChild);
            videoIndex = Math.max(0, videoIndex - 1);
            updateCarousel();
        }
    }

    function updateCarousel() {
        const prevButton = document.getElementById("prev-btn");
        const nextButton = document.getElementById("next-btn");
        prevButton.disabled = (videoIndex === 0);
        nextButton.disabled = (videoIndex === videoIds.length - 1);
        carouselInner.style.transform = `translateX(-${videoIndex * 50}%)`;
    }

    const addVideoButton = document.getElementById("add-video-btn");
    addVideoButton.addEventListener("click", () => {
        const videoIdInput = document.getElementById("video-id-input");
        const videoId = videoIdInput.value;
        if (videoId) {
            addVideo(videoId);
            videoIdInput.value = "";
            videoIndex = videoIds.length - 1;
            updateCarousel();
        }
    });

    const removeVideoButton = document.getElementById("remove-video-btn");
    removeVideoButton.addEventListener("click", removeVideo);

    const prevButton = document.getElementById("prev-btn");
    prevButton.addEventListener("click", () => {
        if (videoIndex > 0) {
            videoIndex--;
            updateCarousel();
        }
    });

    const nextButton = document.getElementById("next-btn");
    nextButton.addEventListener("click", () => {
        if (videoIndex < videoIds.length - 1) {
            videoIndex++;
            updateCarousel();
        }
    });

    updateCarousel();
</script>

</body>
</html>
