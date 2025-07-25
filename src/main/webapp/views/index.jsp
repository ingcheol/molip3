<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    .search-ranking li {
        font-size: 16px;
        color: #444; /* 진한 회색: 너무 무겁지 않게 */
        padding: 6px 10px;
        transition: background-color 0.2s ease;
    }

    .search-ranking li:hover {
        background-color: #f9f9f9;
        color: #FF6B6B; /* 포인트 색상 */
        cursor: pointer;
    }

</style>


<!DOCTYPE html>
<html lang="en">

<head>
    <title>깔롱드 - Fashion Store</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="author" content="TemplatesJungle">
    <meta name="keywords" content="ecommerce,fashion,store">
    <meta name="description" content="Bootstrap 5 Fashion Store HTML CSS Template">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/vendor.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
    <link rel="stylesheet" type="text/css" href="style.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
            href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&family=Marcellus&display=swap"
            rel="stylesheet">
</head>

<body class="homepage">
<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
    <defs>
        <symbol xmlns="http://www.w3.org/2000/svg" id="instagram" viewBox="0 0 15 15">
            <path fill="none" stroke="currentColor"
                  d="M11 3.5h1M4.5.5h6a4 4 0 0 1 4 4v6a4 4 0 0 1-4 4h-6a4 4 0 0 1-4-4v-6a4 4 0 0 1 4-4Zm3 10a3 3 0 1 1 0-6a3 3 0 0 1 0 6Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="facebook" viewBox="0 0 15 15">
            <path fill="none" stroke="currentColor"
                  d="M7.5 14.5a7 7 0 1 1 0-14a7 7 0 0 1 0 14Zm0 0v-8a2 2 0 0 1 2-2h.5m-5 4h5" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="twitter" viewBox="0 0 15 15">
            <path fill="currentColor"
                  d="m14.478 1.5l.5-.033a.5.5 0 0 0-.871-.301l.371.334Zm-.498 2.959a.5.5 0 1 0-1 0h1Zm-6.49.082h-.5h.5Zm0 .959h.5h-.5Zm-6.99 7V12a.5.5 0 0 0-.278.916L.5 12.5Zm.998-11l.469-.175a.5.5 0 0 0-.916-.048l.447.223Zm3.994 9l.354.353a.5.5 0 0 0-.195-.827l-.159.474Zm7.224-8.027l-.37.336l.18.199l.265-.04l-.075-.495Zm1.264-.94c.051.778.003 1.25-.123 1.606c-.122.345-.336.629-.723 1l.692.722c.438-.42.776-.832.974-1.388c.193-.546.232-1.178.177-2.006l-.998.066Zm0 3.654V4.46h-1v.728h1Zm-6.99-.646V5.5h1v-.959h-1Zm0 .959V6h1v-.5h-1ZM10.525 1a3.539 3.539 0 0 0-3.537 3.541h1A2.539 2.539 0 0 1 10.526 2V1Zm2.454 4.187C12.98 9.503 9.487 13 5.18 13v1c4.86 0 8.8-3.946 8.8-8.813h-1ZM1.03 1.675C1.574 3.127 3.614 6 7.49 6V5C4.174 5 2.421 2.54 1.966 1.325l-.937.35Zm.021-.398C.004 3.373-.157 5.407.604 7.139c.759 1.727 2.392 3.055 4.73 3.835l.317-.948c-2.155-.72-3.518-1.892-4.132-3.29c-.612-1.393-.523-3.11.427-5.013l-.895-.446Zm4.087 8.87C4.536 10.75 2.726 12 .5 12v1c2.566 0 4.617-1.416 5.346-2.147l-.708-.706Zm7.949-8.009A3.445 3.445 0 0 0 10.526 1v1c.721 0 1.37.311 1.82.809l.74-.671Zm-.296.83a3.513 3.513 0 0 0 2.06-1.134l-.744-.668a2.514 2.514 0 0 1-1.466.813l.15.989ZM.222 12.916C1.863 14.01 3.583 14 5.18 14v-1c-1.63 0-3.048-.011-4.402-.916l-.556.832Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="pinterest" viewBox="0 0 15 15">
            <path fill="none" stroke="currentColor"
                  d="m4.5 13.5l3-7m-3.236 3a2.989 2.989 0 0 1-.764-2V7A3.5 3.5 0 0 1 7 3.5h1A3.5 3.5 0 0 1 11.5 7v.5a3 3 0 0 1-3 3a2.081 2.081 0 0 1-1.974-1.423L6.5 9m1 5.5a7 7 0 1 1 0-14a7 7 0 0 1 0 14Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="youtube" viewBox="0 0 15 15">
            <path fill="currentColor"
                  d="m1.61 12.738l-.104.489l.105-.489Zm11.78 0l.104.489l-.105-.489Zm0-10.476l.104-.489l-.105.489Zm-11.78 0l.106.489l-.105-.489ZM6.5 5.5l.277-.416A.5.5 0 0 0 6 5.5h.5Zm0 4H6a.5.5 0 0 0 .777.416L6.5 9.5Zm3-2l.277.416a.5.5 0 0 0 0-.832L9.5 7.5ZM0 3.636v7.728h1V3.636H0Zm15 7.728V3.636h-1v7.728h1ZM1.506 13.227c3.951.847 8.037.847 11.988 0l-.21-.978a27.605 27.605 0 0 1-11.568 0l-.21.978ZM13.494 1.773a28.606 28.606 0 0 0-11.988 0l.21.978a27.607 27.607 0 0 1 11.568 0l.21-.978ZM15 3.636c0-.898-.628-1.675-1.506-1.863l-.21.978c.418.09.716.458.716.885h1Zm-1 7.728a.905.905 0 0 1-.716.885l.21.978A1.905 1.905 0 0 0 15 11.364h-1Zm-14 0c0 .898.628 1.675 1.506 1.863l.21-.978A.905.905 0 0 1 1 11.364H0Zm1-7.728c0-.427.298-.796.716-.885l-.21-.978A1.905 1.905 0 0 0 0 3.636h1ZM6 5.5v4h1v-4H6Zm.777 4.416l3-2l-.554-.832l-3 2l.554.832Zm3-2.832l-3-2l-.554.832l3 2l.554-.832Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="dribble" viewBox="0 0 15 15">
            <path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                  d="M4.839 1.024c3.346 4.041 5.096 7.922 5.704 12.782M.533 6.82c5.985-.138 9.402-1.083 11.97-4.216M2.7 12.594c3.221-4.902 7.171-5.65 11.755-4.293M14.5 7.5a7 7 0 1 0-14 0a7 7 0 0 0 14 0Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="calendar" viewBox="0 0 24 24">
            <g fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2">
                <rect width="20" height="18" x="2" y="4" rx="4" />
                <path d="M8 2v4m8-4v4M2 10h20" />
            </g>
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="shopping-bag" viewBox="0 0 24 24">
            <g fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2">
                <path
                        d="M3.977 9.84A2 2 0 0 1 5.971 8h12.058a2 2 0 0 1 1.994 1.84l.803 10A2 2 0 0 1 18.833 22H5.167a2 2 0 0 1-1.993-2.16l.803-10Z" />
                <path d="M16 11V6a4 4 0 0 0-4-4v0a4 4 0 0 0-4 4v5" />
            </g>
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="gift" viewBox="0 0 24 24">
            <g fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2">
                <rect width="18" height="14" x="3" y="8" rx="2" />
                <path d="M12 5a3 3 0 1 0-3 3m6 0a3 3 0 1 0-3-3m0 0v17m9-7H3" />
            </g>
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="arrow-cycle" viewBox="0 0 24 24">
            <g fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2">
                <path
                        d="M22 12c0 6-4.39 10-9.806 10C7.792 22 4.24 19.665 3 16m-1-4C2 6 6.39 2 11.806 2C16.209 2 19.76 4.335 21 8" />
                <path d="m7 17l-4-1l-1 4M17 7l4 1l1-4" />
            </g>
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="link" viewBox="0 0 24 24">
            <path fill="currentColor"
                  d="M12 19a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm5 0a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm0-4a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm-5 0a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm7-12h-1V2a1 1 0 0 0-2 0v1H8V2a1 1 0 0 0-2 0v1H5a3 3 0 0 0-3 3v14a3 3 0 0 0 3 3h14a3 3 0 0 0 3-3V6a3 3 0 0 0-3-3Zm1 17a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-9h16Zm0-11H4V6a1 1 0 0 1 1-1h1v1a1 1 0 0 0 2 0V5h8v1a1 1 0 0 0 2 0V5h1a1 1 0 0 1 1 1ZM7 15a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm0 4a1 1 0 1 0-1-1a1 1 0 0 0 1 1Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="arrow-left" viewBox="0 0 24 24">
            <path fill="currentColor"
                  d="M17 11H9.41l3.3-3.29a1 1 0 1 0-1.42-1.42l-5 5a1 1 0 0 0-.21.33a1 1 0 0 0 0 .76a1 1 0 0 0 .21.33l5 5a1 1 0 0 0 1.42 0a1 1 0 0 0 0-1.42L9.41 13H17a1 1 0 0 0 0-2Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="arrow-right" viewBox="0 0 24 24">
            <path fill="currentColor"
                  d="M17.92 11.62a1 1 0 0 0-.21-.33l-5-5a1 1 0 0 0-1.42 1.42l3.3 3.29H7a1 1 0 0 0 0 2h7.59l-3.3 3.29a1 1 0 0 0 0 1.42a1 1 0 0 0 1.42 0l5-5a1 1 0 0 0 .21-.33a1 1 0 0 0 0-.76Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="play" viewBox="0 0 24 24">
            <g fill="none" fill-rule="evenodd">
                <path
                        d="M24 0v24H0V0h24ZM12.593 23.258l-.011.002l-.071.035l-.02.004l-.014-.004l-.071-.035c-.01-.004-.019-.001-.024.005l-.004.01l-.017.428l.005.02l.01.013l.104.074l.015.004l.012-.004l.104-.074l.012-.016l.004-.017l-.017-.427c-.002-.01-.009-.017-.017-.018Zm.265-.113l-.013.002l-.185.093l-.01.01l-.003.011l.018.43l.005.012l.008.007l.201.093c.012.004.023 0 .029-.008l.004-.014l-.034-.614c-.003-.012-.01-.02-.02-.022Zm-.715.002a.023.023 0 0 0-.027.006l-.006.014l-.034.614c0 .012.007.02.017.024l.015-.002l.201-.093l.01-.008l.004-.011l.017-.43l-.003-.012l-.01-.01l-.184-.092Z" />
                <path fill="currentColor"
                      d="M5.669 4.76a1.469 1.469 0 0 1 2.04-1.177c1.062.454 3.442 1.533 6.462 3.276c3.021 1.744 5.146 3.267 6.069 3.958c.788.591.79 1.763.001 2.356c-.914.687-3.013 2.19-6.07 3.956c-3.06 1.766-5.412 2.832-6.464 3.28c-.906.387-1.92-.2-2.038-1.177c-.138-1.142-.396-3.735-.396-7.237c0-3.5.257-6.092.396-7.235Z" />
            </g>
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="category" viewBox="0 0 24 24">
            <path fill="currentColor"
                  d="M19 5.5h-6.28l-.32-1a3 3 0 0 0-2.84-2H5a3 3 0 0 0-3 3v13a3 3 0 0 0 3 3h14a3 3 0 0 0 3-3v-10a3 3 0 0 0-3-3Zm1 13a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-13a1 1 0 0 1 1-1h4.56a1 1 0 0 1 .95.68l.54 1.64a1 1 0 0 0 .95.68h7a1 1 0 0 1 1 1Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="calendar" viewBox="0 0 24 24">
            <path fill="currentColor"
                  d="M19 4h-2V3a1 1 0 0 0-2 0v1H9V3a1 1 0 0 0-2 0v1H5a3 3 0 0 0-3 3v12a3 3 0 0 0 3 3h14a3 3 0 0 0 3-3V7a3 3 0 0 0-3-3Zm1 15a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-7h16Zm0-9H4V7a1 1 0 0 1 1-1h2v1a1 1 0 0 0 2 0V6h6v1a1 1 0 0 0 2 0V6h2a1 1 0 0 1 1 1Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="heart" viewBox="0 0 24 24">
            <path fill="currentColor"
                  d="M20.16 4.61A6.27 6.27 0 0 0 12 4a6.27 6.27 0 0 0-8.16 9.48l7.45 7.45a1 1 0 0 0 1.42 0l7.45-7.45a6.27 6.27 0 0 0 0-8.87Zm-1.41 7.46L12 18.81l-6.75-6.74a4.28 4.28 0 0 1 3-7.3a4.25 4.25 0 0 1 3 1.25a1 1 0 0 0 1.42 0a4.27 4.27 0 0 1 6 6.05Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="plus" viewBox="0 0 24 24">
            <path fill="currentColor"
                  d="M19 11h-6V5a1 1 0 0 0-2 0v6H5a1 1 0 0 0 0 2h6v6a1 1 0 0 0 2 0v-6h6a1 1 0 0 0 0-2Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="minus" viewBox="0 0 24 24">
            <path fill="currentColor" d="M19 11H5a1 1 0 0 0 0 2h14a1 1 0 0 0 0-2Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="cart" viewBox="0 0 24 24">
            <path fill="currentColor"
                  d="M8.5 19a1.5 1.5 0 1 0 1.5 1.5A1.5 1.5 0 0 0 8.5 19ZM19 16H7a1 1 0 0 1 0-2h8.491a3.013 3.013 0 0 0 2.885-2.176l1.585-5.55A1 1 0 0 0 19 5H6.74a3.007 3.007 0 0 0-2.82-2H3a1 1 0 0 0 0 2h.921a1.005 1.005 0 0 1 .962.725l.155.545v.005l1.641 5.742A3 3 0 0 0 7 18h12a1 1 0 0 0 0-2Zm-1.326-9l-1.22 4.274a1.005 1.005 0 0 1-.963.726H8.754l-.255-.892L7.326 7ZM16.5 19a1.5 1.5 0 1 0 1.5 1.5a1.5 1.5 0 0 0-1.5-1.5Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="check" viewBox="0 0 24 24">
            <path fill="currentColor"
                  d="M18.71 7.21a1 1 0 0 0-1.42 0l-7.45 7.46l-3.13-3.14A1 1 0 1 0 5.29 13l3.84 3.84a1 1 0 0 0 1.42 0l8.16-8.16a1 1 0 0 0 0-1.47Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="trash" viewBox="0 0 24 24">
            <path fill="currentColor"
                  d="M10 18a1 1 0 0 0 1-1v-6a1 1 0 0 0-2 0v6a1 1 0 0 0 1 1ZM20 6h-4V5a3 3 0 0 0-3-3h-2a3 3 0 0 0-3 3v1H4a1 1 0 0 0 0 2h1v11a3 3 0 0 0 3 3h8a3 3 0 0 0 3-3V8h1a1 1 0 0 0 0-2ZM10 5a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v1h-4Zm7 14a1 1 0 0 1-1 1H8a1 1 0 0 1-1-1V8h10Zm-3-1a1 1 0 0 0 1-1v-6a1 1 0 0 0-2 0v6a1 1 0 0 0 1 1Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="star-outline" viewBox="0 0 15 15">
            <path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                  d="M7.5 9.804L5.337 11l.413-2.533L4 6.674l2.418-.37L7.5 4l1.082 2.304l2.418.37l-1.75 1.793L9.663 11L7.5 9.804Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="star-solid" viewBox="0 0 15 15">
            <path fill="currentColor"
                  d="M7.953 3.788a.5.5 0 0 0-.906 0L6.08 5.85l-2.154.33a.5.5 0 0 0-.283.843l1.574 1.613l-.373 2.284a.5.5 0 0 0 .736.518l1.92-1.063l1.921 1.063a.5.5 0 0 0 .736-.519l-.373-2.283l1.574-1.613a.5.5 0 0 0-.283-.844L8.921 5.85l-.968-2.062Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="search" viewBox="0 0 24 24">
            <path fill="currentColor"
                  d="M21.71 20.29L18 16.61A9 9 0 1 0 16.61 18l3.68 3.68a1 1 0 0 0 1.42 0a1 1 0 0 0 0-1.39ZM11 18a7 7 0 1 1 7-7a7 7 0 0 1-7 7Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="user" viewBox="0 0 24 24">
            <path fill="currentColor"
                  d="M15.71 12.71a6 6 0 1 0-7.42 0a10 10 0 0 0-6.22 8.18a1 1 0 0 0 2 .22a8 8 0 0 1 15.9 0a1 1 0 0 0 1 .89h.11a1 1 0 0 0 .88-1.1a10 10 0 0 0-6.25-8.19ZM12 12a4 4 0 1 1 4-4a4 4 0 0 1-4 4Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="close" viewBox="0 0 15 15">
            <path fill="currentColor"
                  d="M7.953 3.788a.5.5 0 0 0-.906 0L6.08 5.85l-2.154.33a.5.5 0 0 0-.283.843l1.574 1.613l-.373 2.284a.5.5 0 0 0 .736.518l1.92-1.063l1.921 1.063a.5.5 0 0 0 .736-.519l-.373-2.283l1.574-1.613a.5.5 0 0 0-.283-.844L8.921 5.85l-.968-2.062Z" />
        </symbol>
    </defs>
</svg>

<div class="preloader text-white fs-6 text-uppercase overflow-hidden"></div>

<!-- 검색 폼과 랭킹 박스를 감싸는 래퍼 -->
<div class="search-wrapper" style="position: relative;">
    <form role="search" method="get" class="form-group" action="">
        <input type="search" id="searchInput" class="form-control border-0 border-bottom"
               placeholder="Type and press enter" value="" name="s" />
        <button type="submit" class="search-submit border-0 position-absolute bg-white"
                style="top: 6px; right: 10px;">
            <svg class="search" width="24" height="24">
                <use xlink:href="#search"></use>
            </svg>
        </button>
    </form>

    <!-- 인기 검색어 박스 -->
    <div id="rankingBox"
         style="display: none; position: absolute; top: 100%; left: 0; background: white; width: 100%; border: 1px solid #ccc; z-index: 999;">
        <div style="font-weight: bold; padding: 10px 10px 0 10px; color: #FF7F7F;">인기 검색어</div>
        <ul id="rankingList" style="list-style: none; padding: 10px; margin: 0;"></ul>
    </div>
</div>




<div class="offcanvas offcanvas-end" data-bs-scroll="true" tabindex="-1" id="offcanvasCart" aria-labelledby="My Cart">
    <div class="offcanvas-header justify-content-center">
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <div class="order-md-last">
            <h4 class="d-flex justify-content-between align-items-center mb-3">
                <span class="text-primary">Your cart</span>
                <span class="badge bg-primary rounded-pill">3</span>
            </h4>
            <ul class="list-group mb-3">
                <li class="list-group-item d-flex justify-content-between lh-sm">
                    <div>
                        <h6 class="my-0">Growers cider</h6>
                        <small class="text-body-secondary">Brief description</small>
                    </div>
                    <span class="text-body-secondary">$12</span>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-sm">
                    <div>
                        <h6 class="my-0">Fresh grapes</h6>
                        <small class="text-body-secondary">Brief description</small>
                    </div>
                    <span class="text-body-secondary">$8</span>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-sm">
                    <div>
                        <h6 class="my-0">Heinz tomato ketchup</h6>
                        <small class="text-body-secondary">Brief description</small>
                    </div>
                    <span class="text-body-secondary">$5</span>
                </li>
                <li class="list-group-item d-flex justify-content-between">
                    <span>Total (USD)</span>
                    <strong>$20</strong>
                </li>
            </ul>

            <button class="w-100 btn btn-primary btn-lg" type="submit">Continue to Checkout</button>
        </div>
    </div>
</div>

<!-- 여기부터는 상단 목록들 -->
<nav class="navbar navbar-expand-lg bg-light text-uppercase fs-6 p-3 border-bottom align-items-center">
    <div class="container-fluid">
        <div class="row justify-content-between align-items-center w-100">

            <div class="col-auto">
                <span class="navbar-brand" style="
                font-size: 32px;
                font-weight: bold;
                background: linear-gradient(90deg, #FF6B6B, #FFA63D);
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;">
                깔롱드
                </span>
            </div>



            <div class="col-auto">
                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar"
                        aria-controls="offcanvasNavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar"
                     aria-labelledby="offcanvasNavbarLabel">
                    <div class="offcanvas-header">
                        <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Menu</h5>
                        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas"
                                aria-label="Close"></button>
                    </div>

                    <div class="offcanvas-body">
                        <ul class="navbar-nav justify-content-end flex-grow-1 gap-1 gap-md-5 pe-3">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle active" href="#" id="dropdownHome" data-bs-toggle="dropdown"
                                   aria-haspopup="true" aria-expanded="false">Home</a>
                                <ul class="dropdown-menu list-unstyled" aria-labelledby="dropdownHome">
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Home Layout 1</a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Home Layout 2 </a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Home Layout 3 </a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Home Layout 4 </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="dropdownShop" data-bs-toggle="dropdown"
                                   aria-haspopup="true" aria-expanded="false">Shop</a>
                                <ul class="dropdown-menu list-unstyled" aria-labelledby="dropdownShop">
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Shop Sidebar </a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Shop Three Column </a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Shop Three Column Wide </a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Shop Four Column </a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Shop Four Column Wide </a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Shop Six Column </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="dropdownBlog" data-bs-toggle="dropdown"
                                   aria-haspopup="true" aria-expanded="false">Blog</a>
                                <ul class="dropdown-menu list-unstyled" aria-labelledby="dropdownBlog">
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Blog Classic </a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Blog Grid with Sidebar </a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Blog Grid Four Column </a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Blog No Sidebar </a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Blog Right Sidebar </a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Single Post </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="dropdownPages" data-bs-toggle="dropdown"
                                   aria-haspopup="true" aria-expanded="false">Pages</a>
                                <ul class="dropdown-menu list-unstyled" aria-labelledby="dropdownPages">
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">About </a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Cart </a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Checkout </a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Coming Soon </a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Contact </a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Error Page </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Blog</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Contact</a>
                            </li>

                            <!-- 상단 목록 로그인, 카트, 위시 리스트 -->
                            <div class="col-3 col-lg-auto">
                                <ul class="list-unstyled d-flex m-0 align-items-center">
                                    <li class="nav-link">
                                        <a href="index.html" class="d-flex align-items-center text-uppercase mx-1"
                                           style="font-size: 20px; line-height: 1;">
                                            WISHLIST <span class="wishlist-count ms-1">(0)</span>
                                        </a>
                                    </li>
                                    <li class="d-inline-block">
                                        <a href="index.html" class="d-flex align-items-center text-uppercase mx-2" data-bs-toggle="offcanvas"
                                           data-bs-target="#offcanvasCart" aria-controls="offcanvasCart"
                                           style="font-size: 20px; line-height: 1;">
                                            CART <span class="cart-count ms-1">(0)</span>
                                        </a>
                                    </li>
                                    <li class="d-inline-block">
                                        <a href="/login" class="nav-login d-flex align-items-center text-uppercase mx-3 fw-bold"
                                           style="font-size: 20px; line-height: 1;">
                                            LOGIN
                                        </a>
                                    </li>
                                </ul>
                            </div>

                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</nav>

<section id="billboard" class="bg-light py-5">
    <div class="container">
        <div class="row justify-content-center">
            <h1 class="section-title text-center mt-4" data-aos="fade-up">STYLE FEED</h1>
            <div class="col-md-6 text-center" data-aos="fade-up" data-aos-delay="300">
                <p>스타가 입으면, 나도 궁금해진다. 방송 속 그 옷, 지금 여기서 바로 확인해요!
                    연예인 착용 아이템 실시간 업데이트, 패션 따라잡기 더 이상 어렵지 않아요.</p>
            </div>
        </div>
        <div class="row">
            <div class="swiper main-swiper py-4" data-aos="fade-up" data-aos-delay="600">
                <div class="swiper-wrapper d-flex border-animation-left">
                    <div class="swiper-slide">
                        <div class="banner-item image-zoom-effect">
                            <div class="image-holder">
                                <a href="#">
                                    <img src="image/banner-image-6.jpg" alt="product" class="img-fluid">
                                </a>
                            </div>
                            <div class="banner-content py-4">
                                <h5 class="element-title text-uppercase">
                                    <a href="index.html" class="item-anchor">Soft leather jackets</a>
                                </h5>
                                <p>Scelerisque duis aliquam qui lorem ipsum dolor amet, consectetur adipiscing elit.</p>
                                <div class="btn-left">
                                    <a href="#" class="btn-link fs-6 text-uppercase item-anchor text-decoration-none">Discover Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="banner-item image-zoom-effect">
                            <div class="image-holder">
                                <a href="#">
                                    <img src="image/banner-image-1.jpg" alt="product" class="img-fluid">
                                </a>
                            </div>
                            <div class="banner-content py-4">
                                <h5 class="element-title text-uppercase">
                                    <a href="index.html" class="item-anchor">Soft leather jackets</a>
                                </h5>
                                <p>Scelerisque duis aliquam qui lorem ipsum dolor amet, consectetur adipiscing elit.</p>
                                <div class="btn-left">
                                    <a href="#" class="btn-link fs-6 text-uppercase item-anchor text-decoration-none">Discover Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="banner-item image-zoom-effect">
                            <div class="image-holder">
                                <a href="#">
                                    <img src="image/banner-image-2.jpg" alt="product" class="img-fluid">
                                </a>
                            </div>
                            <div class="banner-content py-4">
                                <h5 class="element-title text-uppercase">
                                    <a href="index.html" class="item-anchor">Soft leather jackets</a>
                                </h5>
                                <p>Scelerisque duis aliquam qui lorem ipsum dolor amet, consectetur adipiscing elit.</p>
                                <div class="btn-left">
                                    <a href="#" class="btn-link fs-6 text-uppercase item-anchor text-decoration-none">Discover Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="banner-item image-zoom-effect">
                            <div class="image-holder">
                                <a href="#">
                                    <img src="image/banner-image-3.jpg" alt="product" class="img-fluid">
                                </a>
                            </div>
                            <div class="banner-content py-4">
                                <h5 class="element-title text-uppercase">
                                    <a href="index.html" class="item-anchor">Soft leather jackets</a>
                                </h5>
                                <p>Scelerisque duis aliquam qui lorem ipsum dolor amet, consectetur adipiscing elit.</p>
                                <div class="btn-left">
                                    <a href="#" class="btn-link fs-6 text-uppercase item-anchor text-decoration-none">Discover Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="banner-item image-zoom-effect">
                            <div class="image-holder">
                                <a href="#">
                                    <img src="image/banner-image-4.jpg" alt="product" class="img-fluid">
                                </a>
                            </div>
                            <div class="banner-content py-4">
                                <h5 class="element-title text-uppercase">
                                    <a href="index.html" class="item-anchor">Out crop sweater</a>
                                </h5>
                                <p>Scelerisque duis aliquam qui lorem ipsum dolor amet, consectetur adipiscing elit.</p>
                                <div class="btn-left">
                                    <a href="#" class="btn-link fs-6 text-uppercase item-anchor text-decoration-none">Discover Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="banner-item image-zoom-effect">
                            <div class="image-holder">
                                <a href="#">
                                    <img src="image/banner-image-5.jpg" alt="product" class="img-fluid">
                                </a>
                            </div>
                            <div class="banner-content py-4">
                                <h5 class="element-title text-uppercase">
                                    <a href="index.html" class="item-anchor">Soft leather jackets</a>
                                </h5>
                                <p>Scelerisque duis aliquam qui lorem ipsum dolor amet, consectetur adipiscing elit.</p>
                                <div class="btn-left">
                                    <a href="#" class="btn-link fs-6 text-uppercase item-anchor text-decoration-none">Discover Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <div class="icon-arrow icon-arrow-left"><svg width="50" height="50" viewBox="0 0 24 24">
                <use xlink:href="#arrow-left"></use>
            </svg></div>
            <div class="icon-arrow icon-arrow-right"><svg width="50" height="50" viewBox="0 0 24 24">
                <use xlink:href="#arrow-right"></use>
            </svg></div>
        </div>
    </div>
</section>

<section class="features py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-3 text-center" data-aos="fade-in" data-aos-delay="0">
                <div class="py-5">
                    <svg width="38" height="38" viewBox="0 0 24 24">
                        <use xlink:href="#calendar"></use>
                    </svg>
                    <h4 class="element-title text-capitalize my-3">Book An Appointment</h4>
                    <p>At imperdiet dui accumsan sit amet nulla risus est ultricies quis.</p>
                </div>
            </div>
            <div class="col-md-3 text-center" data-aos="fade-in" data-aos-delay="300">
                <div class="py-5">
                    <svg width="38" height="38" viewBox="0 0 24 24">
                        <use xlink:href="#shopping-bag"></use>
                    </svg>
                    <h4 class="element-title text-capitalize my-3">Pick up in store</h4>
                    <p>At imperdiet dui accumsan sit amet nulla risus est ultricies quis.</p>
                </div>
            </div>
            <div class="col-md-3 text-center" data-aos="fade-in" data-aos-delay="600">
                <div class="py-5">
                    <svg width="38" height="38" viewBox="0 0 24 24">
                        <use xlink:href="#gift"></use>
                    </svg>
                    <h4 class="element-title text-capitalize my-3">Special packaging</h4>
                    <p>At imperdiet dui accumsan sit amet nulla risus est ultricies quis.</p>
                </div>
            </div>
            <div class="col-md-3 text-center" data-aos="fade-in" data-aos-delay="900">
                <div class="py-5">
                    <svg width="38" height="38" viewBox="0 0 24 24">
                        <use xlink:href="#arrow-cycle"></use>
                    </svg>
                    <h4 class="element-title text-capitalize my-3">free global returns</h4>
                    <p>At imperdiet dui accumsan sit amet nulla risus est ultricies quis.</p>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="categories overflow-hidden">
    <div class="container">
        <div class="open-up" data-aos="zoom-out">
            <div class="row">
                <div class="col-md-4">
                    <div class="cat-item image-zoom-effect">
                        <div class="image-holder">
                            <a href="index.html">
                                <img src="image/cat-item1.jpg" alt="categories" class="product-image img-fluid">
                            </a>
                        </div>
                        <div class="category-content">
                            <div class="product-button">
                                <a href="index.html" class="btn btn-common text-uppercase">Shop for men</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="cat-item image-zoom-effect">
                        <div class="image-holder">
                            <a href="index.html">
                                <img src="image/cat-item2.jpg" alt="categories" class="product-image img-fluid">
                            </a>
                        </div>
                        <div class="category-content">
                            <div class="product-button">
                                <a href="index.html" class="btn btn-common text-uppercase">Shop for women</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="cat-item image-zoom-effect">
                        <div class="image-holder">
                            <a href="index.html">
                                <img src="image/cat-item3.jpg" alt="categories" class="product-image img-fluid">
                            </a>
                        </div>
                        <div class="category-content">
                            <div class="product-button">
                                <a href="index.html" class="btn btn-common text-uppercase">Shop accessories</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="new-arrival" class="new-arrival product-carousel py-5 position-relative overflow-hidden">
    <div class="container">
        <div class="d-flex flex-wrap justify-content-between align-items-center mt-5 mb-3">
            <h4 class="text-uppercase">Our New Arrivals</h4>
            <a href="index.html" class="btn-link">View All Products</a>
        </div>
        <div class="swiper product-swiper open-up" data-aos="zoom-out">
            <div class="swiper-wrapper d-flex">
                <div class="swiper-slide">
                    <div class="product-item image-zoom-effect link-effect">
                        <div class="image-holder position-relative">
                            <a href="index.html">
                                <img src="image/product-item-1.jpg" alt="categories" class="product-image img-fluid">
                            </a>
                            <a href="index.html" class="btn-icon btn-wishlist">
                                <svg width="24" height="24" viewBox="0 0 24 24">
                                    <use xlink:href="#heart"></use>
                                </svg>
                            </a>
                            <div class="product-content">
                                <h5 class="element-title text-uppercase fs-5 mt-3">
                                    <a href="index.html">Dark florish onepiece</a>
                                </h5>
                                <a href="#" class="text-decoration-none" data-after="Add to cart"><span>$95.00</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="product-item image-zoom-effect link-effect">
                        <div class="image-holder position-relative">
                            <a href="index.html">
                                <img src="image/product-item-2.jpg" alt="categories" class="product-image img-fluid">
                            </a>
                            <a href="index.html" class="btn-icon btn-wishlist">
                                <svg width="24" height="24" viewBox="0 0 24 24">
                                    <use xlink:href="#heart"></use>
                                </svg>
                            </a>
                            <div class="product-content">
                                <h5 class="text-uppercase fs-5 mt-3">
                                    <a href="index.html">Baggy Shirt</a>
                                </h5>
                                <a href="#" class="text-decoration-none" data-after="Add to cart"><span>$55.00</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="product-item image-zoom-effect link-effect">
                        <div class="image-holder position-relative">
                            <a href="index.html">
                                <img src="image/product-item-3.jpg" alt="categories" class="product-image img-fluid">
                            </a>
                            <a href="index.html" class="btn-icon btn-wishlist">
                                <svg width="24" height="24" viewBox="0 0 24 24">
                                    <use xlink:href="#heart"></use>
                                </svg>
                            </a>
                            <div class="product-content">
                                <h5 class="text-uppercase fs-5 mt-3">
                                    <a href="index.html">Cotton off-white shirt</a>
                                </h5>
                                <a href="#" class="text-decoration-none" data-after="Add to cart"><span>$65.00</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="product-item image-zoom-effect link-effect">
                        <div class="image-holder position-relative">
                            <a href="index.html">
                                <img src="image/product-item-4.jpg" alt="categories" class="product-image img-fluid">
                            </a>
                            <a href="index.html" class="btn-icon btn-wishlist">
                                <svg width="24" height="24" viewBox="0 0 24 24">
                                    <use xlink:href="#heart"></use>
                                </svg>
                            </a>
                            <div class="product-content">
                                <h5 class="text-uppercase fs-5 mt-3">
                                    <a href="index.html">Crop sweater</a>
                                </h5>
                                <a href="#" class="text-decoration-none" data-after="Add to cart"><span>$50.00</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="product-item image-zoom-effect link-effect">
                        <div class="image-holder position-relative">
                            <a href="index.html">
                                <img src="image/product-item-10.jpg" alt="categories" class="product-image img-fluid">
                            </a>
                            <a href="index.html" class="btn-icon btn-wishlist">
                                <svg width="24" height="24" viewBox="0 0 24 24">
                                    <use xlink:href="#heart"></use>
                                </svg>
                            </a>
                            <div class="product-content">
                                <h5 class="text-uppercase fs-5 mt-3">
                                    <a href="index.html">Crop sweater</a>
                                </h5>
                                <a href="#" class="text-decoration-none" data-after="Add to cart"><span>$70.00</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="swiper-pagination"></div>
        </div>
        <div class="icon-arrow icon-arrow-left"><svg width="50" height="50" viewBox="0 0 24 24">
            <use xlink:href="#arrow-left"></use>
        </svg></div>
        <div class="icon-arrow icon-arrow-right"><svg width="50" height="50" viewBox="0 0 24 24">
            <use xlink:href="#arrow-right"></use>
        </svg></div>
    </div>
</section>

<section class="collection bg-light position-relative py-5">
    <div class="container">
        <div class="row">
            <div class="title-xlarge text-uppercase txt-fx domino">Collection</div>
            <div class="collection-item d-flex flex-wrap my-5">
                <div class="col-md-6 column-container">
                    <div class="image-holder">
                        <img src="image/single-image-2.jpg" alt="collection" class="product-image img-fluid">
                    </div>
                </div>
                <div class="col-md-6 column-container bg-white">
                    <div class="collection-content p-5 m-0 m-md-5">
                        <h3 class="element-title text-uppercase">Classic winter collection</h3>
                        <p>Dignissim lacus, turpis ut suspendisse vel tellus. Turpis purus, gravida orci, fringilla a. Ac sed eu
                            fringilla odio mi. Consequat pharetra at magna imperdiet cursus ac faucibus sit libero. Ultricies quam
                            nunc, lorem sit lorem urna, pretium aliquam ut. In vel, quis donec dolor id in. Pulvinar commodo mollis
                            diam sed facilisis at cursus imperdiet cursus ac faucibus sit faucibus sit libero.</p>
                        <a href="#" class="btn btn-dark text-uppercase mt-3">Shop Collection</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="best-sellers" class="best-sellers product-carousel py-5 position-relative overflow-hidden">
    <div class="container">
        <div class="d-flex flex-wrap justify-content-between align-items-center mt-5 mb-3">
            <h4 class="text-uppercase">Best Selling Items</h4>
            <a href="index.html" class="btn-link">View All Products</a>
        </div>
        <div class="swiper product-swiper open-up" data-aos="zoom-out">
            <div class="swiper-wrapper d-flex">
                <div class="swiper-slide">
                    <div class="product-item image-zoom-effect link-effect">
                        <div class="image-holder">
                            <a href="index.html">
                                <img src="image/product-item-4.jpg" alt="categories" class="product-image img-fluid">
                            </a>
                            <a href="index.html" class="btn-icon btn-wishlist">
                                <svg width="24" height="24" viewBox="0 0 24 24">
                                    <use xlink:href="#heart"></use>
                                </svg>
                            </a>
                            <div class="product-content">
                                <h5 class="text-uppercase fs-5 mt-3">
                                    <a href="index.html">Dark florish onepiece</a>
                                </h5>
                                <a href="index.html" class="text-decoration-none" data-after="Add to cart"><span>$95.00</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="product-item image-zoom-effect link-effect">
                        <div class="image-holder">
                            <a href="index.html">
                                <img src="image/product-item-3.jpg" alt="product" class="product-image img-fluid">
                            </a>
                            <a href="index.html" class="btn-icon btn-wishlist">
                                <svg width="24" height="24" viewBox="0 0 24 24">
                                    <use xlink:href="#heart"></use>
                                </svg>
                            </a>
                            <div class="product-content">
                                <h5 class="text-uppercase fs-5 mt-3">
                                    <a href="index.html">Baggy Shirt</a>
                                </h5>
                                <a href="index.html" class="text-decoration-none" data-after="Add to cart"><span>$55.00</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="product-item image-zoom-effect link-effect">
                        <div class="image-holder">
                            <a href="index.html">
                                <img src="image/product-item-5.jpg" alt="categories" class="product-image img-fluid">
                            </a>
                            <a href="index.html" class="btn-icon btn-wishlist">
                                <svg width="24" height="24" viewBox="0 0 24 24">
                                    <use xlink:href="#heart"></use>
                                </svg>
                            </a>
                            <div class="product-content">
                                <h5 class="text-uppercase fs-5 mt-3">
                                    <a href="index.html">Cotton off-white shirt</a>
                                </h5>
                                <a href="index.html" class="text-decoration-none" data-after="Add to cart"><span>$65.00</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="product-item image-zoom-effect link-effect">
                        <div class="image-holder">
                            <a href="index.html">
                                <img src="image/product-item-6.jpg" alt="categories" class="product-image img-fluid">
                            </a>
                            <a href="index.html" class="btn-icon btn-wishlist">
                                <svg width="24" height="24" viewBox="0 0 24 24">
                                    <use xlink:href="#heart"></use>
                                </svg>
                            </a>
                            <div class="product-content">
                                <h5 class="text-uppercase fs-5 mt-3">
                                    <a href="index.html">Handmade crop sweater</a>
                                </h5>
                                <a href="index.html" class="text-decoration-none" data-after="Add to cart"><span>$50.00</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="product-item image-zoom-effect link-effect">
                        <div class="image-holder">
                            <a href="index.html">
                                <img src="image/product-item-9.jpg" alt="categories" class="product-image img-fluid">
                            </a>
                            <a href="index.html" class="btn-icon btn-wishlist">
                                <svg width="24" height="24" viewBox="0 0 24 24">
                                    <use xlink:href="#heart"></use>
                                </svg>
                            </a>
                            <div class="product-content">
                                <h5 class="text-uppercase fs-5 mt-3">
                                    <a href="index.html">Dark florish onepiece</a>
                                </h5>
                                <a href="index.html" class="text-decoration-none" data-after="Add to cart"><span>$70.00</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="product-item image-zoom-effect link-effect">
                        <div class="image-holder">
                            <a href="index.html">
                                <img src="image/product-item-10.jpg" alt="categories" class="product-image img-fluid">
                            </a>
                            <a href="index.html" class="btn-icon btn-wishlist">
                                <svg width="24" height="24" viewBox="0 0 24 24">
                                    <use xlink:href="#heart"></use>
                                </svg>
                            </a>
                            <div class="product-content">
                                <h5 class="text-uppercase fs-5 mt-3">
                                    <a href="index.html">Cotton off-white shirt</a>
                                </h5>
                                <a href="index.html" class="text-decoration-none" data-after="Add to cart"><span>$70.00</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="swiper-pagination"></div>
        </div>
        <div class="icon-arrow icon-arrow-left"><svg width="50" height="50" viewBox="0 0 24 24">
            <use xlink:href="#arrow-left"></use>
        </svg></div>
        <div class="icon-arrow icon-arrow-right"><svg width="50" height="50" viewBox="0 0 24 24">
            <use xlink:href="#arrow-right"></use>
        </svg></div>
    </div>
</section>

<section class="video py-5 overflow-hidden">
    <div class="container-fluid">
        <div class="row">
            <div class="video-content open-up" data-aos="zoom-out">
                <div class="video-bg">
                    <img src="image/video-image.jpg" alt="video" class="video-image img-fluid">
                </div>
                <div class="video-player">
                    <a class="youtube" href="https://www.youtube.com/embed/pjtsGzQjFM4">
                        <svg width="24" height="24" viewBox="0 0 24 24">
                            <use xlink:href="#play"></use>
                        </svg>
                        <img src="image/text-pattern.png" alt="pattern" class="text-rotate">
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="testimonials py-5 bg-light">
    <div class="section-header text-center mt-5">
        <h3 class="section-title">WE LOVE GOOD COMPLIMENT</h3>
    </div>
    <div class="swiper testimonial-swiper overflow-hidden my-5">
        <div class="swiper-wrapper d-flex">
            <div class="swiper-slide">
                <div class="testimonial-item text-center">
                    <blockquote>
                        <p>“More than expected crazy soft, flexible and best fitted white simple denim shirt.”</p>
                        <div class="review-title text-uppercase">casual way</div>
                    </blockquote>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="testimonial-item text-center">
                    <blockquote>
                        <p>“Best fitted white denim shirt more than expected crazy soft, flexible</p>
                        <div class="review-title text-uppercase">uptop</div>
                    </blockquote>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="testimonial-item text-center">
                    <blockquote>
                        <p>“Best fitted white denim shirt more white denim than expected flexible crazy soft.”</p>
                        <div class="review-title text-uppercase">Denim craze</div>
                    </blockquote>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="testimonial-item text-center">
                    <blockquote>
                        <p>“Best fitted white denim shirt more than expected crazy soft, flexible</p>
                        <div class="review-title text-uppercase">uptop</div>
                    </blockquote>
                </div>
            </div>
        </div>
    </div>
    <div class="testimonial-swiper-pagination d-flex justify-content-center mb-5"></div>
</section>

<section id="related-products" class="related-products product-carousel py-5 position-relative overflow-hidden">
    <div class="container">
        <div class="d-flex flex-wrap justify-content-between align-items-center mt-5 mb-3">
            <h4 class="text-uppercase">You May Also Like</h4>
            <a href="index.html" class="btn-link">View All Products</a>
        </div>
        <div class="swiper product-swiper open-up" data-aos="zoom-out">
            <div class="swiper-wrapper d-flex">
                <div class="swiper-slide">
                    <div class="product-item image-zoom-effect link-effect">
                        <div class="image-holder">
                            <a href="index.html">
                                <img src="image/product-item-5.jpg" alt="product" class="product-image img-fluid">
                            </a>
                            <a href="index.html" class="btn-icon btn-wishlist">
                                <svg width="24" height="24" viewBox="0 0 24 24">
                                    <use xlink:href="#heart"></use>
                                </svg>
                            </a>
                            <div class="product-content">
                                <h5 class="text-uppercase fs-5 mt-3">
                                    <a href="index.html">Dark florish onepiece</a>
                                </h5>
                                <a href="index.html" class="text-decoration-none" data-after="Add to cart"><span>$95.00</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="product-item image-zoom-effect link-effect">
                        <div class="image-holder">
                            <a href="index.html">
                                <img src="image/product-item-6.jpg" alt="product" class="product-image img-fluid">
                            </a>
                            <a href="index.html" class="btn-icon btn-wishlist">
                                <svg width="24" height="24" viewBox="0 0 24 24">
                                    <use xlink:href="#heart"></use>
                                </svg>
                            </a>
                            <div class="product-content">
                                <h5 class="text-uppercase fs-5 mt-3">
                                    <a href="index.html">Baggy Shirt</a>
                                </h5>
                                <a href="index.html" class="text-decoration-none" data-after="Add to cart"><span>$55.00</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="product-item image-zoom-effect link-effect">
                        <div class="image-holder">
                            <a href="index.html">
                                <img src="image/product-item-7.jpg" alt="product" class="product-image img-fluid">
                            </a>
                            <a href="index.html" class="btn-icon btn-wishlist">
                                <svg width="24" height="24" viewBox="0 0 24 24">
                                    <use xlink:href="#heart"></use>
                                </svg>
                            </a>
                            <div class="product-content">
                                <h5 class="text-uppercase fs-5 mt-3">
                                    <a href="index.html">Cotton off-white shirt</a>
                                </h5>
                                <a href="index.html" class="text-decoration-none" data-after="Add to cart"><span>$65.00</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="product-item image-zoom-effect link-effect">
                        <div class="image-holder">
                            <a href="index.html">
                                <img src="images/product-item-8.jpg" alt="product" class="product-image img-fluid">
                            </a>
                            <a href="index.html" class="btn-icon btn-wishlist">
                                <svg width="24" height="24" viewBox="0 0 24 24">
                                    <use xlink:href="#heart"></use>
                                </svg>
                            </a>
                            <div class="product-content">
                                <h5 class="text-uppercase fs-5 mt-3">
                                    <a href="index.html">Handmade crop sweater</a>
                                </h5>
                                <a href="index.html" class="text-decoration-none" data-after="Add to cart"><span>$50.00</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="product-item image-zoom-effect link-effect">
                        <div class="image-holder">
                            <a href="index.html">
                                <img src="image/product-item-1.jpg" alt="product" class="product-image img-fluid">
                            </a>
                            <a href="index.html" class="btn-icon btn-wishlist">
                                <svg width="24" height="24" viewBox="0 0 24 24">
                                    <use xlink:href="#heart"></use>
                                </svg>
                            </a>
                            <div class="product-content">
                                <h5 class="text-uppercase fs-5 mt-3">
                                    <a href="index.html">Handmade crop sweater</a>
                                </h5>
                                <a href="index.html" class="text-decoration-none" data-after="Add to cart"><span>$70.00</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="swiper-pagination"></div>
        </div>
        <div class="icon-arrow icon-arrow-left"><svg width="50" height="50" viewBox="0 0 24 24">
            <use xlink:href="#arrow-left"></use>
        </svg></div>
        <div class="icon-arrow icon-arrow-right"><svg width="50" height="50" viewBox="0 0 24 24">
            <use xlink:href="#arrow-right"></use>
        </svg></div>
    </div>
</section>

<section class="blog py-5">
    <div class="container">
        <div class="d-flex flex-wrap justify-content-between align-items-center mt-5 mb-3">
            <h4 class="text-uppercase">Read Blog Posts</h4>
            <a href="index.html" class="btn-link">View All</a>
        </div>
        <div class="row">
            <div class="col-md-4">
                <article class="post-item">
                    <div class="post-image">
                        <a href="index.html">
                            <img src="image/post-image1.jpg" alt="image" class="post-grid-image img-fluid">
                        </a>
                    </div>
                    <div class="post-content d-flex flex-wrap gap-2 my-3">
                        <div class="post-meta text-uppercase fs-6 text-secondary">
                            <span class="post-category">Fashion /</span>
                            <span class="meta-day"> jul 11, 2022</span>
                        </div>
                        <h5 class="post-title text-uppercase">
                            <a href="index.html">How to look outstanding in pastel</a>
                        </h5>
                        <p>Dignissim lacus,turpis ut suspendisse vel tellus.Turpis purus,gravida orci,fringilla...</p>
                    </div>
                </article>
            </div>
            <div class="col-md-4">
                <article class="post-item">
                    <div class="post-image">
                        <a href="index.html">
                            <img src="image/post-image2.jpg" alt="image" class="post-grid-image img-fluid">
                        </a>
                    </div>
                    <div class="post-content d-flex flex-wrap gap-2 my-3">
                        <div class="post-meta text-uppercase fs-6 text-secondary">
                            <span class="post-category">Fashion /</span>
                            <span class="meta-day"> jul 11, 2022</span>
                        </div>
                        <h5 class="post-title text-uppercase">
                            <a href="index.html">Top 10 fashion trend for summer</a>
                        </h5>
                        <p>Turpis purus, gravida orci, fringilla dignissim lacus, turpis ut suspendisse vel tellus...</p>
                    </div>
                </article>
            </div>
            <div class="col-md-4">
                <article class="post-item">
                    <div class="post-image">
                        <a href="index.html">
                            <img src="image/post-image3.jpg" alt="image" class="post-grid-image img-fluid">
                        </a>
                    </div>
                    <div class="post-content d-flex flex-wrap gap-2 my-3">
                        <div class="post-meta text-uppercase fs-6 text-secondary">
                            <span class="post-category">Fashion /</span>
                            <span class="meta-day"> jul 11, 2022</span>
                        </div>
                        <h5 class="post-title text-uppercase">
                            <a href="index.html">Crazy fashion with unique moment</a>
                        </h5>
                        <p>Turpis purus, gravida orci, fringilla dignissim lacus, turpis ut suspendisse vel tellus...</p>
                    </div>
                </article>
            </div>
        </div>
    </div>
</section>

<section class="logo-bar py-5 my-5">
    <div class="container">
        <div class="row">
            <div class="logo-content d-flex flex-wrap justify-content-between">
                <img src="image/logo1.png" alt="logo" class="logo-image img-fluid">
                <img src="image/logo2.png" alt="logo" class="logo-image img-fluid">
                <img src="image/logo3.png" alt="logo" class="logo-image img-fluid">
                <img src="image/logo4.png" alt="logo" class="logo-image img-fluid">
                <img src="image/logo5.png" alt="logo" class="logo-image img-fluid">
            </div>
        </div>
    </div>
</section>

<section class="newsletter bg-light" style="background: url(image/pattern-bg.png) no-repeat;">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8 py-5 my-5">
                <div class="subscribe-header text-center pb-3">
                    <h3 class="section-title text-uppercase">Sign Up for our newsletter</h3>
                </div>
                <form id="form" class="d-flex flex-wrap gap-2">
                    <input type="text" name="email" placeholder="Your Email Addresss" class="form-control form-control-lg">
                    <button class="btn btn-dark btn-lg text-uppercase w-100">Sign Up</button>
                </form>
            </div>
        </div>
    </div>
</section>

<section class="instagram position-relative">
    <div class="d-flex justify-content-center w-100 position-absolute bottom-0 z-1">
        <a href="https://www.instagram.com/templatesjungle/" class="btn btn-dark px-5">Follow us on Instagram</a>
    </div>
    <div class="row g-0">
        <div class="col-6 col-sm-4 col-md-2">
            <div class="insta-item">
                <a href="https://www.instagram.com/templatesjungle/" target="_blank">
                    <img src="image/insta-item1.jpg" alt="instagram" class="insta-image img-fluid">
                </a>
            </div>
        </div>
        <div class="col-6 col-sm-4 col-md-2">
            <div class="insta-item">
                <a href="https://www.instagram.com/templatesjungle/" target="_blank">
                    <img src="image/insta-item2.jpg" alt="instagram" class="insta-image img-fluid">
                </a>
            </div>
        </div>
        <div class="col-6 col-sm-4 col-md-2">
            <div class="insta-item">
                <a href="https://www.instagram.com/templatesjungle/" target="_blank">
                    <img src="image/insta-item3.jpg" alt="instagram" class="insta-image img-fluid">
                </a>
            </div>
        </div>
        <div class="col-6 col-sm-4 col-md-2">
            <div class="insta-item">
                <a href="https://www.instagram.com/templatesjungle/" target="_blank">
                    <img src="image/insta-item4.jpg" alt="instagram" class="insta-image img-fluid">
                </a>
            </div>
        </div>
        <div class="col-6 col-sm-4 col-md-2">
            <div class="insta-item">
                <a href="https://www.instagram.com/templatesjungle/" target="_blank">
                    <img src="image/insta-item5.jpg" alt="instagram" class="insta-image img-fluid">
                </a>
            </div>
        </div>
        <div class="col-6 col-sm-4 col-md-2">
            <div class="insta-item">
                <a href="https://www.instagram.com/templatesjungle/" target="_blank">
                    <img src="images/insta-item6.jpg" alt="instagram" class="insta-image img-fluid">
                </a>
            </div>
        </div>
    </div>
</section>

<footer id="footer" class="mt-5">
    <div class="container">
        <div class="row d-flex flex-wrap justify-content-between py-5">
            <div class="col-md-3 col-sm-6">
                <div class="footer-menu footer-menu-001">
                    <div class="footer-intro mb-4">
                        <a href="index.html">
                            <img src="image/main-logo.png" alt="logo" style="width: 150px; height: auto;" />
                        </a>
                    </div>
                    <p>좋아하는 연예인이 오늘 입은 옷이 궁금하다면
                        스타일의 모든 순간을 지금 바로 확인해보세요.</p>
                    <div class="social-links">
                        <ul class="list-unstyled d-flex flex-wrap gap-3">
                            <li>
                                <a href="#" class="text-secondary">
                                    <svg width="24" height="24" viewBox="0 0 24 24">
                                        <use xlink:href="#facebook"></use>
                                    </svg>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="text-secondary">
                                    <svg width="24" height="24" viewBox="0 0 24 24">
                                        <use xlink:href="#twitter"></use>
                                    </svg>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="text-secondary">
                                    <svg width="24" height="24" viewBox="0 0 24 24">
                                        <use xlink:href="#youtube"></use>
                                    </svg>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="text-secondary">
                                    <svg width="24" height="24" viewBox="0 0 24 24">
                                        <use xlink:href="#pinterest"></use>
                                    </svg>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="text-secondary">
                                    <svg width="24" height="24" viewBox="0 0 24 24">
                                        <use xlink:href="#instagram"></use>
                                    </svg>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="footer-menu footer-menu-002">
                    <h5 class="widget-title text-uppercase mb-4">Quick Links</h5>
                    <ul class="menu-list list-unstyled text-uppercase border-animation-left fs-6">
                        <li class="menu-item">
                            <a href="index.html" class="item-anchor">Home</a>
                        </li>
                        <li class="menu-item">
                            <a href="index.html" class="item-anchor">About</a>
                        </li>
                        <li class="menu-item">
                            <a href="blog.html" class="item-anchor">Services</a>
                        </li>
                        <li class="menu-item">
                            <a href="styles.html" class="item-anchor">Single item</a>
                        </li>
                        <li class="menu-item">
                            <a href="#" class="item-anchor">Contact</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="footer-menu footer-menu-003">
                    <h5 class="widget-title text-uppercase mb-4">Help & Info</h5>
                    <ul class="menu-list list-unstyled text-uppercase border-animation-left fs-6">
                        <li class="menu-item">
                            <a href="#" class="item-anchor">Track Your Order</a>
                        </li>
                        <li class="menu-item">
                            <a href="#" class="item-anchor">Returns + Exchanges</a>
                        </li>
                        <li class="menu-item">
                            <a href="#" class="item-anchor">Shipping + Delivery</a>
                        </li>
                        <li class="menu-item">
                            <a href="#" class="item-anchor">Contact Us</a>
                        </li>
                        <li class="menu-item">
                            <a href="#" class="item-anchor">Find us easy</a>
                        </li>
                        <li class="menu-item">
                            <a href="index.html" class="item-anchor">Faqs</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="footer-menu footer-menu-004 border-animation-left">
                    <h5 class="widget-title text-uppercase mb-4">Contact Us</h5>
                    <p>Do you have any questions or suggestions? <a href="mailto:contact@yourcompany.com"
                                                                    class="item-anchor">contact@yourcompany.com</a></p>
                    <p>Do you need support? Give us a call. <a href="tel:+43 720 11 52 78" class="item-anchor">+43 720 11 52
                        78</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="border-top py-4">
        <div class="container">
            <div class="row">
                <div class="col-md-6 d-flex flex-wrap">
                    <div class="shipping">
                        <span>We ship with:</span>
                        <img src="image/arct-icon.png" alt="icon">
                        <img src="image/dhl-logo.png" alt="icon">
                    </div>
                    <div class="payment-option">
                        <span>Payment Option:</span>
                        <img src="image/visa-card.png" alt="card">
                        <img src="image/paypal-card.png" alt="card">
                        <img src="image/master-card.png" alt="card">
                    </div>
                </div>
                <div class="col-md-6 text-end">
                    <p>© Copyright 2025 꼴랑드. All rights reserved. Design by <a href="https://templatesjungle.com"
                                                                               target="_blank">TemplatesJungle</a>
                        Distribution By <a href="https://themewagon.com" target="blank">ThemeWagon</a></p>
                </div>
            </div>
        </div>
    </div>
</footer>
<script src="js/jquery.min.js"></script>
<script src="js/plugins.js"></script>
<script src="js/SmoothScroll.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
<script src="js/script.min.js"></script>

<!-- 검색창 클릭시 순위 나오는 코드 -->
<!-- BODY 맨 끝에 넣기 -->
<script>
    document.addEventListener("DOMContentLoaded", () => {
        const keywords = [
            " ⭐ aespa 윈터", " ⭐ 장원영", " ⭐ 엔믹스 지우", " ⭐ 카리나", " ⭐ 정승혁",
            " ⭐ 안유진", " ⭐ 김채원", " ⭐ 아이유", " ⭐ 아이브 레이", " ⭐ 제니"
        ];

        const input = document.getElementById("searchInput");
        const box = document.getElementById("rankingBox");
        const list = document.getElementById("rankingList");

        function shuffle(array) {
            const copy = [...array];
            for (let i = copy.length - 1; i > 0; i--) {
                const j = Math.floor(Math.random() * (i + 1));
                [copy[i], copy[j]] = [copy[j], copy[i]];
            }
            return copy;
        }

        function renderRanking() {
            list.innerHTML = "";
            const top5 = shuffle(keywords).slice(0, 5);
            top5.forEach((keyword) => {
                const li = document.createElement("li");
                li.textContent = keyword;
                li.style.padding = "5px 0";
                list.appendChild(li);
            });
            box.style.display = "block";
        }

        input.addEventListener("focus", renderRanking);

        document.addEventListener("click", (e) => {
            const wrapper = document.querySelector(".search-wrapper");
            if (!wrapper.contains(e.target)) {
                box.style.display = "none";
            }
        });
    });
</script>






</body>

</html><%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    .search-ranking li {
        font-size: 16px;
        color: #444; /* 진한 회색: 너무 무겁지 않게 */
        padding: 6px 10px;
        transition: background-color 0.2s ease;
    }

    .search-ranking li:hover {
        background-color: #f9f9f9;
        color: #FF6B6B; /* 포인트 색상 */
        cursor: pointer;
    }

</style>


<!DOCTYPE html>
<html lang="en">

<head>
    <title>깔롱드 - Fashion Store</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="author" content="TemplatesJungle">
    <meta name="keywords" content="ecommerce,fashion,store">
    <meta name="description" content="Bootstrap 5 Fashion Store HTML CSS Template">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/vendor.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
    <link rel="stylesheet" type="text/css" href="style.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
            href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&family=Marcellus&display=swap"
            rel="stylesheet">
</head>

<body class="homepage">
<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
    <defs>
        <symbol xmlns="http://www.w3.org/2000/svg" id="instagram" viewBox="0 0 15 15">
            <path fill="none" stroke="currentColor"
                  d="M11 3.5h1M4.5.5h6a4 4 0 0 1 4 4v6a4 4 0 0 1-4 4h-6a4 4 0 0 1-4-4v-6a4 4 0 0 1 4-4Zm3 10a3 3 0 1 1 0-6a3 3 0 0 1 0 6Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="facebook" viewBox="0 0 15 15">
            <path fill="none" stroke="currentColor"
                  d="M7.5 14.5a7 7 0 1 1 0-14a7 7 0 0 1 0 14Zm0 0v-8a2 2 0 0 1 2-2h.5m-5 4h5" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="twitter" viewBox="0 0 15 15">
            <path fill="currentColor"
                  d="m14.478 1.5l.5-.033a.5.5 0 0 0-.871-.301l.371.334Zm-.498 2.959a.5.5 0 1 0-1 0h1Zm-6.49.082h-.5h.5Zm0 .959h.5h-.5Zm-6.99 7V12a.5.5 0 0 0-.278.916L.5 12.5Zm.998-11l.469-.175a.5.5 0 0 0-.916-.048l.447.223Zm3.994 9l.354.353a.5.5 0 0 0-.195-.827l-.159.474Zm7.224-8.027l-.37.336l.18.199l.265-.04l-.075-.495Zm1.264-.94c.051.778.003 1.25-.123 1.606c-.122.345-.336.629-.723 1l.692.722c.438-.42.776-.832.974-1.388c.193-.546.232-1.178.177-2.006l-.998.066Zm0 3.654V4.46h-1v.728h1Zm-6.99-.646V5.5h1v-.959h-1Zm0 .959V6h1v-.5h-1ZM10.525 1a3.539 3.539 0 0 0-3.537 3.541h1A2.539 2.539 0 0 1 10.526 2V1Zm2.454 4.187C12.98 9.503 9.487 13 5.18 13v1c4.86 0 8.8-3.946 8.8-8.813h-1ZM1.03 1.675C1.574 3.127 3.614 6 7.49 6V5C4.174 5 2.421 2.54 1.966 1.325l-.937.35Zm.021-.398C.004 3.373-.157 5.407.604 7.139c.759 1.727 2.392 3.055 4.73 3.835l.317-.948c-2.155-.72-3.518-1.892-4.132-3.29c-.612-1.393-.523-3.11.427-5.013l-.895-.446Zm4.087 8.87C4.536 10.75 2.726 12 .5 12v1c2.566 0 4.617-1.416 5.346-2.147l-.708-.706Zm7.949-8.009A3.445 3.445 0 0 0 10.526 1v1c.721 0 1.37.311 1.82.809l.74-.671Zm-.296.83a3.513 3.513 0 0 0 2.06-1.134l-.744-.668a2.514 2.514 0 0 1-1.466.813l.15.989ZM.222 12.916C1.863 14.01 3.583 14 5.18 14v-1c-1.63 0-3.048-.011-4.402-.916l-.556.832Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="pinterest" viewBox="0 0 15 15">
            <path fill="none" stroke="currentColor"
                  d="m4.5 13.5l3-7m-3.236 3a2.989 2.989 0 0 1-.764-2V7A3.5 3.5 0 0 1 7 3.5h1A3.5 3.5 0 0 1 11.5 7v.5a3 3 0 0 1-3 3a2.081 2.081 0 0 1-1.974-1.423L6.5 9m1 5.5a7 7 0 1 1 0-14a7 7 0 0 1 0 14Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="youtube" viewBox="0 0 15 15">
            <path fill="currentColor"
                  d="m1.61 12.738l-.104.489l.105-.489Zm11.78 0l.104.489l-.105-.489Zm0-10.476l.104-.489l-.105.489Zm-11.78 0l.106.489l-.105-.489ZM6.5 5.5l.277-.416A.5.5 0 0 0 6 5.5h.5Zm0 4H6a.5.5 0 0 0 .777.416L6.5 9.5Zm3-2l.277.416a.5.5 0 0 0 0-.832L9.5 7.5ZM0 3.636v7.728h1V3.636H0Zm15 7.728V3.636h-1v7.728h1ZM1.506 13.227c3.951.847 8.037.847 11.988 0l-.21-.978a27.605 27.605 0 0 1-11.568 0l-.21.978ZM13.494 1.773a28.606 28.606 0 0 0-11.988 0l.21.978a27.607 27.607 0 0 1 11.568 0l.21-.978ZM15 3.636c0-.898-.628-1.675-1.506-1.863l-.21.978c.418.09.716.458.716.885h1Zm-1 7.728a.905.905 0 0 1-.716.885l.21.978A1.905 1.905 0 0 0 15 11.364h-1Zm-14 0c0 .898.628 1.675 1.506 1.863l.21-.978A.905.905 0 0 1 1 11.364H0Zm1-7.728c0-.427.298-.796.716-.885l-.21-.978A1.905 1.905 0 0 0 0 3.636h1ZM6 5.5v4h1v-4H6Zm.777 4.416l3-2l-.554-.832l-3 2l.554.832Zm3-2.832l-3-2l-.554.832l3 2l.554-.832Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="dribble" viewBox="0 0 15 15">
            <path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                  d="M4.839 1.024c3.346 4.041 5.096 7.922 5.704 12.782M.533 6.82c5.985-.138 9.402-1.083 11.97-4.216M2.7 12.594c3.221-4.902 7.171-5.65 11.755-4.293M14.5 7.5a7 7 0 1 0-14 0a7 7 0 0 0 14 0Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="calendar" viewBox="0 0 24 24">
            <g fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2">
                <rect width="20" height="18" x="2" y="4" rx="4" />
                <path d="M8 2v4m8-4v4M2 10h20" />
            </g>
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="shopping-bag" viewBox="0 0 24 24">
            <g fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2">
                <path
                        d="M3.977 9.84A2 2 0 0 1 5.971 8h12.058a2 2 0 0 1 1.994 1.84l.803 10A2 2 0 0 1 18.833 22H5.167a2 2 0 0 1-1.993-2.16l.803-10Z" />
                <path d="M16 11V6a4 4 0 0 0-4-4v0a4 4 0 0 0-4 4v5" />
            </g>
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="gift" viewBox="0 0 24 24">
            <g fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2">
                <rect width="18" height="14" x="3" y="8" rx="2" />
                <path d="M12 5a3 3 0 1 0-3 3m6 0a3 3 0 1 0-3-3m0 0v17m9-7H3" />
            </g>
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="arrow-cycle" viewBox="0 0 24 24">
            <g fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2">
                <path
                        d="M22 12c0 6-4.39 10-9.806 10C7.792 22 4.24 19.665 3 16m-1-4C2 6 6.39 2 11.806 2C16.209 2 19.76 4.335 21 8" />
                <path d="m7 17l-4-1l-1 4M17 7l4 1l1-4" />
            </g>
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="link" viewBox="0 0 24 24">
            <path fill="currentColor"
                  d="M12 19a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm5 0a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm0-4a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm-5 0a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm7-12h-1V2a1 1 0 0 0-2 0v1H8V2a1 1 0 0 0-2 0v1H5a3 3 0 0 0-3 3v14a3 3 0 0 0 3 3h14a3 3 0 0 0 3-3V6a3 3 0 0 0-3-3Zm1 17a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-9h16Zm0-11H4V6a1 1 0 0 1 1-1h1v1a1 1 0 0 0 2 0V5h8v1a1 1 0 0 0 2 0V5h1a1 1 0 0 1 1 1ZM7 15a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm0 4a1 1 0 1 0-1-1a1 1 0 0 0 1 1Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="arrow-left" viewBox="0 0 24 24">
            <path fill="currentColor"
                  d="M17 11H9.41l3.3-3.29a1 1 0 1 0-1.42-1.42l-5 5a1 1 0 0 0-.21.33a1 1 0 0 0 0 .76a1 1 0 0 0 .21.33l5 5a1 1 0 0 0 1.42 0a1 1 0 0 0 0-1.42L9.41 13H17a1 1 0 0 0 0-2Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="arrow-right" viewBox="0 0 24 24">
            <path fill="currentColor"
                  d="M17.92 11.62a1 1 0 0 0-.21-.33l-5-5a1 1 0 0 0-1.42 1.42l3.3 3.29H7a1 1 0 0 0 0 2h7.59l-3.3 3.29a1 1 0 0 0 0 1.42a1 1 0 0 0 1.42 0l5-5a1 1 0 0 0 .21-.33a1 1 0 0 0 0-.76Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="play" viewBox="0 0 24 24">
            <g fill="none" fill-rule="evenodd">
                <path
                        d="M24 0v24H0V0h24ZM12.593 23.258l-.011.002l-.071.035l-.02.004l-.014-.004l-.071-.035c-.01-.004-.019-.001-.024.005l-.004.01l-.017.428l.005.02l.01.013l.104.074l.015.004l.012-.004l.104-.074l.012-.016l.004-.017l-.017-.427c-.002-.01-.009-.017-.017-.018Zm.265-.113l-.013.002l-.185.093l-.01.01l-.003.011l.018.43l.005.012l.008.007l.201.093c.012.004.023 0 .029-.008l.004-.014l-.034-.614c-.003-.012-.01-.02-.02-.022Zm-.715.002a.023.023 0 0 0-.027.006l-.006.014l-.034.614c0 .012.007.02.017.024l.015-.002l.201-.093l.01-.008l.004-.011l.017-.43l-.003-.012l-.01-.01l-.184-.092Z" />
                <path fill="currentColor"
                      d="M5.669 4.76a1.469 1.469 0 0 1 2.04-1.177c1.062.454 3.442 1.533 6.462 3.276c3.021 1.744 5.146 3.267 6.069 3.958c.788.591.79 1.763.001 2.356c-.914.687-3.013 2.19-6.07 3.956c-3.06 1.766-5.412 2.832-6.464 3.28c-.906.387-1.92-.2-2.038-1.177c-.138-1.142-.396-3.735-.396-7.237c0-3.5.257-6.092.396-7.235Z" />
            </g>
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="category" viewBox="0 0 24 24">
            <path fill="currentColor"
                  d="M19 5.5h-6.28l-.32-1a3 3 0 0 0-2.84-2H5a3 3 0 0 0-3 3v13a3 3 0 0 0 3 3h14a3 3 0 0 0 3-3v-10a3 3 0 0 0-3-3Zm1 13a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-13a1 1 0 0 1 1-1h4.56a1 1 0 0 1 .95.68l.54 1.64a1 1 0 0 0 .95.68h7a1 1 0 0 1 1 1Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="calendar" viewBox="0 0 24 24">
            <path fill="currentColor"
                  d="M19 4h-2V3a1 1 0 0 0-2 0v1H9V3a1 1 0 0 0-2 0v1H5a3 3 0 0 0-3 3v12a3 3 0 0 0 3 3h14a3 3 0 0 0 3-3V7a3 3 0 0 0-3-3Zm1 15a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-7h16Zm0-9H4V7a1 1 0 0 1 1-1h2v1a1 1 0 0 0 2 0V6h6v1a1 1 0 0 0 2 0V6h2a1 1 0 0 1 1 1Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="heart" viewBox="0 0 24 24">
            <path fill="currentColor"
                  d="M20.16 4.61A6.27 6.27 0 0 0 12 4a6.27 6.27 0 0 0-8.16 9.48l7.45 7.45a1 1 0 0 0 1.42 0l7.45-7.45a6.27 6.27 0 0 0 0-8.87Zm-1.41 7.46L12 18.81l-6.75-6.74a4.28 4.28 0 0 1 3-7.3a4.25 4.25 0 0 1 3 1.25a1 1 0 0 0 1.42 0a4.27 4.27 0 0 1 6 6.05Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="plus" viewBox="0 0 24 24">
            <path fill="currentColor"
                  d="M19 11h-6V5a1 1 0 0 0-2 0v6H5a1 1 0 0 0 0 2h6v6a1 1 0 0 0 2 0v-6h6a1 1 0 0 0 0-2Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="minus" viewBox="0 0 24 24">
            <path fill="currentColor" d="M19 11H5a1 1 0 0 0 0 2h14a1 1 0 0 0 0-2Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="cart" viewBox="0 0 24 24">
            <path fill="currentColor"
                  d="M8.5 19a1.5 1.5 0 1 0 1.5 1.5A1.5 1.5 0 0 0 8.5 19ZM19 16H7a1 1 0 0 1 0-2h8.491a3.013 3.013 0 0 0 2.885-2.176l1.585-5.55A1 1 0 0 0 19 5H6.74a3.007 3.007 0 0 0-2.82-2H3a1 1 0 0 0 0 2h.921a1.005 1.005 0 0 1 .962.725l.155.545v.005l1.641 5.742A3 3 0 0 0 7 18h12a1 1 0 0 0 0-2Zm-1.326-9l-1.22 4.274a1.005 1.005 0 0 1-.963.726H8.754l-.255-.892L7.326 7ZM16.5 19a1.5 1.5 0 1 0 1.5 1.5a1.5 1.5 0 0 0-1.5-1.5Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="check" viewBox="0 0 24 24">
            <path fill="currentColor"
                  d="M18.71 7.21a1 1 0 0 0-1.42 0l-7.45 7.46l-3.13-3.14A1 1 0 1 0 5.29 13l3.84 3.84a1 1 0 0 0 1.42 0l8.16-8.16a1 1 0 0 0 0-1.47Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="trash" viewBox="0 0 24 24">
            <path fill="currentColor"
                  d="M10 18a1 1 0 0 0 1-1v-6a1 1 0 0 0-2 0v6a1 1 0 0 0 1 1ZM20 6h-4V5a3 3 0 0 0-3-3h-2a3 3 0 0 0-3 3v1H4a1 1 0 0 0 0 2h1v11a3 3 0 0 0 3 3h8a3 3 0 0 0 3-3V8h1a1 1 0 0 0 0-2ZM10 5a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v1h-4Zm7 14a1 1 0 0 1-1 1H8a1 1 0 0 1-1-1V8h10Zm-3-1a1 1 0 0 0 1-1v-6a1 1 0 0 0-2 0v6a1 1 0 0 0 1 1Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="star-outline" viewBox="0 0 15 15">
            <path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                  d="M7.5 9.804L5.337 11l.413-2.533L4 6.674l2.418-.37L7.5 4l1.082 2.304l2.418.37l-1.75 1.793L9.663 11L7.5 9.804Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="star-solid" viewBox="0 0 15 15">
            <path fill="currentColor"
                  d="M7.953 3.788a.5.5 0 0 0-.906 0L6.08 5.85l-2.154.33a.5.5 0 0 0-.283.843l1.574 1.613l-.373 2.284a.5.5 0 0 0 .736.518l1.92-1.063l1.921 1.063a.5.5 0 0 0 .736-.519l-.373-2.283l1.574-1.613a.5.5 0 0 0-.283-.844L8.921 5.85l-.968-2.062Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="search" viewBox="0 0 24 24">
            <path fill="currentColor"
                  d="M21.71 20.29L18 16.61A9 9 0 1 0 16.61 18l3.68 3.68a1 1 0 0 0 1.42 0a1 1 0 0 0 0-1.39ZM11 18a7 7 0 1 1 7-7a7 7 0 0 1-7 7Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="user" viewBox="0 0 24 24">
            <path fill="currentColor"
                  d="M15.71 12.71a6 6 0 1 0-7.42 0a10 10 0 0 0-6.22 8.18a1 1 0 0 0 2 .22a8 8 0 0 1 15.9 0a1 1 0 0 0 1 .89h.11a1 1 0 0 0 .88-1.1a10 10 0 0 0-6.25-8.19ZM12 12a4 4 0 1 1 4-4a4 4 0 0 1-4 4Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="close" viewBox="0 0 15 15">
            <path fill="currentColor"
                  d="M7.953 3.788a.5.5 0 0 0-.906 0L6.08 5.85l-2.154.33a.5.5 0 0 0-.283.843l1.574 1.613l-.373 2.284a.5.5 0 0 0 .736.518l1.92-1.063l1.921 1.063a.5.5 0 0 0 .736-.519l-.373-2.283l1.574-1.613a.5.5 0 0 0-.283-.844L8.921 5.85l-.968-2.062Z" />
        </symbol>
    </defs>
</svg>

<div class="preloader text-white fs-6 text-uppercase overflow-hidden"></div>

<!-- 검색 폼과 랭킹 박스를 감싸는 래퍼 -->
<div class="search-wrapper" style="position: relative;">
    <form role="search" method="get" class="form-group" action="">
        <input type="search" id="searchInput" class="form-control border-0 border-bottom"
               placeholder="Type and press enter" value="" name="s" />
        <button type="submit" class="search-submit border-0 position-absolute bg-white"
                style="top: 6px; right: 10px;">
            <svg class="search" width="24" height="24">
                <use xlink:href="#search"></use>
            </svg>
        </button>
    </form>

    <!-- 인기 검색어 박스 -->
    <div id="rankingBox"
         style="display: none; position: absolute; top: 100%; left: 0; background: white; width: 100%; border: 1px solid #ccc; z-index: 999;">
        <div style="font-weight: bold; padding: 10px 10px 0 10px; color: #FF7F7F;">인기 검색어</div>
        <ul id="rankingList" style="list-style: none; padding: 10px; margin: 0;"></ul>
    </div>
</div>




<div class="offcanvas offcanvas-end" data-bs-scroll="true" tabindex="-1" id="offcanvasCart" aria-labelledby="My Cart">
    <div class="offcanvas-header justify-content-center">
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <div class="order-md-last">
            <h4 class="d-flex justify-content-between align-items-center mb-3">
                <span class="text-primary">Your cart</span>
                <span class="badge bg-primary rounded-pill">3</span>
            </h4>
            <ul class="list-group mb-3">
                <li class="list-group-item d-flex justify-content-between lh-sm">
                    <div>
                        <h6 class="my-0">Growers cider</h6>
                        <small class="text-body-secondary">Brief description</small>
                    </div>
                    <span class="text-body-secondary">$12</span>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-sm">
                    <div>
                        <h6 class="my-0">Fresh grapes</h6>
                        <small class="text-body-secondary">Brief description</small>
                    </div>
                    <span class="text-body-secondary">$8</span>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-sm">
                    <div>
                        <h6 class="my-0">Heinz tomato ketchup</h6>
                        <small class="text-body-secondary">Brief description</small>
                    </div>
                    <span class="text-body-secondary">$5</span>
                </li>
                <li class="list-group-item d-flex justify-content-between">
                    <span>Total (USD)</span>
                    <strong>$20</strong>
                </li>
            </ul>

            <button class="w-100 btn btn-primary btn-lg" type="submit">Continue to Checkout</button>
        </div>
    </div>
</div>

<!-- 여기부터는 상단 목록들 -->
<nav class="navbar navbar-expand-lg bg-light text-uppercase fs-6 p-3 border-bottom align-items-center">
    <div class="container-fluid">
        <div class="row justify-content-between align-items-center w-100">

            <div class="col-auto">
                <span class="navbar-brand" style="
                font-size: 32px;
                font-weight: bold;
                background: linear-gradient(90deg, #FF6B6B, #FFA63D);
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;">
                깔롱드
                </span>
            </div>



            <div class="col-auto">
                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar"
                        aria-controls="offcanvasNavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar"
                     aria-labelledby="offcanvasNavbarLabel">
                    <div class="offcanvas-header">
                        <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Menu</h5>
                        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas"
                                aria-label="Close"></button>
                    </div>

                    <div class="offcanvas-body">
                        <ul class="navbar-nav justify-content-end flex-grow-1 gap-1 gap-md-5 pe-3">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle active" href="#" id="dropdownHome" data-bs-toggle="dropdown"
                                   aria-haspopup="true" aria-expanded="false">Home</a>
                                <ul class="dropdown-menu list-unstyled" aria-labelledby="dropdownHome">
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Home Layout 1</a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Home Layout 2 </a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Home Layout 3 </a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Home Layout 4 </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="dropdownShop" data-bs-toggle="dropdown"
                                   aria-haspopup="true" aria-expanded="false">Shop</a>
                                <ul class="dropdown-menu list-unstyled" aria-labelledby="dropdownShop">
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Shop Sidebar </a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Shop Three Column </a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Shop Three Column Wide </a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Shop Four Column </a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Shop Four Column Wide </a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Shop Six Column </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="dropdownBlog" data-bs-toggle="dropdown"
                                   aria-haspopup="true" aria-expanded="false">Blog</a>
                                <ul class="dropdown-menu list-unstyled" aria-labelledby="dropdownBlog">
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Blog Classic </a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Blog Grid with Sidebar </a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Blog Grid Four Column </a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Blog No Sidebar </a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Blog Right Sidebar </a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Single Post </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="dropdownPages" data-bs-toggle="dropdown"
                                   aria-haspopup="true" aria-expanded="false">Pages</a>
                                <ul class="dropdown-menu list-unstyled" aria-labelledby="dropdownPages">
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">About </a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Cart </a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Checkout </a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Coming Soon </a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Contact </a>
                                    </li>
                                    <li>
                                        <a href="index.html" class="dropdown-item item-anchor">Error Page </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Blog</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Contact</a>
                            </li>

                            <!-- 상단 목록 로그인, 카트, 위시 리스트 -->
                            <div class="col-3 col-lg-auto">
                                <ul class="list-unstyled d-flex m-0 align-items-center">
                                    <li class="nav-link">
                                        <a href="index.html" class="d-flex align-items-center text-uppercase mx-1"
                                           style="font-size: 20px; line-height: 1;">
                                            WISHLIST <span class="wishlist-count ms-1">(0)</span>
                                        </a>
                                    </li>
                                    <li class="d-inline-block">
                                        <a href="index.html" class="d-flex align-items-center text-uppercase mx-2" data-bs-toggle="offcanvas"
                                           data-bs-target="#offcanvasCart" aria-controls="offcanvasCart"
                                           style="font-size: 20px; line-height: 1;">
                                            CART <span class="cart-count ms-1">(0)</span>
                                        </a>
                                    </li>
                                    <li class="d-inline-block">
                                        <a href="/login" class="nav-login d-flex align-items-center text-uppercase mx-3 fw-bold"
                                           style="font-size: 20px; line-height: 1;">
                                            LOGIN
                                        </a>
                                    </li>
                                </ul>
                            </div>

                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</nav>

<section id="billboard" class="bg-light py-5">
    <div class="container">
        <div class="row justify-content-center">
            <h1 class="section-title text-center mt-4" data-aos="fade-up">STYLE FEED</h1>
            <div class="col-md-6 text-center" data-aos="fade-up" data-aos-delay="300">
                <p>스타가 입으면, 나도 궁금해진다. 방송 속 그 옷, 지금 여기서 바로 확인해요!
                    연예인 착용 아이템 실시간 업데이트, 패션 따라잡기 더 이상 어렵지 않아요.</p>
            </div>
        </div>
        <div class="row">
            <div class="swiper main-swiper py-4" data-aos="fade-up" data-aos-delay="600">
                <div class="swiper-wrapper d-flex border-animation-left">
                    <div class="swiper-slide">
                        <div class="banner-item image-zoom-effect">
                            <div class="image-holder">
                                <a href="#">
                                    <img src="image/banner-image-6.jpg" alt="product" class="img-fluid">
                                </a>
                            </div>
                            <div class="banner-content py-4">
                                <h5 class="element-title text-uppercase">
                                    <a href="index.html" class="item-anchor">Soft leather jackets</a>
                                </h5>
                                <p>Scelerisque duis aliquam qui lorem ipsum dolor amet, consectetur adipiscing elit.</p>
                                <div class="btn-left">
                                    <a href="#" class="btn-link fs-6 text-uppercase item-anchor text-decoration-none">Discover Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="banner-item image-zoom-effect">
                            <div class="image-holder">
                                <a href="#">
                                    <img src="image/banner-image-1.jpg" alt="product" class="img-fluid">
                                </a>
                            </div>
                            <div class="banner-content py-4">
                                <h5 class="element-title text-uppercase">
                                    <a href="index.html" class="item-anchor">Soft leather jackets</a>
                                </h5>
                                <p>Scelerisque duis aliquam qui lorem ipsum dolor amet, consectetur adipiscing elit.</p>
                                <div class="btn-left">
                                    <a href="#" class="btn-link fs-6 text-uppercase item-anchor text-decoration-none">Discover Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="banner-item image-zoom-effect">
                            <div class="image-holder">
                                <a href="#">
                                    <img src="image/banner-image-2.jpg" alt="product" class="img-fluid">
                                </a>
                            </div>
                            <div class="banner-content py-4">
                                <h5 class="element-title text-uppercase">
                                    <a href="index.html" class="item-anchor">Soft leather jackets</a>
                                </h5>
                                <p>Scelerisque duis aliquam qui lorem ipsum dolor amet, consectetur adipiscing elit.</p>
                                <div class="btn-left">
                                    <a href="#" class="btn-link fs-6 text-uppercase item-anchor text-decoration-none">Discover Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="banner-item image-zoom-effect">
                            <div class="image-holder">
                                <a href="#">
                                    <img src="image/banner-image-3.jpg" alt="product" class="img-fluid">
                                </a>
                            </div>
                            <div class="banner-content py-4">
                                <h5 class="element-title text-uppercase">
                                    <a href="index.html" class="item-anchor">Soft leather jackets</a>
                                </h5>
                                <p>Scelerisque duis aliquam qui lorem ipsum dolor amet, consectetur adipiscing elit.</p>
                                <div class="btn-left">
                                    <a href="#" class="btn-link fs-6 text-uppercase item-anchor text-decoration-none">Discover Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="banner-item image-zoom-effect">
                            <div class="image-holder">
                                <a href="#">
                                    <img src="image/banner-image-4.jpg" alt="product" class="img-fluid">
                                </a>
                            </div>
                            <div class="banner-content py-4">
                                <h5 class="element-title text-uppercase">
                                    <a href="index.html" class="item-anchor">Out crop sweater</a>
                                </h5>
                                <p>Scelerisque duis aliquam qui lorem ipsum dolor amet, consectetur adipiscing elit.</p>
                                <div class="btn-left">
                                    <a href="#" class="btn-link fs-6 text-uppercase item-anchor text-decoration-none">Discover Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="banner-item image-zoom-effect">
                            <div class="image-holder">
                                <a href="#">
                                    <img src="image/banner-image-5.jpg" alt="product" class="img-fluid">
                                </a>
                            </div>
                            <div class="banner-content py-4">
                                <h5 class="element-title text-uppercase">
                                    <a href="index.html" class="item-anchor">Soft leather jackets</a>
                                </h5>
                                <p>Scelerisque duis aliquam qui lorem ipsum dolor amet, consectetur adipiscing elit.</p>
                                <div class="btn-left">
                                    <a href="#" class="btn-link fs-6 text-uppercase item-anchor text-decoration-none">Discover Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <div class="icon-arrow icon-arrow-left"><svg width="50" height="50" viewBox="0 0 24 24">
                <use xlink:href="#arrow-left"></use>
            </svg></div>
            <div class="icon-arrow icon-arrow-right"><svg width="50" height="50" viewBox="0 0 24 24">
                <use xlink:href="#arrow-right"></use>
            </svg></div>
        </div>
    </div>
</section>

<section class="features py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-3 text-center" data-aos="fade-in" data-aos-delay="0">
                <div class="py-5">
                    <svg width="38" height="38" viewBox="0 0 24 24">
                        <use xlink:href="#calendar"></use>
                    </svg>
                    <h4 class="element-title text-capitalize my-3">Book An Appointment</h4>
                    <p>At imperdiet dui accumsan sit amet nulla risus est ultricies quis.</p>
                </div>
            </div>
            <div class="col-md-3 text-center" data-aos="fade-in" data-aos-delay="300">
                <div class="py-5">
                    <svg width="38" height="38" viewBox="0 0 24 24">
                        <use xlink:href="#shopping-bag"></use>
                    </svg>
                    <h4 class="element-title text-capitalize my-3">Pick up in store</h4>
                    <p>At imperdiet dui accumsan sit amet nulla risus est ultricies quis.</p>
                </div>
            </div>
            <div class="col-md-3 text-center" data-aos="fade-in" data-aos-delay="600">
                <div class="py-5">
                    <svg width="38" height="38" viewBox="0 0 24 24">
                        <use xlink:href="#gift"></use>
                    </svg>
                    <h4 class="element-title text-capitalize my-3">Special packaging</h4>
                    <p>At imperdiet dui accumsan sit amet nulla risus est ultricies quis.</p>
                </div>
            </div>
            <div class="col-md-3 text-center" data-aos="fade-in" data-aos-delay="900">
                <div class="py-5">
                    <svg width="38" height="38" viewBox="0 0 24 24">
                        <use xlink:href="#arrow-cycle"></use>
                    </svg>
                    <h4 class="element-title text-capitalize my-3">free global returns</h4>
                    <p>At imperdiet dui accumsan sit amet nulla risus est ultricies quis.</p>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="categories overflow-hidden">
    <div class="container">
        <div class="open-up" data-aos="zoom-out">
            <div class="row">
                <div class="col-md-4">
                    <div class="cat-item image-zoom-effect">
                        <div class="image-holder">
                            <a href="index.html">
                                <img src="image/cat-item1.jpg" alt="categories" class="product-image img-fluid">
                            </a>
                        </div>
                        <div class="category-content">
                            <div class="product-button">
                                <a href="index.html" class="btn btn-common text-uppercase">Shop for men</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="cat-item image-zoom-effect">
                        <div class="image-holder">
                            <a href="index.html">
                                <img src="image/cat-item2.jpg" alt="categories" class="product-image img-fluid">
                            </a>
                        </div>
                        <div class="category-content">
                            <div class="product-button">
                                <a href="index.html" class="btn btn-common text-uppercase">Shop for women</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="cat-item image-zoom-effect">
                        <div class="image-holder">
                            <a href="index.html">
                                <img src="image/cat-item3.jpg" alt="categories" class="product-image img-fluid">
                            </a>
                        </div>
                        <div class="category-content">
                            <div class="product-button">
                                <a href="index.html" class="btn btn-common text-uppercase">Shop accessories</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="new-arrival" class="new-arrival product-carousel py-5 position-relative overflow-hidden">
    <div class="container">
        <div class="d-flex flex-wrap justify-content-between align-items-center mt-5 mb-3">
            <h4 class="text-uppercase">Our New Arrivals</h4>
            <a href="index.html" class="btn-link">View All Products</a>
        </div>
        <div class="swiper product-swiper open-up" data-aos="zoom-out">
            <div class="swiper-wrapper d-flex">
                <div class="swiper-slide">
                    <div class="product-item image-zoom-effect link-effect">
                        <div class="image-holder position-relative">
                            <a href="index.html">
                                <img src="image/product-item-1.jpg" alt="categories" class="product-image img-fluid">
                            </a>
                            <a href="index.html" class="btn-icon btn-wishlist">
                                <svg width="24" height="24" viewBox="0 0 24 24">
                                    <use xlink:href="#heart"></use>
                                </svg>
                            </a>
                            <div class="product-content">
                                <h5 class="element-title text-uppercase fs-5 mt-3">
                                    <a href="index.html">Dark florish onepiece</a>
                                </h5>
                                <a href="#" class="text-decoration-none" data-after="Add to cart"><span>$95.00</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="product-item image-zoom-effect link-effect">
                        <div class="image-holder position-relative">
                            <a href="index.html">
                                <img src="image/product-item-2.jpg" alt="categories" class="product-image img-fluid">
                            </a>
                            <a href="index.html" class="btn-icon btn-wishlist">
                                <svg width="24" height="24" viewBox="0 0 24 24">
                                    <use xlink:href="#heart"></use>
                                </svg>
                            </a>
                            <div class="product-content">
                                <h5 class="text-uppercase fs-5 mt-3">
                                    <a href="index.html">Baggy Shirt</a>
                                </h5>
                                <a href="#" class="text-decoration-none" data-after="Add to cart"><span>$55.00</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="product-item image-zoom-effect link-effect">
                        <div class="image-holder position-relative">
                            <a href="index.html">
                                <img src="image/product-item-3.jpg" alt="categories" class="product-image img-fluid">
                            </a>
                            <a href="index.html" class="btn-icon btn-wishlist">
                                <svg width="24" height="24" viewBox="0 0 24 24">
                                    <use xlink:href="#heart"></use>
                                </svg>
                            </a>
                            <div class="product-content">
                                <h5 class="text-uppercase fs-5 mt-3">
                                    <a href="index.html">Cotton off-white shirt</a>
                                </h5>
                                <a href="#" class="text-decoration-none" data-after="Add to cart"><span>$65.00</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="product-item image-zoom-effect link-effect">
                        <div class="image-holder position-relative">
                            <a href="index.html">
                                <img src="image/product-item-4.jpg" alt="categories" class="product-image img-fluid">
                            </a>
                            <a href="index.html" class="btn-icon btn-wishlist">
                                <svg width="24" height="24" viewBox="0 0 24 24">
                                    <use xlink:href="#heart"></use>
                                </svg>
                            </a>
                            <div class="product-content">
                                <h5 class="text-uppercase fs-5 mt-3">
                                    <a href="index.html">Crop sweater</a>
                                </h5>
                                <a href="#" class="text-decoration-none" data-after="Add to cart"><span>$50.00</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="product-item image-zoom-effect link-effect">
                        <div class="image-holder position-relative">
                            <a href="index.html">
                                <img src="image/product-item-10.jpg" alt="categories" class="product-image img-fluid">
                            </a>
                            <a href="index.html" class="btn-icon btn-wishlist">
                                <svg width="24" height="24" viewBox="0 0 24 24">
                                    <use xlink:href="#heart"></use>
                                </svg>
                            </a>
                            <div class="product-content">
                                <h5 class="text-uppercase fs-5 mt-3">
                                    <a href="index.html">Crop sweater</a>
                                </h5>
                                <a href="#" class="text-decoration-none" data-after="Add to cart"><span>$70.00</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="swiper-pagination"></div>
        </div>
        <div class="icon-arrow icon-arrow-left"><svg width="50" height="50" viewBox="0 0 24 24">
            <use xlink:href="#arrow-left"></use>
        </svg></div>
        <div class="icon-arrow icon-arrow-right"><svg width="50" height="50" viewBox="0 0 24 24">
            <use xlink:href="#arrow-right"></use>
        </svg></div>
    </div>
</section>

<section class="collection bg-light position-relative py-5">
    <div class="container">
        <div class="row">
            <div class="title-xlarge text-uppercase txt-fx domino">Collection</div>
            <div class="collection-item d-flex flex-wrap my-5">
                <div class="col-md-6 column-container">
                    <div class="image-holder">
                        <img src="image/single-image-2.jpg" alt="collection" class="product-image img-fluid">
                    </div>
                </div>
                <div class="col-md-6 column-container bg-white">
                    <div class="collection-content p-5 m-0 m-md-5">
                        <h3 class="element-title text-uppercase">Classic winter collection</h3>
                        <p>Dignissim lacus, turpis ut suspendisse vel tellus. Turpis purus, gravida orci, fringilla a. Ac sed eu
                            fringilla odio mi. Consequat pharetra at magna imperdiet cursus ac faucibus sit libero. Ultricies quam
                            nunc, lorem sit lorem urna, pretium aliquam ut. In vel, quis donec dolor id in. Pulvinar commodo mollis
                            diam sed facilisis at cursus imperdiet cursus ac faucibus sit faucibus sit libero.</p>
                        <a href="#" class="btn btn-dark text-uppercase mt-3">Shop Collection</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="best-sellers" class="best-sellers product-carousel py-5 position-relative overflow-hidden">
    <div class="container">
        <div class="d-flex flex-wrap justify-content-between align-items-center mt-5 mb-3">
            <h4 class="text-uppercase">Best Selling Items</h4>
            <a href="index.html" class="btn-link">View All Products</a>
        </div>
        <div class="swiper product-swiper open-up" data-aos="zoom-out">
            <div class="swiper-wrapper d-flex">
                <div class="swiper-slide">
                    <div class="product-item image-zoom-effect link-effect">
                        <div class="image-holder">
                            <a href="index.html">
                                <img src="image/product-item-4.jpg" alt="categories" class="product-image img-fluid">
                            </a>
                            <a href="index.html" class="btn-icon btn-wishlist">
                                <svg width="24" height="24" viewBox="0 0 24 24">
                                    <use xlink:href="#heart"></use>
                                </svg>
                            </a>
                            <div class="product-content">
                                <h5 class="text-uppercase fs-5 mt-3">
                                    <a href="index.html">Dark florish onepiece</a>
                                </h5>
                                <a href="index.html" class="text-decoration-none" data-after="Add to cart"><span>$95.00</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="product-item image-zoom-effect link-effect">
                        <div class="image-holder">
                            <a href="index.html">
                                <img src="image/product-item-3.jpg" alt="product" class="product-image img-fluid">
                            </a>
                            <a href="index.html" class="btn-icon btn-wishlist">
                                <svg width="24" height="24" viewBox="0 0 24 24">
                                    <use xlink:href="#heart"></use>
                                </svg>
                            </a>
                            <div class="product-content">
                                <h5 class="text-uppercase fs-5 mt-3">
                                    <a href="index.html">Baggy Shirt</a>
                                </h5>
                                <a href="index.html" class="text-decoration-none" data-after="Add to cart"><span>$55.00</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="product-item image-zoom-effect link-effect">
                        <div class="image-holder">
                            <a href="index.html">
                                <img src="image/product-item-5.jpg" alt="categories" class="product-image img-fluid">
                            </a>
                            <a href="index.html" class="btn-icon btn-wishlist">
                                <svg width="24" height="24" viewBox="0 0 24 24">
                                    <use xlink:href="#heart"></use>
                                </svg>
                            </a>
                            <div class="product-content">
                                <h5 class="text-uppercase fs-5 mt-3">
                                    <a href="index.html">Cotton off-white shirt</a>
                                </h5>
                                <a href="index.html" class="text-decoration-none" data-after="Add to cart"><span>$65.00</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="product-item image-zoom-effect link-effect">
                        <div class="image-holder">
                            <a href="index.html">
                                <img src="image/product-item-6.jpg" alt="categories" class="product-image img-fluid">
                            </a>
                            <a href="index.html" class="btn-icon btn-wishlist">
                                <svg width="24" height="24" viewBox="0 0 24 24">
                                    <use xlink:href="#heart"></use>
                                </svg>
                            </a>
                            <div class="product-content">
                                <h5 class="text-uppercase fs-5 mt-3">
                                    <a href="index.html">Handmade crop sweater</a>
                                </h5>
                                <a href="index.html" class="text-decoration-none" data-after="Add to cart"><span>$50.00</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="product-item image-zoom-effect link-effect">
                        <div class="image-holder">
                            <a href="index.html">
                                <img src="image/product-item-9.jpg" alt="categories" class="product-image img-fluid">
                            </a>
                            <a href="index.html" class="btn-icon btn-wishlist">
                                <svg width="24" height="24" viewBox="0 0 24 24">
                                    <use xlink:href="#heart"></use>
                                </svg>
                            </a>
                            <div class="product-content">
                                <h5 class="text-uppercase fs-5 mt-3">
                                    <a href="index.html">Dark florish onepiece</a>
                                </h5>
                                <a href="index.html" class="text-decoration-none" data-after="Add to cart"><span>$70.00</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="product-item image-zoom-effect link-effect">
                        <div class="image-holder">
                            <a href="index.html">
                                <img src="image/product-item-10.jpg" alt="categories" class="product-image img-fluid">
                            </a>
                            <a href="index.html" class="btn-icon btn-wishlist">
                                <svg width="24" height="24" viewBox="0 0 24 24">
                                    <use xlink:href="#heart"></use>
                                </svg>
                            </a>
                            <div class="product-content">
                                <h5 class="text-uppercase fs-5 mt-3">
                                    <a href="index.html">Cotton off-white shirt</a>
                                </h5>
                                <a href="index.html" class="text-decoration-none" data-after="Add to cart"><span>$70.00</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="swiper-pagination"></div>
        </div>
        <div class="icon-arrow icon-arrow-left"><svg width="50" height="50" viewBox="0 0 24 24">
            <use xlink:href="#arrow-left"></use>
        </svg></div>
        <div class="icon-arrow icon-arrow-right"><svg width="50" height="50" viewBox="0 0 24 24">
            <use xlink:href="#arrow-right"></use>
        </svg></div>
    </div>
</section>

<section class="video py-5 overflow-hidden">
    <div class="container-fluid">
        <div class="row">
            <div class="video-content open-up" data-aos="zoom-out">
                <div class="video-bg">
                    <img src="image/video-image.jpg" alt="video" class="video-image img-fluid">
                </div>
                <div class="video-player">
                    <a class="youtube" href="https://www.youtube.com/embed/pjtsGzQjFM4">
                        <svg width="24" height="24" viewBox="0 0 24 24">
                            <use xlink:href="#play"></use>
                        </svg>
                        <img src="image/text-pattern.png" alt="pattern" class="text-rotate">
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="testimonials py-5 bg-light">
    <div class="section-header text-center mt-5">
        <h3 class="section-title">WE LOVE GOOD COMPLIMENT</h3>
    </div>
    <div class="swiper testimonial-swiper overflow-hidden my-5">
        <div class="swiper-wrapper d-flex">
            <div class="swiper-slide">
                <div class="testimonial-item text-center">
                    <blockquote>
                        <p>“More than expected crazy soft, flexible and best fitted white simple denim shirt.”</p>
                        <div class="review-title text-uppercase">casual way</div>
                    </blockquote>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="testimonial-item text-center">
                    <blockquote>
                        <p>“Best fitted white denim shirt more than expected crazy soft, flexible</p>
                        <div class="review-title text-uppercase">uptop</div>
                    </blockquote>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="testimonial-item text-center">
                    <blockquote>
                        <p>“Best fitted white denim shirt more white denim than expected flexible crazy soft.”</p>
                        <div class="review-title text-uppercase">Denim craze</div>
                    </blockquote>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="testimonial-item text-center">
                    <blockquote>
                        <p>“Best fitted white denim shirt more than expected crazy soft, flexible</p>
                        <div class="review-title text-uppercase">uptop</div>
                    </blockquote>
                </div>
            </div>
        </div>
    </div>
    <div class="testimonial-swiper-pagination d-flex justify-content-center mb-5"></div>
</section>

<section id="related-products" class="related-products product-carousel py-5 position-relative overflow-hidden">
    <div class="container">
        <div class="d-flex flex-wrap justify-content-between align-items-center mt-5 mb-3">
            <h4 class="text-uppercase">You May Also Like</h4>
            <a href="index.html" class="btn-link">View All Products</a>
        </div>
        <div class="swiper product-swiper open-up" data-aos="zoom-out">
            <div class="swiper-wrapper d-flex">
                <div class="swiper-slide">
                    <div class="product-item image-zoom-effect link-effect">
                        <div class="image-holder">
                            <a href="index.html">
                                <img src="image/product-item-5.jpg" alt="product" class="product-image img-fluid">
                            </a>
                            <a href="index.html" class="btn-icon btn-wishlist">
                                <svg width="24" height="24" viewBox="0 0 24 24">
                                    <use xlink:href="#heart"></use>
                                </svg>
                            </a>
                            <div class="product-content">
                                <h5 class="text-uppercase fs-5 mt-3">
                                    <a href="index.html">Dark florish onepiece</a>
                                </h5>
                                <a href="index.html" class="text-decoration-none" data-after="Add to cart"><span>$95.00</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="product-item image-zoom-effect link-effect">
                        <div class="image-holder">
                            <a href="index.html">
                                <img src="image/product-item-6.jpg" alt="product" class="product-image img-fluid">
                            </a>
                            <a href="index.html" class="btn-icon btn-wishlist">
                                <svg width="24" height="24" viewBox="0 0 24 24">
                                    <use xlink:href="#heart"></use>
                                </svg>
                            </a>
                            <div class="product-content">
                                <h5 class="text-uppercase fs-5 mt-3">
                                    <a href="index.html">Baggy Shirt</a>
                                </h5>
                                <a href="index.html" class="text-decoration-none" data-after="Add to cart"><span>$55.00</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="product-item image-zoom-effect link-effect">
                        <div class="image-holder">
                            <a href="index.html">
                                <img src="image/product-item-7.jpg" alt="product" class="product-image img-fluid">
                            </a>
                            <a href="index.html" class="btn-icon btn-wishlist">
                                <svg width="24" height="24" viewBox="0 0 24 24">
                                    <use xlink:href="#heart"></use>
                                </svg>
                            </a>
                            <div class="product-content">
                                <h5 class="text-uppercase fs-5 mt-3">
                                    <a href="index.html">Cotton off-white shirt</a>
                                </h5>
                                <a href="index.html" class="text-decoration-none" data-after="Add to cart"><span>$65.00</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="product-item image-zoom-effect link-effect">
                        <div class="image-holder">
                            <a href="index.html">
                                <img src="images/product-item-8.jpg" alt="product" class="product-image img-fluid">
                            </a>
                            <a href="index.html" class="btn-icon btn-wishlist">
                                <svg width="24" height="24" viewBox="0 0 24 24">
                                    <use xlink:href="#heart"></use>
                                </svg>
                            </a>
                            <div class="product-content">
                                <h5 class="text-uppercase fs-5 mt-3">
                                    <a href="index.html">Handmade crop sweater</a>
                                </h5>
                                <a href="index.html" class="text-decoration-none" data-after="Add to cart"><span>$50.00</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="product-item image-zoom-effect link-effect">
                        <div class="image-holder">
                            <a href="index.html">
                                <img src="image/product-item-1.jpg" alt="product" class="product-image img-fluid">
                            </a>
                            <a href="index.html" class="btn-icon btn-wishlist">
                                <svg width="24" height="24" viewBox="0 0 24 24">
                                    <use xlink:href="#heart"></use>
                                </svg>
                            </a>
                            <div class="product-content">
                                <h5 class="text-uppercase fs-5 mt-3">
                                    <a href="index.html">Handmade crop sweater</a>
                                </h5>
                                <a href="index.html" class="text-decoration-none" data-after="Add to cart"><span>$70.00</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="swiper-pagination"></div>
        </div>
        <div class="icon-arrow icon-arrow-left"><svg width="50" height="50" viewBox="0 0 24 24">
            <use xlink:href="#arrow-left"></use>
        </svg></div>
        <div class="icon-arrow icon-arrow-right"><svg width="50" height="50" viewBox="0 0 24 24">
            <use xlink:href="#arrow-right"></use>
        </svg></div>
    </div>
</section>

<section class="blog py-5">
    <div class="container">
        <div class="d-flex flex-wrap justify-content-between align-items-center mt-5 mb-3">
            <h4 class="text-uppercase">Read Blog Posts</h4>
            <a href="index.html" class="btn-link">View All</a>
        </div>
        <div class="row">
            <div class="col-md-4">
                <article class="post-item">
                    <div class="post-image">
                        <a href="index.html">
                            <img src="image/post-image1.jpg" alt="image" class="post-grid-image img-fluid">
                        </a>
                    </div>
                    <div class="post-content d-flex flex-wrap gap-2 my-3">
                        <div class="post-meta text-uppercase fs-6 text-secondary">
                            <span class="post-category">Fashion /</span>
                            <span class="meta-day"> jul 11, 2022</span>
                        </div>
                        <h5 class="post-title text-uppercase">
                            <a href="index.html">How to look outstanding in pastel</a>
                        </h5>
                        <p>Dignissim lacus,turpis ut suspendisse vel tellus.Turpis purus,gravida orci,fringilla...</p>
                    </div>
                </article>
            </div>
            <div class="col-md-4">
                <article class="post-item">
                    <div class="post-image">
                        <a href="index.html">
                            <img src="image/post-image2.jpg" alt="image" class="post-grid-image img-fluid">
                        </a>
                    </div>
                    <div class="post-content d-flex flex-wrap gap-2 my-3">
                        <div class="post-meta text-uppercase fs-6 text-secondary">
                            <span class="post-category">Fashion /</span>
                            <span class="meta-day"> jul 11, 2022</span>
                        </div>
                        <h5 class="post-title text-uppercase">
                            <a href="index.html">Top 10 fashion trend for summer</a>
                        </h5>
                        <p>Turpis purus, gravida orci, fringilla dignissim lacus, turpis ut suspendisse vel tellus...</p>
                    </div>
                </article>
            </div>
            <div class="col-md-4">
                <article class="post-item">
                    <div class="post-image">
                        <a href="index.html">
                            <img src="image/post-image3.jpg" alt="image" class="post-grid-image img-fluid">
                        </a>
                    </div>
                    <div class="post-content d-flex flex-wrap gap-2 my-3">
                        <div class="post-meta text-uppercase fs-6 text-secondary">
                            <span class="post-category">Fashion /</span>
                            <span class="meta-day"> jul 11, 2022</span>
                        </div>
                        <h5 class="post-title text-uppercase">
                            <a href="index.html">Crazy fashion with unique moment</a>
                        </h5>
                        <p>Turpis purus, gravida orci, fringilla dignissim lacus, turpis ut suspendisse vel tellus...</p>
                    </div>
                </article>
            </div>
        </div>
    </div>
</section>

<section class="logo-bar py-5 my-5">
    <div class="container">
        <div class="row">
            <div class="logo-content d-flex flex-wrap justify-content-between">
                <img src="image/logo1.png" alt="logo" class="logo-image img-fluid">
                <img src="image/logo2.png" alt="logo" class="logo-image img-fluid">
                <img src="image/logo3.png" alt="logo" class="logo-image img-fluid">
                <img src="image/logo4.png" alt="logo" class="logo-image img-fluid">
                <img src="image/logo5.png" alt="logo" class="logo-image img-fluid">
            </div>
        </div>
    </div>
</section>

<section class="newsletter bg-light" style="background: url(image/pattern-bg.png) no-repeat;">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8 py-5 my-5">
                <div class="subscribe-header text-center pb-3">
                    <h3 class="section-title text-uppercase">Sign Up for our newsletter</h3>
                </div>
                <form id="form" class="d-flex flex-wrap gap-2">
                    <input type="text" name="email" placeholder="Your Email Addresss" class="form-control form-control-lg">
                    <button class="btn btn-dark btn-lg text-uppercase w-100">Sign Up</button>
                </form>
            </div>
        </div>
    </div>
</section>

<section class="instagram position-relative">
    <div class="d-flex justify-content-center w-100 position-absolute bottom-0 z-1">
        <a href="https://www.instagram.com/templatesjungle/" class="btn btn-dark px-5">Follow us on Instagram</a>
    </div>
    <div class="row g-0">
        <div class="col-6 col-sm-4 col-md-2">
            <div class="insta-item">
                <a href="https://www.instagram.com/templatesjungle/" target="_blank">
                    <img src="image/insta-item1.jpg" alt="instagram" class="insta-image img-fluid">
                </a>
            </div>
        </div>
        <div class="col-6 col-sm-4 col-md-2">
            <div class="insta-item">
                <a href="https://www.instagram.com/templatesjungle/" target="_blank">
                    <img src="image/insta-item2.jpg" alt="instagram" class="insta-image img-fluid">
                </a>
            </div>
        </div>
        <div class="col-6 col-sm-4 col-md-2">
            <div class="insta-item">
                <a href="https://www.instagram.com/templatesjungle/" target="_blank">
                    <img src="image/insta-item3.jpg" alt="instagram" class="insta-image img-fluid">
                </a>
            </div>
        </div>
        <div class="col-6 col-sm-4 col-md-2">
            <div class="insta-item">
                <a href="https://www.instagram.com/templatesjungle/" target="_blank">
                    <img src="image/insta-item4.jpg" alt="instagram" class="insta-image img-fluid">
                </a>
            </div>
        </div>
        <div class="col-6 col-sm-4 col-md-2">
            <div class="insta-item">
                <a href="https://www.instagram.com/templatesjungle/" target="_blank">
                    <img src="image/insta-item5.jpg" alt="instagram" class="insta-image img-fluid">
                </a>
            </div>
        </div>
        <div class="col-6 col-sm-4 col-md-2">
            <div class="insta-item">
                <a href="https://www.instagram.com/templatesjungle/" target="_blank">
                    <img src="images/insta-item6.jpg" alt="instagram" class="insta-image img-fluid">
                </a>
            </div>
        </div>
    </div>
</section>

<footer id="footer" class="mt-5">
    <div class="container">
        <div class="row d-flex flex-wrap justify-content-between py-5">
            <div class="col-md-3 col-sm-6">
                <div class="footer-menu footer-menu-001">
                    <div class="footer-intro mb-4">
                        <a href="index.html">
                            <img src="image/main-logo.png" alt="logo" style="width: 150px; height: auto;" />
                        </a>
                    </div>
                    <p>좋아하는 연예인이 오늘 입은 옷이 궁금하다면
                        스타일의 모든 순간을 지금 바로 확인해보세요.</p>
                    <div class="social-links">
                        <ul class="list-unstyled d-flex flex-wrap gap-3">
                            <li>
                                <a href="#" class="text-secondary">
                                    <svg width="24" height="24" viewBox="0 0 24 24">
                                        <use xlink:href="#facebook"></use>
                                    </svg>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="text-secondary">
                                    <svg width="24" height="24" viewBox="0 0 24 24">
                                        <use xlink:href="#twitter"></use>
                                    </svg>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="text-secondary">
                                    <svg width="24" height="24" viewBox="0 0 24 24">
                                        <use xlink:href="#youtube"></use>
                                    </svg>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="text-secondary">
                                    <svg width="24" height="24" viewBox="0 0 24 24">
                                        <use xlink:href="#pinterest"></use>
                                    </svg>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="text-secondary">
                                    <svg width="24" height="24" viewBox="0 0 24 24">
                                        <use xlink:href="#instagram"></use>
                                    </svg>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="footer-menu footer-menu-002">
                    <h5 class="widget-title text-uppercase mb-4">Quick Links</h5>
                    <ul class="menu-list list-unstyled text-uppercase border-animation-left fs-6">
                        <li class="menu-item">
                            <a href="index.html" class="item-anchor">Home</a>
                        </li>
                        <li class="menu-item">
                            <a href="index.html" class="item-anchor">About</a>
                        </li>
                        <li class="menu-item">
                            <a href="blog.html" class="item-anchor">Services</a>
                        </li>
                        <li class="menu-item">
                            <a href="styles.html" class="item-anchor">Single item</a>
                        </li>
                        <li class="menu-item">
                            <a href="#" class="item-anchor">Contact</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="footer-menu footer-menu-003">
                    <h5 class="widget-title text-uppercase mb-4">Help & Info</h5>
                    <ul class="menu-list list-unstyled text-uppercase border-animation-left fs-6">
                        <li class="menu-item">
                            <a href="#" class="item-anchor">Track Your Order</a>
                        </li>
                        <li class="menu-item">
                            <a href="#" class="item-anchor">Returns + Exchanges</a>
                        </li>
                        <li class="menu-item">
                            <a href="#" class="item-anchor">Shipping + Delivery</a>
                        </li>
                        <li class="menu-item">
                            <a href="#" class="item-anchor">Contact Us</a>
                        </li>
                        <li class="menu-item">
                            <a href="#" class="item-anchor">Find us easy</a>
                        </li>
                        <li class="menu-item">
                            <a href="index.html" class="item-anchor">Faqs</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="footer-menu footer-menu-004 border-animation-left">
                    <h5 class="widget-title text-uppercase mb-4">Contact Us</h5>
                    <p>Do you have any questions or suggestions? <a href="mailto:contact@yourcompany.com"
                                                                    class="item-anchor">contact@yourcompany.com</a></p>
                    <p>Do you need support? Give us a call. <a href="tel:+43 720 11 52 78" class="item-anchor">+43 720 11 52
                        78</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="border-top py-4">
        <div class="container">
            <div class="row">
                <div class="col-md-6 d-flex flex-wrap">
                    <div class="shipping">
                        <span>We ship with:</span>
                        <img src="image/arct-icon.png" alt="icon">
                        <img src="image/dhl-logo.png" alt="icon">
                    </div>
                    <div class="payment-option">
                        <span>Payment Option:</span>
                        <img src="image/visa-card.png" alt="card">
                        <img src="image/paypal-card.png" alt="card">
                        <img src="image/master-card.png" alt="card">
                    </div>
                </div>
                <div class="col-md-6 text-end">
                    <p>© Copyright 2025 꼴랑드. All rights reserved. Design by <a href="https://templatesjungle.com"
                                                                               target="_blank">TemplatesJungle</a>
                        Distribution By <a href="https://themewagon.com" target="blank">ThemeWagon</a></p>
                </div>
            </div>
        </div>
    </div>
</footer>
<script src="js/jquery.min.js"></script>
<script src="js/plugins.js"></script>
<script src="js/SmoothScroll.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
<script src="js/script.min.js"></script>

<!-- 검색창 클릭시 순위 나오는 코드 -->
<!-- BODY 맨 끝에 넣기 -->
<script>
    document.addEventListener("DOMContentLoaded", () => {
        const keywords = [
            " ⭐ aespa 윈터", " ⭐ 장원영", " ⭐ 엔믹스 지우", " ⭐ 카리나", " ⭐ 정승혁",
            " ⭐ 안유진", " ⭐ 김채원", " ⭐ 아이유", " ⭐ 아이브 레이", " ⭐ 제니"
        ];

        const input = document.getElementById("searchInput");
        const box = document.getElementById("rankingBox");
        const list = document.getElementById("rankingList");

        function shuffle(array) {
            const copy = [...array];
            for (let i = copy.length - 1; i > 0; i--) {
                const j = Math.floor(Math.random() * (i + 1));
                [copy[i], copy[j]] = [copy[j], copy[i]];
            }
            return copy;
        }

        function renderRanking() {
            list.innerHTML = "";
            const top5 = shuffle(keywords).slice(0, 5);
            top5.forEach((keyword) => {
                const li = document.createElement("li");
                li.textContent = keyword;
                li.style.padding = "5px 0";
                list.appendChild(li);
            });
            box.style.display = "block";
        }

        input.addEventListener("focus", renderRanking);

        document.addEventListener("click", (e) => {
            const wrapper = document.querySelector(".search-wrapper");
            if (!wrapper.contains(e.target)) {
                box.style.display = "none";
            }
        });
    });
</script>






</body>

</html>